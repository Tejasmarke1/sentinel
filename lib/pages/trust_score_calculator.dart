// trust_score_calculator.dart
import 'dart:math';
import 'package:cloud_firestore/cloud_firestore.dart';

class TrustScoreCalculator {
  // Enhanced weights for different trust factors
  static const Map<String, double> _weights = {
    'kyc_verified': 0.15, // Reduced weight - less discriminatory
    'device_verified': 0.10, // Reduced weight - less discriminatory
    'exif_consistency': 0.20, // Multiple EXIF validations
    'user_reputation':
        0.35, // Increased weight - historical data is most reliable
    'location_accuracy': 0.15, // GPS consistency between report and media
    'report_quality': 0.05, // Description quality metrics
  };

  static const double _bias = -1.5; // Less restrictive bias for new users

  /// Calculates trust score using sigmoid function: σ(w·features + b)
  static double calculateTrustScore({
    required Map<String, dynamic> userDoc,
    required Map<String, dynamic> reportData,
    required List<Map<String, dynamic>> mediaData,
    required DateTime submissionTime,
  }) {
    final features = _extractFeatures(
      userDoc: userDoc,
      reportData: reportData,
      mediaData: mediaData,
      submissionTime: submissionTime,
    );

    // Calculate weighted sum: w·features + b
    double weightedSum = _bias;
    features.forEach((key, value) {
      if (_weights.containsKey(key)) {
        weightedSum += _weights[key]! * value;
      }
    });

    // Apply sigmoid function: σ(x) = 1 / (1 + e^(-x))
    double trustScore = 1.0 / (1.0 + exp(-weightedSum));

    print('Trust Score Calculation:');
    print('Features: $features');
    print('Weighted Sum: $weightedSum');
    print('Trust Score: ${trustScore.toStringAsFixed(3)}');

    return trustScore;
  }

  /// Extracts graduated features for trust calculation (0.0 to 1.0)
  static Map<String, double> _extractFeatures({
    required Map<String, dynamic> userDoc,
    required Map<String, dynamic> reportData,
    required List<Map<String, dynamic>> mediaData,
    required DateTime submissionTime,
  }) {
    return {
      'kyc_verified': _checkKycVerification(userDoc),
      'device_verified': _checkDeviceVerification(userDoc),
      'exif_consistency': _checkExifConsistency(
        mediaData,
        submissionTime,
        reportData,
      ),
      'user_reputation': _normalizeReputation(userDoc),
      'location_accuracy': _checkLocationAccuracy(reportData, mediaData),
      'report_quality': _assessReportQuality(reportData['description']),
    };
  }

  /// Graduated KYC verification scoring
  static double _checkKycVerification(Map<String, dynamic> userDoc) {
    final mobileNumber = userDoc['mobileNo']?.toString();
    final isVerified = userDoc['mobile_verified'] == true;
    final hasIdVerification = userDoc['id_verified'] == true;

    if (mobileNumber != null && mobileNumber.isNotEmpty) {
      if (hasIdVerification && isVerified) {
        return 1.0; // Full verification
      } else if (isVerified) {
        return 0.7; // Mobile verified
      } else {
        return 0.3; // Mobile provided but not verified
      }
    }
    return 0.0; // No mobile number
  }

  /// Graduated device verification scoring
  static double _checkDeviceVerification(Map<String, dynamic> userDoc) {
    final deviceVerified = userDoc['device_verified'] == true;
    final deviceRegistrationDate =
        userDoc['device_registered_at'] as Timestamp?;

    if (deviceVerified) {
      return 1.0; // Fully verified device
    } else if (deviceRegistrationDate != null) {
      final daysSinceRegistration = DateTime.now()
          .difference(deviceRegistrationDate.toDate())
          .inDays;

      if (daysSinceRegistration > 30) {
        return 0.5; // Device registered for more than 30 days
      } else if (daysSinceRegistration > 7) {
        return 0.3; // Device registered for more than 7 days
      }
    }

    return 0.0; // New or unverified device
  }

