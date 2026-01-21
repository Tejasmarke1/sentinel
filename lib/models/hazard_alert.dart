import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class HazardAlert {
  final String id;
  final String title;
  final String description;
  final GeoPoint location;
  final String severity;
  final DateTime timestamp;
  final String? imageUrl;
  final String? reportedBy;

  HazardAlert({
    required this.id,
    required this.title,
    required this.description,
    required this.location,
    required this.severity,
    required this.timestamp,
    this.imageUrl,
    this.reportedBy,
  });

  /// Create HazardAlert from Firestore document
  factory HazardAlert.fromFirestore(DocumentSnapshot doc) {
    final data = doc.data() as Map<String, dynamic>;
    return HazardAlert(
      id: doc.id,
      title: data['title'] ?? '',
      description: data['description'] ?? '',
      location: data['location'] ?? const GeoPoint(0, 0),
      severity: data['severity'] ?? 'low',
      timestamp: (data['timestamp'] as Timestamp).toDate(),
      imageUrl: data['imageUrl'],
      reportedBy: data['reportedBy'],
    );
  }

  /// Convert HazardAlert to Firestore document
  Map<String, dynamic> toFirestore() {
    return {
      'title': title,
      'description': description,
      'location': location,
      'severity': severity,
      'timestamp': Timestamp.fromDate(timestamp),
      if (imageUrl != null) 'imageUrl': imageUrl,
      if (reportedBy != null) 'reportedBy': reportedBy,
    };
  }

  /// Get severity color
  Color get severityColor {
    switch (severity.toLowerCase()) {
      case 'critical':
        return const Color(0xFFE53E3E); // Red
      case 'moderate':
        return const Color(0xFFFF8C00); // Orange
      case 'low':
      default:
        return const Color(0xFF38A169); // Green
    }
  }

  /// Get severity icon
  IconData get severityIcon {
    switch (severity.toLowerCase()) {
      case 'critical':
        return Icons.warning;
      case 'moderate':
        return Icons.info_outline;
      case 'low':
      default:
        return Icons.info;
    }
  }

  /// Get severity text for display
  String get severityText {
    switch (severity.toLowerCase()) {
      case 'critical':
        return 'Critical';
      case 'moderate':
        return 'Moderate';
      case 'low':
      default:
        return 'Low';
    }
  }

  /// Get location display text
  String get locationText {
    return '${location.latitude.toStringAsFixed(4)}, ${location.longitude.toStringAsFixed(4)}';
  }

  /// Get formatted timestamp
  String getFormattedTimestamp({bool includeTime = true}) {
    final now = DateTime.now();
    final difference = now.difference(timestamp);

    if (difference.inMinutes < 1) {
      return 'Just now';
    } else if (difference.inMinutes < 60) {
      return '${difference.inMinutes}m ago';
    } else if (difference.inHours < 24) {
      return '${difference.inHours}h ago';
    } else if (difference.inDays == 1) {
      return 'Yesterday';
    } else if (difference.inDays < 7) {
      return '${difference.inDays}d ago';
    } else {
      if (includeTime) {
        return '${timestamp.day}/${timestamp.month}/${timestamp.year} ${timestamp.hour}:${timestamp.minute.toString().padLeft(2, '0')}';
      } else {
        return '${timestamp.day}/${timestamp.month}/${timestamp.year}';
      }
    }
  }

  @override
  String toString() {
    return 'HazardAlert(id: $id, title: $title, severity: $severity, timestamp: $timestamp)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is HazardAlert && other.id == id;
  }

  @override
  int get hashCode => id.hashCode;
}

/// Enum for alert severity levels
enum AlertSeverity {
  low('low', 'Low', Color(0xFF38A169)),
  moderate('moderate', 'Moderate', Color(0xFFFF8C00)),
  critical('critical', 'Critical', Color(0xFFE53E3E));

  const AlertSeverity(this.value, this.displayName, this.color);

  final String value;
  final String displayName;
  final Color color;

  static AlertSeverity fromString(String value) {
    switch (value.toLowerCase()) {
      case 'critical':
        return AlertSeverity.critical;
      case 'moderate':
        return AlertSeverity.moderate;
      case 'low':
      default:
        return AlertSeverity.low;
    }
  }
}