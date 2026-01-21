import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'dart:math' show sin, cos, sqrt, atan2, pi;
import '../models/hazard_alert.dart';

class AlertsService {
  static final AlertsService _instance = AlertsService._internal();
  factory AlertsService() => _instance;
  AlertsService._internal();

  static AlertsService get instance => _instance;

  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  static const String _alertsCollection = 'hazard_alerts';

  /// Get alerts stream for real-time updates
  Stream<List<HazardAlert>> getAlertsStream({
    int limit = 50,
    String? severityFilter,
  }) {
    Query query = _firestore
        .collection(_alertsCollection)
        .orderBy('timestamp', descending: true)
        .limit(limit);

    if (severityFilter != null) {
      query = query.where('severity', isEqualTo: severityFilter);
    }

    return query.snapshots().map((snapshot) {
      return snapshot.docs.map((doc) {
        try {
          return HazardAlert.fromFirestore(doc);
        } catch (e) {
          if (kDebugMode) {
            print('Error parsing alert document ${doc.id}: $e');
          }
          return null;
        }
      }).where((alert) => alert != null).cast<HazardAlert>().toList();
    });
  }

  /// Get alerts for a specific location within radius
  Stream<List<HazardAlert>> getAlertsNearLocation({
    required double latitude,
    required double longitude,
    required double radiusKm,
    int limit = 50,
  }) {
    // Note: For production, consider using GeoFlutterFire for more efficient geo queries
    // This implementation fetches all alerts and filters on client side
    return getAlertsStream(limit: limit * 2).map((alerts) {
      return alerts.where((alert) {
        final distance = _calculateDistance(
          latitude,
          longitude,
          alert.location.latitude,
          alert.location.longitude,
        );
        return distance <= radiusKm;
      }).take(limit).toList();
    });
  }

  /// Add new alert to Firestore
  Future<String?> addAlert(HazardAlert alert) async {
    try {
      final docRef = await _firestore
          .collection(_alertsCollection)
          .add(alert.toFirestore());
      
      if (kDebugMode) {
        print('Alert added with ID: ${docRef.id}');
      }
      
      return docRef.id;
    } catch (e) {
      if (kDebugMode) {
        print('Error adding alert: $e');
      }
      return null;
    }
  }

  /// Update existing alert
  Future<bool> updateAlert(String alertId, Map<String, dynamic> updates) async {
    try {
      await _firestore
          .collection(_alertsCollection)
          .doc(alertId)
          .update(updates);
      
      if (kDebugMode) {
        print('Alert updated: $alertId');
      }
      
      return true;
    } catch (e) {
      if (kDebugMode) {
        print('Error updating alert: $e');
      }
      return false;
    }
  }

  /// Delete alert
  Future<bool> deleteAlert(String alertId) async {
    try {
      await _firestore
          .collection(_alertsCollection)
          .doc(alertId)
          .delete();
      
      if (kDebugMode) {
        print('Alert deleted: $alertId');
      }
      
      return true;
    } catch (e) {
      if (kDebugMode) {
        print('Error deleting alert: $e');
      }
      return false;
    }
  }

  /// Get single alert by ID
  Future<HazardAlert?> getAlert(String alertId) async {
    try {
      final doc = await _firestore
          .collection(_alertsCollection)
          .doc(alertId)
          .get();

      if (doc.exists) {
        return HazardAlert.fromFirestore(doc);
      }
      return null;
    } catch (e) {
      if (kDebugMode) {
        print('Error getting alert: $e');
      }
      return null;
    }
  }

  /// Get alerts by severity
  Stream<List<HazardAlert>> getAlertsBySeverity(String severity) {
    return _firestore
        .collection(_alertsCollection)
        .where('severity', isEqualTo: severity)
        .orderBy('timestamp', descending: true)
        .limit(50)
        .snapshots()
        .map((snapshot) {
      return snapshot.docs.map((doc) {
        try {
          return HazardAlert.fromFirestore(doc);
        } catch (e) {
          if (kDebugMode) {
            print('Error parsing alert document ${doc.id}: $e');
          }
          return null;
        }
      }).where((alert) => alert != null).cast<HazardAlert>().toList();
    });
  }

  /// Get recent alerts (last 24 hours)
  Stream<List<HazardAlert>> getRecentAlerts() {
    final yesterday = DateTime.now().subtract(const Duration(days: 1));
    
    return _firestore
        .collection(_alertsCollection)
        .where('timestamp', isGreaterThan: Timestamp.fromDate(yesterday))
        .orderBy('timestamp', descending: true)
        .snapshots()
        .map((snapshot) {
      return snapshot.docs.map((doc) {
        try {
          return HazardAlert.fromFirestore(doc);
        } catch (e) {
          if (kDebugMode) {
            print('Error parsing alert document ${doc.id}: $e');
          }
          return null;
        }
      }).where((alert) => alert != null).cast<HazardAlert>().toList();
    });
  }

  /// Calculate distance between two points using Haversine formula
  double _calculateDistance(double lat1, double lon1, double lat2, double lon2) {
    const double earthRadius = 6371; // Earth's radius in kilometers
    
    double dLat = _degreesToRadians(lat2 - lat1);
    double dLon = _degreesToRadians(lon2 - lon1);
    
    double a = (sin(dLat / 2) * sin(dLat / 2)) +
        cos(_degreesToRadians(lat1)) *
            cos(_degreesToRadians(lat2)) *
            sin(dLon / 2) *
            sin(dLon / 2);
    
    double c = 2 * atan2(sqrt(a), sqrt(1 - a));
    
    return earthRadius * c;
  }

  /// Convert degrees to radians
  double _degreesToRadians(double degrees) {
    return degrees * (pi / 180);
  }

  /// Batch operations for multiple alerts
  Future<bool> addMultipleAlerts(List<HazardAlert> alerts) async {
    try {
      final batch = _firestore.batch();
      
      for (final alert in alerts) {
        final docRef = _firestore.collection(_alertsCollection).doc();
        batch.set(docRef, alert.toFirestore());
      }
      
      await batch.commit();
      
      if (kDebugMode) {
        print('Added ${alerts.length} alerts in batch');
      }
      
      return true;
    } catch (e) {
      if (kDebugMode) {
        print('Error adding multiple alerts: $e');
      }
      return false;
    }
  }

  /// Clear old alerts (older than specified days)
  Future<bool> clearOldAlerts({int daysToKeep = 30}) async {
    try {
      final cutoffDate = DateTime.now().subtract(Duration(days: daysToKeep));
      final query = await _firestore
          .collection(_alertsCollection)
          .where('timestamp', isLessThan: Timestamp.fromDate(cutoffDate))
          .get();

      final batch = _firestore.batch();
      for (final doc in query.docs) {
        batch.delete(doc.reference);
      }

      await batch.commit();
      
      if (kDebugMode) {
        print('Cleared ${query.docs.length} old alerts');
      }
      
      return true;
    } catch (e) {
      if (kDebugMode) {
        print('Error clearing old alerts: $e');
      }
      return false;
    }
  }
}