  /// Enhanced EXIF consistency checking
  static double _checkExifConsistency(
    List<Map<String, dynamic>> mediaData,
    DateTime submissionTime,
    Map<String, dynamic> reportData,
  ) {
    if (mediaData.isEmpty) return 0.4; // Neutral score for no media

    double consistencyScore = 0.0;
    int validationCount = 0;

    // Check temporal consistency
    final temporalScore = _checkTemporalConsistency(mediaData, submissionTime);
    if (temporalScore >= 0) {
      consistencyScore += temporalScore;
      validationCount++;
    }

    // Check GPS consistency
    final gpsScore = _checkGpsConsistency(mediaData, reportData);
    if (gpsScore >= 0) {
      consistencyScore += gpsScore;
      validationCount++;
    }

    // Check device consistency across media
    final deviceScore = _checkDeviceConsistency(mediaData);
    if (deviceScore >= 0) {
      consistencyScore += deviceScore;
      validationCount++;
    }

    return validationCount > 0 ? consistencyScore / validationCount : 0.4;
  }

  /// Check if media timestamps are consistent with submission time
  static double _checkTemporalConsistency(
    List<Map<String, dynamic>> mediaData,
    DateTime submissionTime,
  ) {
    double consistentImages = 0;
    double totalImages = 0;

    for (final media in mediaData) {
      final exifData = media['exifData'] as Map<String, dynamic>?;
      if (exifData != null && media['type'] == 'image') {
        totalImages++;
        final dateTimeOriginal = exifData['dateTimeOriginal']?.toString();

        if (dateTimeOriginal != null) {
          final exifTime = _parseExifDateTime(dateTimeOriginal);
          if (exifTime != null) {
            final timeDifference = submissionTime.difference(exifTime).abs();

            // Graduated scoring based on time difference
            if (timeDifference.inHours <= 2) {
              consistentImages++; // Full credit
            } else if (timeDifference.inHours <= 24) {
              consistentImages += 0.7; // Partial credit
            } else if (timeDifference.inDays <= 7) {
              consistentImages += 0.3; // Minimal credit
            }
          }
        }
      }
    }

    if (totalImages == 0) return -1; // No images to validate
    return consistentImages / totalImages;
  }

  /// Check GPS consistency between media and reported location
  static double _checkGpsConsistency(
    List<Map<String, dynamic>> mediaData,
    Map<String, dynamic> reportData,
  ) {
    // Safe extraction of latitude and longitude with type handling
    final reportLatRaw = reportData['location']?['lat'];
    final reportLngRaw = reportData['location']?['lng'];

    final double? reportLat = reportLatRaw is int
        ? reportLatRaw.toDouble()
        : reportLatRaw as double?;
    final double? reportLng = reportLngRaw is int
        ? reportLngRaw.toDouble()
        : reportLngRaw as double?;

    if (reportLat == null || reportLng == null) return -1;

    double bestConsistency = 0.0;
    bool hasGpsData = false;

    for (final media in mediaData) {
      final exifData = media['exifData'] as Map<String, dynamic>?;
      if (exifData != null) {
        // Safe extraction of EXIF GPS coordinates
        final exifLatRaw = exifData['gpsLatitude'];
        final exifLngRaw = exifData['gpsLongitude'];

        final double? exifLat = exifLatRaw is int
            ? exifLatRaw.toDouble()
            : exifLatRaw as double?;
        final double? exifLng = exifLngRaw is int
            ? exifLngRaw.toDouble()
            : exifLngRaw as double?;

        if (exifLat != null && exifLng != null) {
          hasGpsData = true;
          final distance = _calculateDistance(
            reportLat,
            reportLng,
            exifLat,
            exifLng,
          );

          // Graduated GPS consistency scoring
          double gpsScore = 0.0;
          if (distance <= 0.1) {
            gpsScore = 1.0; // Within 100m
          } else if (distance <= 0.5) {
            gpsScore = 0.8; // Within 500m
          } else if (distance <= 1.0) {
            gpsScore = 0.6; // Within 1km
          } else if (distance <= 5.0) {
            gpsScore = 0.3; // Within 5km
          } else if (distance <= 50.0) {
            gpsScore = 0.1; // Within 50km (same city)
          }

          bestConsistency = max(bestConsistency, gpsScore);
        }
      }
    }

    return hasGpsData ? bestConsistency : -1;
  }

  /// Check device consistency across multiple media files
  static double _checkDeviceConsistency(List<Map<String, dynamic>> mediaData) {
    final deviceModels = <String>{};
    final cameraMakes = <String>{};

    for (final media in mediaData) {
      final exifData = media['exifData'] as Map<String, dynamic>?;
      if (exifData != null && media['type'] == 'image') {
        final make = exifData['make']?.toString();
        final model = exifData['model']?.toString();

        if (make != null) cameraMakes.add(make.toLowerCase());
        if (model != null) deviceModels.add(model.toLowerCase());
      }
    }

    if (deviceModels.isEmpty) return -1; // No device data

    // Higher consistency if all images from same device
    if (deviceModels.length == 1 && cameraMakes.length <= 1) {
      return 1.0;
    } else if (deviceModels.length <= 2) {
      return 0.6; // Minor inconsistency acceptable
    } else {
      return 0.2; // Multiple devices - suspicious
    }
  }

