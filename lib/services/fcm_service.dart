import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'dart:math' as math;

class FCMService {
  static final FCMService _instance = FCMService._internal();
  factory FCMService() => _instance;
  FCMService._internal();

  static FCMService get instance => _instance;

  final FirebaseMessaging _firebaseMessaging = FirebaseMessaging.instance;
  final FlutterLocalNotificationsPlugin _localNotifications =
      FlutterLocalNotificationsPlugin();

  String? _fcmToken;
  Position? _currentPosition;

  // Colors for severity levels
  static const Map<String, Color> severityColors = {
    'critical': Color(0xFFE53E3E), // Red
    'moderate': Color(0xFFFF8C00), // Orange
    'low': Color(0xFF38A169),      // Green
  };

  // Notification icons for severity levels
  static const Map<String, String> severityIcons = {
    'critical': '@mipmap/ic_notification_critical',
    'moderate': '@mipmap/ic_notification_moderate',
    'low': '@mipmap/ic_notification_low',
  };

  /// Initialize FCM service
  Future<void> initialize() async {
    // Request permission for notifications
    await _requestPermission();
    
    // Initialize local notifications
    await _initializeLocalNotifications();
    
    // Get FCM token
    await _getFCMToken();
    
    // Get current location
    await _getCurrentLocation();
    
    // Setup message handlers
    _setupMessageHandlers();
    
    if (kDebugMode) {
      print('FCM Service initialized successfully');
      print('FCM Token: $_fcmToken');
    }
  }

  /// Request notification permissions
  Future<void> _requestPermission() async {
    NotificationSettings settings = await _firebaseMessaging.requestPermission(
      alert: true,
      badge: true,
      provisional: false,
      sound: true,
    );

    if (kDebugMode) {
      print('Notification permission granted: ${settings.authorizationStatus}');
    }
  }

  /// Initialize local notifications
  Future<void> _initializeLocalNotifications() async {
    const androidSettings = AndroidInitializationSettings('@mipmap/ic_launcher');
    const iosSettings = DarwinInitializationSettings();
    
    const initializationSettings = InitializationSettings(
      android: androidSettings,
      iOS: iosSettings,
    );

    await _localNotifications.initialize(
      initializationSettings,
      onDidReceiveNotificationResponse: _onNotificationTapped,
    );

    // Create notification channels for different severity levels
    await _createNotificationChannels();
  }

  /// Create notification channels for Android
  Future<void> _createNotificationChannels() async {
    final androidPlugin = _localNotifications.resolvePlatformSpecificImplementation<
        AndroidFlutterLocalNotificationsPlugin>();

    if (androidPlugin != null) {
      // Critical alerts channel
      await androidPlugin.createNotificationChannel(
        const AndroidNotificationChannel(
          'critical_alerts',
          'Critical Alerts',
          description: 'High priority emergency alerts',
          importance: Importance.max,
          enableVibration: true,
          playSound: true,
        ),
      );

      // Moderate alerts channel
      await androidPlugin.createNotificationChannel(
        const AndroidNotificationChannel(
          'moderate_alerts',
          'Moderate Alerts',
          description: 'Medium priority hazard alerts',
          importance: Importance.high,
          enableVibration: true,
          playSound: true,
        ),
      );

      // Low priority alerts channel
      await androidPlugin.createNotificationChannel(
        const AndroidNotificationChannel(
          'low_alerts',
          'Low Priority Alerts',
          description: 'Low priority informational alerts',
          importance: Importance.defaultImportance,
        ),
      );
    }
  }

  /// Get FCM token
  Future<String?> _getFCMToken() async {
    try {
      _fcmToken = await _firebaseMessaging.getToken();
      if (kDebugMode) {
        print('FCM Token: $_fcmToken');
      }
      return _fcmToken;
    } catch (e) {
      if (kDebugMode) {
        print('Error getting FCM token: $e');
      }
      return null;
    }
  }

