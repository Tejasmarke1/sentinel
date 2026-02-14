import 'dart:async';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:record/record.dart';
import 'package:path_provider/path_provider.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:audioplayers/audioplayers.dart';

enum CallState { idle, calling, recording, ending, ended }

class DisasterTollFreeScreen extends StatefulWidget {
  const DisasterTollFreeScreen({super.key});

  @override
  State<DisasterTollFreeScreen> createState() => _DisasterTollFreeScreenState();
}

class _DisasterTollFreeScreenState extends State<DisasterTollFreeScreen>
    with SingleTickerProviderStateMixin {
  final AudioRecorder _audioRecorder = AudioRecorder();
  final AudioPlayer _audioPlayer = AudioPlayer();
  
  CallState _callState = CallState.idle;
  String? _recordingPath;
  Timer? _timer;
  int _callDuration = 0; // in seconds
  
  late AnimationController _glowController;
  late Animation<double> _glowAnimation;

  @override
  void initState() {
    super.initState();
    _initializeAnimation();
  }

  void _initializeAnimation() {
    _glowController = AnimationController(
      duration: const Duration(milliseconds: 2000),
      vsync: this,
    )..repeat(reverse: true);
    _glowAnimation = Tween<double>(begin: 0.5, end: 1.0).animate(
      CurvedAnimation(parent: _glowController, curve: Curves.easeInOut),
    );
  }

  @override
  void dispose() {
    _timer?.cancel();
    _glowController.dispose();
    _audioRecorder.dispose();
    _audioPlayer.dispose();
    super.dispose();
  }

  String _formatDuration(int seconds) {
    final minutes = seconds ~/ 60;
    final remainingSeconds = seconds % 60;
    return '${minutes.toString().padLeft(2, '0')}:${remainingSeconds.toString().padLeft(2, '0')}';
  }

  String get _statusText {
    switch (_callState) {
      case CallState.idle:
        return 'Ready to Call';
      case CallState.calling:
        return 'Calling...';
      case CallState.recording:
        return 'Recording...';
      case CallState.ending:
        return 'Ending Call...';
      case CallState.ended:
        return 'Call Ended';
    }
  }

  Future<void> _startCall() async {
    try {
      // Request microphone permission
      final status = await Permission.microphone.request();
      if (!status.isGranted) {
        _showSnackBar('Microphone permission denied', isError: true);
        return;
      }

      setState(() {
        _callState = CallState.calling;
      });

      // Play welcome message
      await _audioPlayer.play(AssetSource('audio/welcome.mp3'));
      
      // Wait for audio to complete
      await Future.delayed(const Duration(seconds: 8));

      // Play beep sound
      await _audioPlayer.play(AssetSource('audio/beep.mp3'));
      await Future.delayed(const Duration(seconds: 1));

      // Start recording
      await _startRecording();
    } catch (e) {
      _showSnackBar('Failed to start call: $e', isError: true);
      setState(() {
        _callState = CallState.idle;
      });
    }
  }

  Future<void> _startRecording() async {
    try {
      if (await _audioRecorder.hasPermission()) {
        final directory = await getApplicationDocumentsDirectory();
        final timestamp = DateTime.now().millisecondsSinceEpoch;
        _recordingPath = '${directory.path}/audio_$timestamp.wav';

        await _audioRecorder.start(
          const RecordConfig(
            encoder: AudioEncoder.wav,
            bitRate: 128000,
            sampleRate: 44100,
            numChannels: 1,
          ),
          path: _recordingPath!,
        );

        setState(() {
          _callState = CallState.recording;
          _callDuration = 0;
        });

        // Start timer
        _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
          if (mounted) {
            setState(() {
              _callDuration++;
            });
          }
        });

        _showSnackBar('🎙️ Recording started');
      }
    } catch (e) {
      _showSnackBar('Failed to start recording: $e', isError: true);
      setState(() {
        _callState = CallState.idle;
      });
    }
  }

  Future<void> _endCall() async {
    try {
      setState(() {
        _callState = CallState.ending;
      });

      // Stop recording
      final path = await _audioRecorder.stop();
      _timer?.cancel();

      if (path != null && path.isNotEmpty) {
        _recordingPath = path;
      }

      // Play thank you message
      await _audioPlayer.play(AssetSource('audio/ending.mp3'));

      await Future.delayed(const Duration(seconds: 4));

      setState(() {
        _callState = CallState.ended;
      });

      _showSnackBar('📞 Call ended');

      // Upload audio file
      await _uploadAudio();

      // Return to idle after a delay
      await Future.delayed(const Duration(seconds: 2));
      if (mounted) {
        Navigator.pop(context);
      }
    } catch (e) {
      _showSnackBar('Failed to end call: $e', isError: true);
      setState(() {
        _callState = CallState.idle;
      });
    }
  }

  Future<void> _uploadAudio() async {
    if (_recordingPath == null || !File(_recordingPath!).existsSync()) {
      return;
    }

    try {
      final connectivityResult = await Connectivity().checkConnectivity();
      final hasConnection = connectivityResult != ConnectivityResult.none;
      
      if (!hasConnection) {
        print('Offline: Recording saved at $_recordingPath');
        print('Will sync later');
        return;
      }

      final timestamp = DateTime.now().millisecondsSinceEpoch;
      final storageRef = FirebaseStorage.instance
          .ref()
          .child('disaster_reports/audio_$timestamp.wav');

      final uploadTask = storageRef.putFile(File(_recordingPath!));
      final snapshot = await uploadTask;
      final downloadUrl = await snapshot.ref.getDownloadURL();

      await FirebaseFirestore.instance.collection('disaster_reports').add({
        'audio_url': downloadUrl,
        'timestamp': FieldValue.serverTimestamp(),
        'status': 'pending_review',
        'duration_seconds': _callDuration,
      });

      await File(_recordingPath!).delete();
      
      setState(() {
        _recordingPath = null;
        _callDuration = 0;
      });
    } catch (e) {
      print('Upload error: $e');
    }
  }

  void _showSnackBar(String message, {bool isError = false}) {
    if (!mounted) return;
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        backgroundColor: isError ? Colors.red.shade700 : Colors.green.shade700,
        behavior: SnackBarBehavior.floating,
        duration: const Duration(seconds: 2),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.black,
              Colors.grey.shade900,
              Colors.black,
            ],
          ),
        ),
        child: SafeArea(
          child: Stack(
            children: [
              // Main content
              Column(
                children: [
                  // Top section with back button
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      children: [
                        IconButton(
                          icon: const Icon(Icons.arrow_back, color: Colors.white),
                          onPressed: () => Navigator.pop(context),
                        ),
                      ],
                    ),
                  ),
                  
                  const Spacer(flex: 2),
                  
                  // Center section with avatar and info
                  Column(
                    children: [
                      // Animated avatar
                      AnimatedBuilder(
                        animation: _glowAnimation,
                        builder: (context, child) {
                          final isActive = _callState == CallState.recording;
                          return Container(
                            width: 140,
                            height: 140,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              boxShadow: isActive
                                  ? [
                                      BoxShadow(
                                        color: Colors.red.withOpacity(_glowAnimation.value * 0.5),
                                        blurRadius: 50 * _glowAnimation.value,
                                        spreadRadius: 20 * _glowAnimation.value,
                                      ),
                                    ]
                                  : [],
                            ),
                            child: Container(
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.grey.shade800,
                                border: Border.all(
                                  color: isActive 
                                    ? Colors.red.withOpacity(0.5)
                                    : Colors.grey.shade700,
                                  width: 3,
                                ),
                              ),
                              child: Icon(
                                Icons.emergency,
                                size: 70,
                                color: isActive ? Colors.red : Colors.grey.shade400,
                              ),
                            ),
                          );
                        },
                      ),
                      
                      const SizedBox(height: 40),
                      
                      // Title
                      const Text(
                        'Disaster Toll-Free',
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.w300,
                          color: Colors.white,
                          letterSpacing: 0.5,
                        ),
                      ),
                      
                      const SizedBox(height: 12),
                      
                      // Status
                      Text(
                        _statusText,
                        style: TextStyle(
                          fontSize: 18,
                          color: _callState == CallState.recording 
                            ? Colors.red.shade300 
                            : Colors.grey.shade400,
                          fontWeight: _callState == CallState.recording 
                            ? FontWeight.w500 
                            : FontWeight.w400,
                        ),
                      ),
                      
                      const SizedBox(height: 20),
                      
                      // Call duration
                      if (_callState == CallState.recording || _callState == CallState.ending)
                        Text(
                          _formatDuration(_callDuration),
                          style: const TextStyle(
                            fontSize: 48,
                            fontWeight: FontWeight.w300,
                            color: Colors.white,
                            letterSpacing: 2,
                            fontFeatures: [FontFeature.tabularFigures()],
                          ),
                        ),
                    ],
                  ),
                  
                  const Spacer(flex: 3),
                ],
              ),
              
              // Bottom button
              Positioned(
                bottom: 80,
                left: 0,
                right: 0,
                child: Center(
                  child: _buildActionButton(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildActionButton() {
    final isCallActive = _callState == CallState.recording || 
                         _callState == CallState.calling;
    final isDisabled = _callState == CallState.ending || 
                       _callState == CallState.ended ||
                       _callState == CallState.calling;

    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(
            color: (isCallActive ? Colors.red : Colors.green)
                .withOpacity(0.3),
            blurRadius: 30,
            spreadRadius: 5,
          ),
        ],
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: isDisabled
              ? null
              : () {
                  if (_callState == CallState.idle || _callState == CallState.ended) {
                    _startCall();
                  } else if (_callState == CallState.recording) {
                    _endCall();
                  }
                },
          customBorder: const CircleBorder(),
          child: Container(
            width: 80,
            height: 80,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: isCallActive ? Colors.red.shade700 : Colors.green.shade600,
            ),
            child: Icon(
              isCallActive ? Icons.call_end : Icons.call,
              color: Colors.white,
              size: 36,
            ),
          ),
        ),
      ),
    );
  }
}