  /// Normalize user reputation score with experience weighting
  static double _normalizeReputation(Map<String, dynamic> userDoc) {
    // Handle both int and double types from Firestore
    final reputationRaw = userDoc['reputation_score'];
    final double reputation = (reputationRaw is int)
        ? reputationRaw.toDouble()
        : (reputationRaw as double? ?? 0.0);

    final totalReports = userDoc['totalReports'] as int? ?? 0;
    final verifiedReports = userDoc['verifiedReports'] as int? ?? 0;

    // Base reputation score (0-5 scale normalized to 0-1)
    double baseScore = (reputation / 5.0).clamp(0.0, 1.0);

    // Experience bonus for users with history
    double experienceMultiplier = 1.0;
    if (totalReports >= 10) {
      experienceMultiplier = 1.2; // 20% bonus for experienced users
    } else if (totalReports >= 5) {
      experienceMultiplier = 1.1; // 10% bonus
    }

    // Accuracy bonus for users with high verification rate
    if (totalReports > 0) {
      final verificationRate = verifiedReports / totalReports;
      if (verificationRate >= 0.8) {
        experienceMultiplier *= 1.1; // Additional 10% for high accuracy
      }
    }

    return (baseScore * experienceMultiplier).clamp(0.0, 1.0);
  }

  /// Check location accuracy and plausibility
  static double _checkLocationAccuracy(
    Map<String, dynamic> reportData,
    List<Map<String, dynamic>> mediaData,
  ) {
    // Safe extraction of report coordinates with type handling
    final reportLatRaw = reportData['location']?['lat'];
    final reportLngRaw = reportData['location']?['lng'];

    final double? reportLat = reportLatRaw is int
        ? reportLatRaw.toDouble()
        : reportLatRaw as double?;
    final double? reportLng = reportLngRaw is int
        ? reportLngRaw.toDouble()
        : reportLngRaw as double?;

    if (reportLat == null || reportLng == null) return 0.0;

    // Check if coordinates are in valid ocean/coastal areas
    if (reportLat.abs() > 90 || reportLng.abs() > 180) {
      return 0.0; // Invalid coordinates
    }

    // Check GPS consistency with media
    double mediaConsistency = 0.3; // Base score for having valid coordinates

    for (final media in mediaData) {
      final exifData = media['exifData'] as Map<String, dynamic>?;
      if (exifData != null) {
        // Safe extraction of EXIF GPS coordinates
        final exifLatRaw = exifData['gpsLatitude'];
        final exifLngRaw = exifData['gpsLongitude'];

        final double? exifLat = exifLatRaw is int
            ? exifLatRaw.toDouble()
            : exifLatRaw as double?;
        final double? exifLng = exifLngRaw is int
            ? exifLngRaw.toDouble()
            : exifLngRaw as double?;

        if (exifLat != null && exifLng != null) {
          final distance = _calculateDistance(
            reportLat,
            reportLng,
            exifLat,
            exifLng,
          );
          if (distance <= 1.0) {
            return 1.0; // Perfect match
          } else if (distance <= 5.0) {
            return 0.7; // Good match
          }
        }
      }
    }

    return mediaConsistency;
  }

  /// Assess report quality based on description characteristics
  static double _assessReportQuality(String description) {
    if (description.trim().length < 10) return 0.0;

    double qualityScore = 0.0;

    // Length quality (optimal range)
    final length = description.trim().length;
    if (length >= 50 && length <= 500) {
      qualityScore += 0.3;
    } else if (length >= 20 && length <= 1000) {
      qualityScore += 0.1;
    }

    // Specificity indicators
    final specificTerms = [
      'meter',
      'kilometer',
      'hour',
      'minute',
      'approximately',
      'around',
      'about',
    ];
    final hasSpecifics = specificTerms.any(
      (term) => description.toLowerCase().contains(term),
    );
    if (hasSpecifics) qualityScore += 0.2;

    // Technical terms suggest domain knowledge
    final technicalTerms = [
      'current',
      'tide',
      'swell',
      'visibility',
      'knots',
      'debris',
      'contamination',
    ];
    final hasTechnical = technicalTerms.any(
      (term) => description.toLowerCase().contains(term),
    );
    if (hasTechnical) qualityScore += 0.2;

    // Structured information
    final hasTimeReference = RegExp(r'\b\d{1,2}:\d{2}\b').hasMatch(description);
    final hasDateReference = RegExp(
      r'\b(today|yesterday|morning|afternoon|evening)\b',
    ).hasMatch(description.toLowerCase());
    if (hasTimeReference || hasDateReference) qualityScore += 0.2;

    // Avoid spam indicators
    final spamIndicators = [
      'urgent',
      'click',
      'link',
      'website',
      'buy',
      'sell',
    ];
    final hasSpam = spamIndicators.any(
      (term) => description.toLowerCase().contains(term),
    );
    if (hasSpam) qualityScore -= 0.3;

    return qualityScore.clamp(0.0, 1.0);
  }

