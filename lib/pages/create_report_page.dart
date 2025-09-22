// create_report_page.dart
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import 'package:geolocator/geolocator.dart';
import 'package:geocoding/geocoding.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:exif/exif.dart';
import 'dart:io';
import 'dart:math';
import 'dart:typed_data';
import 'map_pinning_page.dart';
import 'trust_score_calculator.dart'; // Import the trust score calculator

class CreateReportPage extends StatefulWidget {
  const CreateReportPage({super.key});

  @override
  State<CreateReportPage> createState() => _CreateReportPageState();
}

class _CreateReportPageState extends State<CreateReportPage> 
    with TickerProviderStateMixin {
  final TextEditingController _descriptionController = TextEditingController();
  final TextEditingController _locationController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final ImagePicker _imagePicker = ImagePicker();
  
  // Firebase instances
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  final FirebaseStorage _storage = FirebaseStorage.instance;
  final FirebaseAuth _auth = FirebaseAuth.instance;

  final List<XFile> _attachedMedia = [];
  bool _isSubmitting = false;
  bool _isGettingLocation = false;
  double? _latitude;
  double? _longitude;
  String? _address;

  late AnimationController _slideController;
  late Animation<Offset> _slideAnimation;

  @override
  void initState() {
    super.initState();
    _initializeAnimations();
  }

  void _initializeAnimations() {
    _slideController = AnimationController(
      duration: const Duration(milliseconds: 300),
      vsync: this,
    );
    _slideAnimation = Tween<Offset>(
      begin: const Offset(0, 1),
      end: Offset.zero,
    ).animate(CurvedAnimation(
      parent: _slideController,
      curve: Curves.easeOutCubic,
    ));
    _slideController.forward();
  }

  @override
  void dispose() {
    _descriptionController.dispose();
    _locationController.dispose();
    _slideController.dispose();
    super.dispose();
  }

  Future<void> _attachMedia() async {
    try {
      final List<XFile> media = await _imagePicker.pickMultipleMedia(
        maxHeight: 1920,
        maxWidth: 1920,
        imageQuality: 85,
      );
      
      if (media.isNotEmpty) {
        setState(() {
          _attachedMedia.addAll(media);
        });
        HapticFeedback.lightImpact();
        
        if (mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text('${media.length} file(s) attached successfully'),
              backgroundColor: Colors.green,
              behavior: SnackBarBehavior.floating,
              margin: const EdgeInsets.all(16),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
            ),
          );
        }
      }
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Failed to attach media: $e'),
            backgroundColor: Colors.red,
            behavior: SnackBarBehavior.floating,
            margin: const EdgeInsets.all(16),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          ),
        );
      }
    }
  }

  Future<void> _getCurrentLocation() async {
    print('=== STARTING CURRENT LOCATION PROCESS ===');
    
    if (!mounted) return;
    
    setState(() {
      _isGettingLocation = true;
    });

    try {
      // Check and request location permissions
      LocationPermission permission = await Geolocator.checkPermission();
      print('Initial permission status: $permission');
      
      if (permission == LocationPermission.denied) {
        print('Requesting location permission...');
        permission = await Geolocator.requestPermission();
        print('Permission after request: $permission');
        
        if (permission == LocationPermission.denied) {
          throw 'Location permission denied by user. Please grant location access to use this feature.';
        }
      }

      if (permission == LocationPermission.deniedForever) {
        throw 'Location permissions are permanently denied. Please enable location access in your device settings.';
      }

      // Check if location services are enabled
      bool serviceEnabled = await Geolocator.isLocationServiceEnabled();
      print('Location services enabled: $serviceEnabled');
      
      if (!serviceEnabled) {
        throw 'Location services are disabled. Please enable location services in your device settings.';
      }

      // Get current position with fallback strategy
      Position? position;
      
      try {
        // Try high accuracy first
        print('Attempting to get high accuracy position...');
        position = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.high,
          timeLimit: const Duration(seconds: 15),
        );
        print('High accuracy position obtained: ${position.latitude}, ${position.longitude}');
      } catch (e) {
        print('High accuracy failed, trying medium: $e');
        try {
          // Fallback to medium accuracy
          position = await Geolocator.getCurrentPosition(
            desiredAccuracy: LocationAccuracy.medium,
            timeLimit: const Duration(seconds: 10),
          );
          print('Medium accuracy position obtained: ${position.latitude}, ${position.longitude}');
        } catch (e2) {
          print('Medium accuracy failed, trying low: $e2');
          try {
            // Final fallback to low accuracy
            position = await Geolocator.getCurrentPosition(
              desiredAccuracy: LocationAccuracy.low,
              timeLimit: const Duration(seconds: 8),
            );
            print('Low accuracy position obtained: ${position.latitude}, ${position.longitude}');
          } catch (e3) {
            print('All accuracy attempts failed, trying last known position: $e3');
            // Try to get last known position as final fallback
            position = await Geolocator.getLastKnownPosition();
            if (position != null) {
              print('Last known position obtained: ${position.latitude}, ${position.longitude}');
            } else {
              throw 'Unable to determine location. Please try again or select location manually on the map.';
            }
          }
        }
      }

      final currentPosition = position;
      String address = 'Current Location';

      // Try to get address from coordinates
      try {
        print('Fetching address for coordinates: ${currentPosition.latitude}, ${currentPosition.longitude}');
        List<Placemark> placemarks = await placemarkFromCoordinates(
          currentPosition.latitude,
          currentPosition.longitude,
        ).timeout(const Duration(seconds: 10));
        
        print('Placemarks found: ${placemarks.length}');
        
        if (placemarks.isNotEmpty) {
          final place = placemarks[0];
          print('First placemark details:');
          print('- Street: ${place.street}');
          print('- SubLocality: ${place.subLocality}');
          print('- Locality: ${place.locality}');
          print('- AdministrativeArea: ${place.administrativeArea}');
          print('- Country: ${place.country}');
          
          // Build address from available components
          final addressParts = [
            if (place.street?.isNotEmpty == true) place.street,
            if (place.subLocality?.isNotEmpty == true) place.subLocality,
            if (place.locality?.isNotEmpty == true) place.locality,
            if (place.administrativeArea?.isNotEmpty == true) place.administrativeArea,
            if (place.country?.isNotEmpty == true) place.country,
          ].where((part) => part != null && part.isNotEmpty).toList();
          
          address = addressParts.isNotEmpty ? addressParts.join(', ') : 'Current Location';
        }
      } catch (e) {
        print('Failed to get address from coordinates: $e');
        // Continue with coordinates-based fallback
        address = 'Location: ${currentPosition.latitude.toStringAsFixed(6)}, ${currentPosition.longitude.toStringAsFixed(6)}';
      }

      // Update state and UI
      if (mounted) {
        setState(() {
          _latitude = currentPosition.latitude;
          _longitude = currentPosition.longitude;
          _address = address;
        });
        
        // Force update the text field after state change
        await Future.delayed(const Duration(milliseconds: 50));
        
        if (mounted) {
          _locationController.text = address;
          _locationController.selection = TextSelection.fromPosition(
            TextPosition(offset: _locationController.text.length),
          );
        }
        
        // Debug logging
        print('=== LOCATION UPDATE SUCCESS ===');
        print('Latitude: ${currentPosition.latitude}');
        print('Longitude: ${currentPosition.longitude}');
        print('Accuracy: ${currentPosition.accuracy} meters');
        print('Address: $address');
        print('Text controller value: ${_locationController.text}');
        print('Widget mounted: $mounted');
        print('===============================');

        HapticFeedback.lightImpact();
        
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Row(
              children: [
                Icon(Icons.check_circle, color: Colors.white, size: 20),
                SizedBox(width: 8),
                Text('Current location captured successfully!'),
              ],
            ),
            backgroundColor: Colors.green,
            behavior: SnackBarBehavior.floating,
            duration: Duration(seconds: 2),
          ),
        );
      }
    } catch (e) {
      print('Location error: $e');
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Row(
              children: [
                const Icon(Icons.error, color: Colors.white, size: 20),
                const SizedBox(width: 8),
                Expanded(child: Text('$e')),
              ],
            ),
            backgroundColor: Colors.red,
            behavior: SnackBarBehavior.floating,
            duration: const Duration(seconds: 4),
          ),
        );
      }
    } finally {
      if (mounted) {
        setState(() {
          _isGettingLocation = false;
        });
      }
    }
  }

  void _openMapPinning() async {
    final result = await Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => MapPinningPage(
          initialLatLng: _latitude != null && _longitude != null
              ? {'lat': _latitude!, 'lng': _longitude!}
              : null,
        ),
      ),
    );

    if (result != null && mounted) {
      setState(() {
        _latitude = result['lat'];
        _longitude = result['lng'];
        _address = result['address'];
      });
      
      // Update text field after state change
      await Future.delayed(const Duration(milliseconds: 50));
      
      if (mounted) {
        _locationController.text = result['address'] ?? 'Selected location';
        _locationController.selection = TextSelection.fromPosition(
          TextPosition(offset: _locationController.text.length),
        );
      }
      
      HapticFeedback.lightImpact();
    }
  }

  void _removeMedia(int index) {
    setState(() {
      _attachedMedia.removeAt(index);
    });
    HapticFeedback.lightImpact();
  }

  // EXIF metadata extraction method
  Future<Map<String, dynamic>?> _extractExifMetadata(XFile mediaFile) async {
    try {
      final file = File(mediaFile.path);
      final bytes = await file.readAsBytes();
      
      // Only extract EXIF for image files
      final isImage = mediaFile.path.toLowerCase().endsWith('.jpg') ||
          mediaFile.path.toLowerCase().endsWith('.jpeg') ||
          mediaFile.path.toLowerCase().endsWith('.tiff') ||
          mediaFile.path.toLowerCase().endsWith('.tif');
      
      if (!isImage) {
        return null; // No EXIF data for non-image files
      }

      final exifData = await readExifFromBytes(bytes);
      
      if (exifData.isEmpty) {
        print('No EXIF data found in image');
        return null;
      }

      Map<String, dynamic> metadata = {};

      // Extract GPS coordinates
      if (exifData.containsKey('GPS GPSLatitude') && exifData.containsKey('GPS GPSLongitude')) {
        try {
          final latRef = exifData['GPS GPSLatitudeRef']?.toString();
          final lngRef = exifData['GPS GPSLongitudeRef']?.toString();
          
          final latRatio = exifData['GPS GPSLatitude'];
          final lngRatio = exifData['GPS GPSLongitude'];
          
          if (latRatio != null && lngRatio != null) {
            final lat = _convertDMSToDD(latRatio, latRef);
            final lng = _convertDMSToDD(lngRatio, lngRef);
            
            if (lat != null && lng != null) {
              metadata['gpsLatitude'] = lat;
              metadata['gpsLongitude'] = lng;
            }
          }
        } catch (e) {
          print('Error parsing GPS coordinates: $e');
        }
      }

      // Extract DateTime Original
      if (exifData.containsKey('EXIF DateTimeOriginal')) {
        metadata['dateTimeOriginal'] = exifData['EXIF DateTimeOriginal'].toString();
      } else if (exifData.containsKey('Image DateTime')) {
        metadata['dateTimeOriginal'] = exifData['Image DateTime'].toString();
      }

      // Extract Make
      if (exifData.containsKey('Image Make')) {
        metadata['make'] = exifData['Image Make'].toString().trim();
      }

      // Extract Model
      if (exifData.containsKey('Image Model')) {
        metadata['model'] = exifData['Image Model'].toString().trim();
      }

      // Extract Orientation
      if (exifData.containsKey('Image Orientation')) {
        metadata['orientation'] = exifData['Image Orientation'].toString();
      }

      // Extract Resolution
      if (exifData.containsKey('EXIF ExifImageWidth') && exifData.containsKey('EXIF ExifImageLength')) {
        final width = exifData['EXIF ExifImageWidth'].toString();
        final height = exifData['EXIF ExifImageLength'].toString();
        metadata['resolution'] = '${width}x$height';
      } else if (exifData.containsKey('Image ImageWidth') && exifData.containsKey('Image ImageLength')) {
        final width = exifData['Image ImageWidth'].toString();
        final height = exifData['Image ImageLength'].toString();
        metadata['resolution'] = '${width}x$height';
      }

      print('Extracted EXIF metadata: $metadata');
      return metadata.isNotEmpty ? metadata : null;
      
    } catch (e) {
      print('Error extracting EXIF metadata: $e');
      return null;
    }
  }

  // Helper method to convert DMS to Decimal Degrees
  double? _convertDMSToDD(dynamic dmsRatio, String? ref) {
    try {
      if (dmsRatio == null) return null;
      
      List<double> dmsValues = [];
      
      if (dmsRatio is List) {
        for (var ratio in dmsRatio) {
          if (ratio.toString().contains('/')) {
            final parts = ratio.toString().split('/');
            if (parts.length == 2) {
              final numerator = double.tryParse(parts[0]);
              final denominator = double.tryParse(parts[1]);
              if (numerator != null && denominator != null && denominator != 0) {
                dmsValues.add(numerator / denominator);
              }
            }
          } else {
            final value = double.tryParse(ratio.toString());
            if (value != null) dmsValues.add(value);
          }
        }
      }
      
      if (dmsValues.length < 3) return null;
      
      double dd = dmsValues[0] + dmsValues[1] / 60 + dmsValues[2] / 3600;
      
      if (ref != null && (ref == 'S' || ref == 'W')) {
        dd = -dd;
      }
      
      return dd;
    } catch (e) {
      print('Error converting DMS to DD: $e');
      return null;
    }
  }

  Future<List<Map<String, dynamic>>> _uploadMediaFiles() async {
    List<Map<String, dynamic>> uploadedMedia = [];
    
    for (int i = 0; i < _attachedMedia.length; i++) {
      final media = _attachedMedia[i];
      final file = File(media.path);
      
      try {
        // Extract EXIF metadata
        final exifMetadata = await _extractExifMetadata(media);
        
        // Generate unique filename
        final timestamp = DateTime.now().millisecondsSinceEpoch;
        final random = Random().nextInt(10000);
        final extension = media.path.split('.').last.toLowerCase();
        final fileName = 'reports/${timestamp}_${random}_$i.$extension';
        
        // Upload to Firebase Storage
        final uploadTask = _storage.ref(fileName).putFile(file);
        
        // Monitor upload progress
        uploadTask.snapshotEvents.listen((snapshot) {
          final progress = (snapshot.bytesTransferred / snapshot.totalBytes) * 100;
          print('Upload progress for file $i: ${progress.toStringAsFixed(2)}%');
        });
        
        final snapshot = await uploadTask;
        final downloadUrl = await snapshot.ref.getDownloadURL();
        
        // Create media object with URL and metadata
        Map<String, dynamic> mediaObject = {
          'url': downloadUrl,
          'type': extension.toLowerCase().contains('mp4') || 
                  extension.toLowerCase().contains('mov') ||
                  extension.toLowerCase().contains('avi') ||
                  extension.toLowerCase().contains('mkv') ? 'video' : 'image',
          'filename': fileName,
          'uploadedAt': DateTime.now().toIso8601String(),
        };
        
        // Add EXIF metadata if available
        if (exifMetadata != null) {
          mediaObject['exifData'] = exifMetadata;
        }
        
        uploadedMedia.add(mediaObject);
        print('File $i uploaded successfully with metadata: $mediaObject');
        
      } catch (e) {
        print('Error uploading file $i: $e');
        throw 'Failed to upload media file ${i + 1}: $e';
      }
    }
    
    return uploadedMedia;
  }

  Future<void> _submitReport() async {
    if (!_formKey.currentState!.validate()) return;
    
    if (_latitude == null || _longitude == null) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Please add a location for the report'),
          backgroundColor: Colors.orange,
          behavior: SnackBarBehavior.floating,
        ),
      );
      return;
    }

    final currentUser = _auth.currentUser;
    if (currentUser == null) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Please log in to submit a report'),
          backgroundColor: Colors.red,
          behavior: SnackBarBehavior.floating,
        ),
      );
      return;
    }

    setState(() {
      _isSubmitting = true;
    });

    try {
      // Step 1: Get user document for trust calculation
      print('Fetching user document...');
      final userDoc = await _firestore.collection('users').doc(currentUser.uid).get();
      final userData = userDoc.data() ?? {};
      
      // Step 2: Upload media files with EXIF metadata
      List<Map<String, dynamic>> mediaData = [];
      if (_attachedMedia.isNotEmpty) {
        print('Uploading ${_attachedMedia.length} media files with EXIF data...');
        mediaData = await _uploadMediaFiles();
        print('All media files uploaded successfully with metadata');
      }

      // Step 3: Analyze report description (if TrustScoreCalculator.analyzeReport exists)
      Map<String, dynamic> reportAnalysis;
      Map<String, dynamic> reportMetadata;
      try {
        reportAnalysis = ReportAnalyzer.analyzeReport(_descriptionController.text.trim());
        reportMetadata = ReportAnalyzer.extractMetadata(_descriptionController.text.trim());
      } catch (e) {
        print('Report analyzer not available, using defaults: $e');
        reportAnalysis = {
          'type': 'general_hazard',
          'title': 'Ocean Hazard Report',
        };
        reportMetadata = {};
      }

      // Step 4: Prepare report data
      final submissionTime = DateTime.now();
      final reportData = {
        'userId': currentUser.uid,
        'description': _descriptionController.text.trim(),
        'location': {
          'lat': _latitude!,
          'lng': _longitude!,
          'address': _address ?? 'Unknown location',
        },
        'media': mediaData,
        'mediaCount': mediaData.length,
        'status': 'pending',
        'createdAt': FieldValue.serverTimestamp(),
        'updatedAt': FieldValue.serverTimestamp(),
        // Report analysis results
        'reportType': reportAnalysis['type'],
        'reportTitle': reportAnalysis['title'],
        'reportMetadata': reportMetadata,
        'submissionTimestamp': submissionTime.toIso8601String(),
      };

      // Step 5: Calculate trust score using enhanced algorithm (if available)
      double trustScore = 0.5; // Default trust score
      try {
        trustScore = TrustScoreCalculator.calculateTrustScore(
          userDoc: userData,
          reportData: reportData,
          mediaData: mediaData,
          submissionTime: submissionTime,
        );
      } catch (e) {
        print('Trust score calculator not available, using default: $e');
        // Fallback to simple reputation-based scoring with safe type handling
        final reputationRaw = userData['reputation_score'];
        final double reputationScore = reputationRaw is int 
            ? reputationRaw.toDouble() 
            : (reputationRaw as double? ?? 0.0);
        trustScore = (reputationScore / 100.0).clamp(0.0, 1.0); // Convert to 0-1 scale
      }

      // Add trust score to report data
      reportData['trustScore'] = trustScore;
      reportData['trustLevel'] = _getTrustLevel(trustScore);

      // Step 6: Auto-approve high trust reports or set appropriate status
      if (trustScore >= 0.8) {
        reportData['status'] = 'verified';
        reportData['autoApproved'] = true;
        reportData['approvalReason'] = 'High trust score (${trustScore.toStringAsFixed(3)})';
      } else if (trustScore >= 0.6) {
        reportData['status'] = 'under_review';
        reportData['priorityLevel'] = 'normal';
      } else if (trustScore >= 0.4) {
        reportData['status'] = 'pending';
        reportData['priorityLevel'] = 'low';
      } else {
        reportData['status'] = 'pending';
        reportData['priorityLevel'] = 'very_low';
        reportData['requiresManualReview'] = true;
      }

      // Step 7: Submit to Firestore
      final docRef = await _firestore.collection('reports').add(reportData);
      final reportId = docRef.id;
      
      await docRef.update({'reportId': reportId});
      
      print('Report submitted successfully with ID: $reportId');
      print('Trust Score: ${trustScore.toStringAsFixed(3)}');
      print('Report Type: ${reportAnalysis['type']}');
      print('Report Title: ${reportAnalysis['title']}');

      // Step 8: Update user's report statistics
      await _updateUserStats(currentUser.uid, trustScore >= 0.8, trustScore);

      HapticFeedback.mediumImpact();
      
      if (mounted) {
        Navigator.of(context).pop();
        _showSuccessMessage(trustScore, reportAnalysis['title']!);
      }
    } catch (e) {
      print('Error submitting report: $e');
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Row(
              children: [
                const Icon(Icons.error, color: Colors.white, size: 20),
                const SizedBox(width: 8),
                Expanded(child: Text('Failed to submit report: $e')),
              ],
            ),
            backgroundColor: Colors.red,
            behavior: SnackBarBehavior.floating,
            duration: const Duration(seconds: 4),
            action: SnackBarAction(
              label: 'Retry',
              textColor: Colors.white,
              onPressed: _submitReport,
            ),
          ),
        );
      }
    } finally {
      if (mounted) {
        setState(() {
          _isSubmitting = false;
        });
      }
    }
  }

  String _getTrustLevel(double trustScore) {
    if (trustScore >= 0.8) return 'high';
    if (trustScore >= 0.6) return 'medium';
    if (trustScore >= 0.4) return 'low';
    return 'very_low';
  }

  Future<void> _updateUserStats(String userId, bool wasAutoApproved, double trustScore) async {
    try {
      final updateData = <String, dynamic>{
        'totalReports': FieldValue.increment(1),
        'lastReportAt': FieldValue.serverTimestamp(),
      };

      if (wasAutoApproved) {
        updateData['verifiedReports'] = FieldValue.increment(1);
        updateData['lastTrustScore'] = trustScore;
      }

      await _firestore.collection('users').doc(userId).update(updateData);
    } catch (e) {
      print('Error updating user stats: $e');
    }
  }

  void _showSuccessMessage(double trustScore, String reportTitle) {
    final trustLevel = _getTrustLevel(trustScore);
    final isAutoApproved = trustScore >= 0.8;
    
    Color bgColor = Colors.green;
    String message = 'Report submitted successfully!';
    String subMessage = '';
    IconData icon = Icons.check_circle;
    
    if (isAutoApproved) {
      bgColor = const Color(0xFF10B981);
      message = 'Report auto-approved and published!';
      subMessage = 'High trust score (${(trustScore * 100).toInt()}%)';
      icon = Icons.verified;
    } else if (trustLevel == 'medium') {
      bgColor = const Color(0xFF3B82F6);
      message = 'Report submitted for review';
      subMessage = 'Normal processing expected';
      icon = Icons.pending;
    } else if (trustLevel == 'low') {
      bgColor = const Color(0xFFF59E0B);
      message = 'Report submitted for review';
      subMessage = 'Additional verification may be required';
      icon = Icons.schedule;
    } else {
      bgColor = const Color(0xFF6B7280);
      message = 'Report submitted for manual review';
      subMessage = 'Detailed verification required';
      icon = Icons.hourglass_empty;
    }

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(icon, color: Colors.white, size: 20),
                const SizedBox(width: 8),
                Expanded(child: Text(message, style: const TextStyle(fontWeight: FontWeight.w600))),
              ],
            ),
            if (subMessage.isNotEmpty) ...[
              const SizedBox(height: 4),
              Text(
                subMessage,
                style: const TextStyle(fontSize: 12, color: Colors.white70),
              ),
            ],
            const SizedBox(height: 4),
            Text(
              'Title: $reportTitle',
              style: const TextStyle(fontSize: 12, color: Colors.white70),
            ),
          ],
        ),
        backgroundColor: bgColor,
        behavior: SnackBarBehavior.floating,
        duration: Duration(seconds: isAutoApproved ? 5 : 4),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.8,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(25),
          topRight: Radius.circular(25),
        ),
      ),
      child: SlideTransition(
        position: _slideAnimation,
        child: Column(
          children: [
            // Handle bar
            Container(
              margin: const EdgeInsets.only(top: 12),
              width: 40,
              height: 4,
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(2),
              ),
            ),
            
            // Header
            Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                children: [
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(
                        colors: [Color(0xFF3B82F6), Color(0xFF06B6D4)],
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Icon(
                      Icons.report_rounded,
                      color: Colors.white,
                      size: 20,
                    ),
                  ),
                  const SizedBox(width: 12),
                  const Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Create Hazard Report',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF1F2937),
                          ),
                        ),
                        Text(
                          'Help keep our oceans safe',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  ),
                  IconButton(
                    onPressed: () => Navigator.of(context).pop(),
                    icon: const Icon(Icons.close),
                    style: IconButton.styleFrom(
                      backgroundColor: Colors.grey[100],
                    ),
                  ),
                ],
              ),
            ),

            // Form Content
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Form(
                  key: _formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Description Input
                      _buildSectionTitle('Description *'),
                      _buildDescriptionField(),
                      
                      const SizedBox(height: 24),
                      
                      // Location Section
                      _buildSectionTitle('Location *'),
                      _buildLocationSection(),
                      
                      const SizedBox(height: 24),
                      
                      // Media Attachment Section
                      _buildSectionTitle('Attach Media'),
                      _buildMediaSection(),
                      
                      const SizedBox(height: 32),
                      
                      // Submit Button
                      _buildSubmitButton(),
                      
                      const SizedBox(height: 20),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Text(
      title,
      style: const TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w600,
        color: Color(0xFF1F2937),
      ),
    );
  }

  Widget _buildDescriptionField() {
    return Container(
      margin: const EdgeInsets.only(top: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.grey[300]!),
        color: Colors.grey[50],
      ),
      child: TextFormField(
        controller: _descriptionController,
        maxLines: 4,
        maxLength: 500,
        decoration: const InputDecoration(
          hintText: 'Describe the ocean hazard you observed...',
          border: InputBorder.none,
          contentPadding: EdgeInsets.all(16),
        ),
        validator: (value) {
          if (value == null || value.trim().isEmpty) {
            return 'Please provide a description';
          }
          if (value.trim().length < 10) {
            return 'Description must be at least 10 characters';
          }
          return null;
        },
      ),
    );
  }

  Widget _buildLocationSection() {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.only(top: 8),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: Colors.grey[300]!),
            color: Colors.grey[50],
          ),
          child: TextFormField(
            controller: _locationController,
            decoration: const InputDecoration(
              hintText: 'Enter location or use buttons below',
              prefixIcon: Icon(Icons.location_on_outlined),
              border: InputBorder.none,
              contentPadding: EdgeInsets.all(16),
            ),
            validator: (value) {
              if ((value == null || value.trim().isEmpty) && 
                  (_latitude == null || _longitude == null)) {
                return 'Please add a location';
              }
              return null;
            },
            onChanged: (value) {
              // Allow manual editing but clear coordinates if text is manually changed
              if (value != _address) {
                setState(() {
                  _latitude = null;
                  _longitude = null;
                  _address = null;
                });
              }
            },
          ),
        ),
        
        const SizedBox(height: 12),
        
        Row(
          children: [
            Expanded(
              child: ElevatedButton.icon(
                onPressed: _isGettingLocation ? null : _getCurrentLocation,
                icon: _isGettingLocation 
                    ? const SizedBox(
                        width: 16,
                        height: 16,
                        child: CircularProgressIndicator(
                          strokeWidth: 2,
                          valueColor: AlwaysStoppedAnimation<Color>(Color(0xFF3B82F6)),
                        ),
                      )
                    : const Icon(Icons.my_location, size: 18),
                label: Text(_isGettingLocation ? 'Getting...' : 'Current Location'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: _isGettingLocation ? Colors.grey[100] : Colors.blue[50],
                  foregroundColor: _isGettingLocation ? Colors.grey[600] : const Color(0xFF3B82F6),
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                    side: BorderSide(color: _isGettingLocation ? Colors.grey[400]! : const Color(0xFF3B82F6)),
                  ),
                ),
              ),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: ElevatedButton.icon(
                onPressed: _openMapPinning,
                icon: const Icon(Icons.map_outlined, size: 18),
                label: const Text('Pin on Map'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF3B82F6),
                  foregroundColor: Colors.white,
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
            ),
          ],
        ),
        
        if (_latitude != null && _longitude != null) ...[
          const SizedBox(height: 12),
          Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: Colors.green[50],
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: Colors.green[200]!),
            ),
            child: Row(
              children: [
                Icon(Icons.check_circle, color: Colors.green[700], size: 20),
                const SizedBox(width: 8),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Location selected successfully',
                        style: TextStyle(
                          color: Colors.green,
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                        ),
                      ),
                      if (_address != null && _address!.isNotEmpty) ...[
                        const SizedBox(height: 4),
                        Text(
                          _address!,
                          style: TextStyle(
                            color: Colors.green[600],
                            fontSize: 12,
                          ),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                      const SizedBox(height: 4),
                      Text(
                        'Coordinates: ${_latitude!.toStringAsFixed(6)}, ${_longitude!.toStringAsFixed(6)}',
                        style: TextStyle(
                          color: Colors.green[600],
                          fontSize: 10,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ],
    );
  }

  Widget _buildMediaSection() {
    return Column(
      children: [
        const SizedBox(height: 8),
        SizedBox(
          width: double.infinity,
          child: ElevatedButton.icon(
            onPressed: _attachMedia,
            icon: const Icon(Icons.attach_file, size: 18),
            label: const Text('Attach Photos/Videos'),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.grey[50],
              foregroundColor: Colors.grey[700],
              elevation: 0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
                side: BorderSide(color: Colors.grey[300]!),
              ),
              padding: const EdgeInsets.symmetric(vertical: 12),
            ),
          ),
        ),
        
        if (_attachedMedia.isNotEmpty) ...[
          const SizedBox(height: 12),
          SizedBox(
            height: 80,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: _attachedMedia.length,
              itemBuilder: (context, index) {
                final media = _attachedMedia[index];
                final isVideo = media.path.toLowerCase().contains('.mp4') || 
                                media.path.toLowerCase().contains('.mov') ||
                                media.path.toLowerCase().contains('.avi') ||
                                media.path.toLowerCase().contains('.mkv');
                
                return Container(
                  width: 80,
                  margin: const EdgeInsets.only(right: 8),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: Colors.grey[300]!),
                  ),
                  child: Stack(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: isVideo 
                            ? Container(
                                color: Colors.grey[200],
                                child: const Center(
                                  child: Icon(Icons.play_circle_fill, size: 30, color: Colors.grey),
                                ),
                              )
                            : Image.file(
                                File(media.path),
                                fit: BoxFit.cover,
                                width: 80,
                                height: 80,
                              ),
                      ),
                      Positioned(
                        top: 4,
                        right: 4,
                        child: GestureDetector(
                          onTap: () => _removeMedia(index),
                          child: Container(
                            width: 20,
                            height: 20,
                            decoration: const BoxDecoration(
                              color: Colors.red,
                              shape: BoxShape.circle,
                            ),
                            child: const Icon(
                              Icons.close,
                              size: 14,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ],
    );
  }

  Widget _buildSubmitButton() {
    return SizedBox(
      width: double.infinity,
      height: 50,
      child: ElevatedButton(
        onPressed: _isSubmitting ? null : _submitReport,
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xFF3B82F6),
          foregroundColor: Colors.white,
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        child: _isSubmitting
            ? const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 20,
                    height: 20,
                    child: CircularProgressIndicator(
                      strokeWidth: 2,
                      valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                    ),
                  ),
                  SizedBox(width: 12),
                  Text('Submitting...'),
                ],
              )
            : const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Submit Report',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(width: 8),
                  Icon(Icons.send, size: 18),
                ],
              ),
      ),
    );
  }
}