  /// Get current user location
  Future<void> _getCurrentLocation() async {
    try {
      bool serviceEnabled = await Geolocator.isLocationServiceEnabled();
      if (!serviceEnabled) {
        if (kDebugMode) {
          print('Location services are disabled');
        }
        return;
      }

      LocationPermission permission = await Geolocator.checkPermission();
      if (permission == LocationPermission.denied) {
        permission = await Geolocator.requestPermission();
        if (permission == LocationPermission.denied) {
          if (kDebugMode) {
            print('Location permissions are denied');
          }
          return;
        }
      }

      if (permission == LocationPermission.deniedForever) {
        if (kDebugMode) {
          print('Location permissions are permanently denied');
        }
        return;
      }

      _currentPosition = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high,
      );
      
      if (kDebugMode) {
        print('Current location: ${_currentPosition?.latitude}, ${_currentPosition?.longitude}');
      }
    } catch (e) {
      if (kDebugMode) {
        print('Error getting location: $e');
      }
    }
  }

  /// Setup FCM message handlers
  void _setupMessageHandlers() {
    // Handle foreground messages
    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      if (kDebugMode) {
        print('Received foreground message: ${message.data}');
      }
      _handleMessage(message);
    });

    // Handle background messages
    FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) {
      if (kDebugMode) {
        print('App opened from background message: ${message.data}');
      }
      _handleMessage(message);
    });

    // Handle messages when app is terminated
    FirebaseMessaging.instance.getInitialMessage().then((message) {
      if (message != null) {
        if (kDebugMode) {
          print('App opened from terminated state: ${message.data}');
        }
        _handleMessage(message);
      }
    });
  }

  /// Handle incoming messages
  Future<void> _handleMessage(RemoteMessage message) async {
    try {
      final data = message.data;
      
      // Extract alert data
      final double? alertLat = double.tryParse(data['lat'] ?? '');
      final double? alertLng = double.tryParse(data['lng'] ?? '');
      final String severity = data['severity'] ?? 'low';
      
      // Check if user is within 50km radius
      if (alertLat != null && alertLng != null && _currentPosition != null) {
        final distance = _calculateDistance(
          _currentPosition!.latitude,
          _currentPosition!.longitude,
          alertLat,
          alertLng,
        );
        
        if (kDebugMode) {
          print('Alert distance: ${distance.toStringAsFixed(2)} km');
        }
        
        // Only show notification if within 50km
        if (distance <= 50.0) {
          await _showLocalNotification(message, severity);
        } else {
          if (kDebugMode) {
            print('Alert too far away: ${distance.toStringAsFixed(2)} km');
          }
        }
      } else {
        // Show notification anyway if location data is incomplete
        await _showLocalNotification(message, severity);
      }
    } catch (e) {
      if (kDebugMode) {
        print('Error handling message: $e');
      }
    }
  }

  /// Calculate distance between two points using Haversine formula
  double _calculateDistance(double lat1, double lon1, double lat2, double lon2) {
    const double earthRadius = 6371; // Earth's radius in kilometers
    
    double dLat = _degreesToRadians(lat2 - lat1);
    double dLon = _degreesToRadians(lon2 - lon1);
    
    double a = math.sin(dLat / 2) * math.sin(dLat / 2) +
        math.cos(_degreesToRadians(lat1)) *
            math.cos(_degreesToRadians(lat2)) *
            math.sin(dLon / 2) *
            math.sin(dLon / 2);
    
    double c = 2 * math.atan2(math.sqrt(a), math.sqrt(1 - a));
    
    return earthRadius * c;
  }

  /// Convert degrees to radians
  double _degreesToRadians(double degrees) {
    return degrees * (math.pi / 180);
  }

  /// Show local notification
  Future<void> _showLocalNotification(RemoteMessage message, String severity) async {
    final channelId = '${severity}_alerts';
    final importance = severity == 'critical' 
        ? Importance.max 
        : severity == 'moderate' 
            ? Importance.high 
            : Importance.defaultImportance;

    final androidDetails = AndroidNotificationDetails(
      channelId,
      '${severity.toUpperCase()} Alerts',
      channelDescription: 'Hazard alerts with $severity priority',
      importance: importance,
      priority: severity == 'critical' 
          ? Priority.max 
          : severity == 'moderate' 
              ? Priority.high 
              : Priority.defaultPriority,
      enableVibration: true,
      playSound: true,
      color: severityColors[severity],
      icon: '@mipmap/ic_launcher',
    );

    const iosDetails = DarwinNotificationDetails(
      presentAlert: true,
      presentBadge: true,
      presentSound: true,
    );

    final notificationDetails = NotificationDetails(
      android: androidDetails,
      iOS: iosDetails,
    );

    await _localNotifications.show(
      DateTime.now().millisecondsSinceEpoch.remainder(100000),
      message.notification?.title ?? 'Hazard Alert',
      message.notification?.body ?? 'New hazard alert in your area',
      notificationDetails,
      payload: message.data.toString(),
    );
  }

  /// Handle notification tap
  void _onNotificationTapped(NotificationResponse response) {
    if (kDebugMode) {
      print('Notification tapped: ${response.payload}');
    }
    // Navigate to alerts page or specific alert details
    // This can be handled by the main app using a callback
  }

  /// Get FCM token (public method)
  String? get fcmToken => _fcmToken;

  /// Refresh FCM token
  Future<String?> refreshToken() async {
    return await _getFCMToken();
  }

  /// Update user location
  Future<void> updateLocation() async {
    await _getCurrentLocation();
  }

  /// Subscribe to topic
  Future<void> subscribeToTopic(String topic) async {
    try {
      await _firebaseMessaging.subscribeToTopic(topic);
      if (kDebugMode) {
        print('Subscribed to topic: $topic');
      }
    } catch (e) {
      if (kDebugMode) {
        print('Error subscribing to topic: $e');
      }
    }
  }

  /// Unsubscribe from topic
  Future<void> unsubscribeFromTopic(String topic) async {
    try {
      await _firebaseMessaging.unsubscribeFromTopic(topic);
      if (kDebugMode) {
        print('Unsubscribed from topic: $topic');
      }
    } catch (e) {
      if (kDebugMode) {
        print('Error unsubscribing from topic: $e');
      }
    }
  }
}

/// Background message handler (must be top-level function)
@pragma('vm:entry-point')
Future<void> firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  if (kDebugMode) {
    print('Handling background message: ${message.messageId}');
  }
  // Handle background message processing here if needed
}