  /// Parse EXIF datetime string to DateTime object
  static DateTime? _parseExifDateTime(String dateTimeString) {
    try {
      // EXIF format: "2025:09:18 12:30:45"
      final parts = dateTimeString.split(' ');
      if (parts.length == 2) {
        final dateParts = parts[0].split(':');
        final timeParts = parts[1].split(':');

        if (dateParts.length == 3 && timeParts.length == 3) {
          return DateTime(
            int.parse(dateParts[0]), // year
            int.parse(dateParts[1]), // month
            int.parse(dateParts[2]), // day
            int.parse(timeParts[0]), // hour
            int.parse(timeParts[1]), // minute
            int.parse(timeParts[2]), // second
          );
        }
      }
    } catch (e) {
      print('Error parsing EXIF datetime: $e');
    }
    return null;
  }

  /// Calculate distance between two GPS coordinates in kilometers
  static double _calculateDistance(
    double lat1,
    double lng1,
    double lat2,
    double lng2,
  ) {
    const double earthRadius = 6371.0; // Earth's radius in km

    final double dLat = (lat2 - lat1) * (pi / 180.0);
    final double dLng = (lng2 - lng1) * (pi / 180.0);

    final double a =
        sin(dLat / 2) * sin(dLat / 2) +
        cos(lat1 * (pi / 180.0)) *
            cos(lat2 * (pi / 180.0)) *
            sin(dLng / 2) *
            sin(dLng / 2);

    final double c = 2 * atan2(sqrt(a), sqrt(1 - a));
    return earthRadius * c;
  }
}

class ReportAnalyzer {
  /// Generate report type and title from description
  static Map<String, String> analyzeReport(String description) {
    final reportType = _determineReportType(description);
    final title = _generateReportTitle(description, reportType);

    return {'type': reportType, 'title': title};
  }

  /// Determine report type based on keywords in description
  static String _determineReportType(String description) {
    final text = description.toLowerCase();

    // Define priority-ordered hazard types (more specific first)
    final hazardPatterns = {
      'oil_spill': [
        'oil spill',
        'oil leak',
        'petroleum',
        'fuel spill',
        'crude oil',
        'oil slick',
        'hydrocarbon',
      ],
      'high_waves': [
        'high waves',
        'dangerous waves',
        'large waves',
        'big waves',
        'rough seas',
        'choppy water',
        'tsunami',
      ],
      'strong_currents': [
        'strong current',
        'rip current',
        'dangerous current',
        'undertow',
        'riptide',
        'rip tide',
      ],
      'marine_life_hazard': [
        'shark',
        'jellyfish',
        'stingray',
        'dangerous fish',
        'marine animal',
        'sea snake',
        'blue bottle',
      ],
      'weather_alert': [
        'storm',
        'hurricane',
        'cyclone',
        'tornado',
        'lightning',
        'waterspout',
        'severe weather',
      ],
      'water_quality': [
        'algae bloom',
        'red tide',
        'murky water',
        'discolored water',
        'foul smell',
        'contaminated water',
      ],
      'coral_damage': [
        'coral bleaching',
        'coral damage',
        'reef damage',
        'dead coral',
        'coral destruction',
      ],
      'infrastructure_damage': [
        'broken pier',
        'damaged dock',
        'jetty damage',
        'seawall breach',
        'barrier failure',
      ],
      'debris': [
        'floating debris',
        'wreckage',
        'abandoned boat',
        'logs',
        'construction material',
        'garbage patch',
      ],
      'pollution': [
        'pollution',
        'contamination',
        'waste',
        'garbage',
        'plastic',
        'chemicals',
        'toxic',
      ],
    };

    // Find the first matching pattern
    for (final entry in hazardPatterns.entries) {
      for (final keyword in entry.value) {
        if (text.contains(keyword)) {
          return entry.key;
        }
      }
    }

    return 'general_hazard'; // Default type
  }

