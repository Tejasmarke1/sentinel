import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import '../models/hazard_alert.dart';
import '../services/alerts_service.dart';

class AlertTestUtils {
  static final AlertsService _alertsService = AlertsService.instance;

  /// Add sample alerts for testing
  static Future<void> addSampleAlerts() async {
    final sampleAlerts = [
      HazardAlert(
        id: '',
        title: 'High Waves Warning',
        description: 'Strong waves up to 4-5 meters expected along the coast. Avoid water activities and stay away from the shoreline.',
        location: const GeoPoint(19.0760, 72.8777), // Mumbai
        severity: 'critical',
        timestamp: DateTime.now().subtract(const Duration(minutes: 15)),
        reportedBy: 'Coast Guard Mumbai',
      ),
      HazardAlert(
        id: '',
        title: 'Jellyfish Spotted',
        description: 'Multiple jellyfish have been spotted near the beach. Swimmers should exercise caution.',
        location: const GeoPoint(15.2993, 74.1240), // Goa
        severity: 'moderate',
        timestamp: DateTime.now().subtract(const Duration(hours: 2)),
        reportedBy: 'Goa Lifeguard Association',
      ),
      HazardAlert(
        id: '',
        title: 'Strong Currents',
        description: 'Unusually strong undercurrents detected. Swimming not recommended for inexperienced swimmers.',
        location: const GeoPoint(8.7642, 78.1348), // Kanyakumari
        severity: 'moderate',
        timestamp: DateTime.now().subtract(const Duration(hours: 4)),
        reportedBy: 'Local Fishermen Association',
      ),
      HazardAlert(
        id: '',
        title: 'Beach Cleanup Notice',
        description: 'Scheduled beach cleaning activity. Some areas may have restricted access during morning hours.',
        location: const GeoPoint(13.0827, 80.2707), // Chennai
        severity: 'low',
        timestamp: DateTime.now().subtract(const Duration(hours: 6)),
        reportedBy: 'Chennai Corporation',
      ),
      HazardAlert(
        id: '',
        title: 'Oil Spill Alert',
        description: 'Small oil spill detected offshore. Cleanup operations in progress. Avoid contact with contaminated water.',
        location: const GeoPoint(21.1702, 72.8311), // Surat
        severity: 'critical',
        timestamp: DateTime.now().subtract(const Duration(hours: 8)),
        reportedBy: 'Pollution Control Board',
      ),
      HazardAlert(
        id: '',
        title: 'Fishing Net Hazard',
        description: 'Abandoned fishing nets spotted underwater. Divers and swimmers should avoid the area.',
        location: const GeoPoint(17.6868, 83.2185), // Visakhapatnam
        severity: 'moderate',
        timestamp: DateTime.now().subtract(const Duration(hours: 12)),
        reportedBy: 'Diving Club Vizag',
      ),
      HazardAlert(
        id: '',
        title: 'Weather Advisory',
        description: 'Moderate to rough sea conditions expected. Small boats should avoid venturing far from shore.',
        location: const GeoPoint(11.9416, 79.8083), // Pondicherry
        severity: 'moderate',
        timestamp: DateTime.now().subtract(const Duration(days: 1)),
        reportedBy: 'Meteorological Department',
      ),
      HazardAlert(
        id: '',
        title: 'Sea Turtle Nesting',
        description: 'Sea turtle nesting season has begun. Please maintain distance and avoid disturbing nesting sites.',
        location: const GeoPoint(20.2961, 85.8245), // Puri
        severity: 'low',
        timestamp: DateTime.now().subtract(const Duration(days: 2)),
        reportedBy: 'Wildlife Conservation Trust',
      ),
    ];

    for (final alert in sampleAlerts) {
      await _alertsService.addAlert(alert);
    }
  }

  /// Add a critical test alert for immediate testing
  static Future<void> addTestCriticalAlert({
    required double latitude,
    required double longitude,
    String? customTitle,
    String? customDescription,
  }) async {
    final alert = HazardAlert(
      id: '',
      title: customTitle ?? 'TEST: Critical Ocean Hazard',
      description: customDescription ?? 
          'This is a test critical alert to verify the notification system is working properly. Immediate action may be required.',
      location: GeoPoint(latitude, longitude),
      severity: 'critical',
      timestamp: DateTime.now(),
      reportedBy: 'System Test',
    );

    await _alertsService.addAlert(alert);
  }

  /// Clear all test alerts
  static Future<void> clearTestAlerts() async {
    try {
      final query = await FirebaseFirestore.instance
          .collection('hazard_alerts')
          .where('reportedBy', isEqualTo: 'System Test')
          .get();

      final batch = FirebaseFirestore.instance.batch();
      for (final doc in query.docs) {
        batch.delete(doc.reference);
      }

      await batch.commit();
    } catch (e) {
      print('Error clearing test alerts: $e');
    }
  }

  /// Get FCM token for testing push notifications
  static Future<String?> getFCMToken() async {
    return FirebaseMessaging.instance.getToken();
  }

  /// Print current user location for testing
  static void printCurrentLocation() async {
    try {
      // This would require importing geolocator
      // final position = await Geolocator.getCurrentPosition();
      // print('Current location: ${position.latitude}, ${position.longitude}');
    } catch (e) {
      print('Error getting location: $e');
    }
  }
}

/// Example payload for testing FCM notifications
/// Use this format when sending test notifications through Firebase Console or your backend
class FCMTestPayloads {
  static const Map<String, dynamic> criticalAlert = {
    'notification': {
      'title': '⚠️ Critical Alert',
      'body': 'Dangerous conditions detected in your area',
    },
    'data': {
      'lat': '19.0760',
      'lng': '72.8777',
      'severity': 'critical',
      'alert_id': 'test_critical_001',
      'title': 'High Waves Warning',
      'description': 'Extremely dangerous wave conditions detected. Immediate evacuation recommended.',
    },
  };

  static const Map<String, dynamic> moderateAlert = {
    'notification': {
      'title': '⚠️ Moderate Alert',
      'body': 'Ocean hazard detected nearby',
    },
    'data': {
      'lat': '15.2993',
      'lng': '74.1240',
      'severity': 'moderate',
      'alert_id': 'test_moderate_001',
      'title': 'Jellyfish Spotted',
      'description': 'Multiple jellyfish sightings reported. Exercise caution while swimming.',
    },
  };

  static const Map<String, dynamic> lowAlert = {
    'notification': {
      'title': 'ℹ️ Information',
      'body': 'Ocean safety update available',
    },
    'data': {
      'lat': '13.0827',
      'lng': '80.2707',
      'severity': 'low',
      'alert_id': 'test_low_001',
      'title': 'Beach Maintenance',
      'description': 'Scheduled maintenance activities. Some areas may have restricted access.',
    },
  };
}