  /// Generate descriptive title from report description and type
  static String _generateReportTitle(String description, String reportType) {
    final text = description.toLowerCase();

    // Extract severity indicators
    String severity = '';
    if (text.contains('critical') ||
        text.contains('emergency') ||
        text.contains('dangerous')) {
      severity = 'Critical ';
    } else if (text.contains('major') ||
        text.contains('large') ||
        text.contains('high') ||
        text.contains('strong')) {
      severity = 'Major ';
    } else if (text.contains('minor') || text.contains('small')) {
      severity = 'Minor ';
    }

    // Extract location context
    String locationContext = '';
    final locationKeywords = [
      'beach',
      'shore',
      'coast',
      'harbor',
      'marina',
      'pier',
      'dock',
      'bay',
      'inlet',
      'reef',
    ];
    for (final keyword in locationKeywords) {
      if (text.contains(keyword)) {
        locationContext =
            ' at ${keyword.substring(0, 1).toUpperCase()}${keyword.substring(1)}';
        break;
      }
    }

    // Map report types to readable names
    final typeNames = {
      'oil_spill': 'Oil Spill',
      'high_waves': 'High Waves',
      'strong_currents': 'Strong Currents',
      'marine_life_hazard': 'Marine Life Hazard',
      'weather_alert': 'Weather Alert',
      'water_quality': 'Water Quality Issue',
      'coral_damage': 'Coral Damage',
      'infrastructure_damage': 'Infrastructure Damage',
      'debris': 'Marine Debris',
      'pollution': 'Water Pollution',
      'general_hazard': 'Ocean Hazard',
    };

    final typeName = typeNames[reportType] ?? 'Ocean Hazard';
    String title = '$severity$typeName$locationContext';

    // Ensure reasonable length
    if (title.length > 50) {
      title = '${title.substring(0, 47)}...';
    }

    return title.trim();
  }

  /// Extract additional metadata from description
  static Map<String, dynamic> extractMetadata(String description) {
    final text = description.toLowerCase();

    return {
      'estimated_severity': _extractSeverity(text),
      'affected_area_size': _extractAreaSize(text),
      'time_indicators': _extractTimeIndicators(text),
      'casualty_mentions': _checkCasualtyMentions(text),
      'authority_contact': _checkAuthorityContact(text),
    };
  }

  static String _extractSeverity(String text) {
    if (text.contains('critical') ||
        text.contains('emergency') ||
        text.contains('life-threatening')) {
      return 'critical';
    } else if (text.contains('dangerous') ||
        text.contains('hazardous') ||
        text.contains('unsafe')) {
      return 'high';
    } else if (text.contains('moderate') || text.contains('concerning')) {
      return 'medium';
    } else if (text.contains('minor') || text.contains('small')) {
      return 'low';
    }
    return 'unknown';
  }

  static String? _extractAreaSize(String text) {
    // Look for size indicators
    final sizePatterns = [
      RegExp(r'(\d+)\s*(meter|metre|m)'),
      RegExp(r'(\d+)\s*(kilometer|kilometre|km)'),
      RegExp(r'(\d+)\s*(foot|feet|ft)'),
    ];

    for (final pattern in sizePatterns) {
      final match = pattern.firstMatch(text);
      if (match != null) {
        return match.group(0);
      }
    }
    return null;
  }

  static List<String> _extractTimeIndicators(String text) {
    final indicators = <String>[];

    if (text.contains('ongoing') || text.contains('continuing')) {
      indicators.add('ongoing');
    }
    if (text.contains('just happened') || text.contains('just occurred')) {
      indicators.add('immediate');
    }
    if (text.contains('hours ago') || text.contains('yesterday')) {
      indicators.add('recent');
    }

    return indicators;
  }

  static bool _checkCasualtyMentions(String text) {
    final casualtyWords = [
      'injured',
      'hurt',
      'casualty',
      'victim',
      'rescue',
      'emergency',
    ];
    return casualtyWords.any((word) => text.contains(word));
  }

  static bool _checkAuthorityContact(String text) {
    final authorityWords = [
      'police',
      'coast guard',
      'authorities',
      'emergency services',
      'called',
      'reported',
    ];
    return authorityWords.any((word) => text.contains(word));
  }
}
