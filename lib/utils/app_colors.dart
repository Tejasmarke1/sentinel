import 'package:flutter/material.dart';

/// Centralized color system for Multi-Hazard Disaster Management
/// Color principles:
/// - Red → Severe / Emergency
/// - Orange → High Risk
/// - Yellow → Moderate Risk
/// - Green → Safe / Normal
/// - Blue → Information / Map / Water-related UI
/// - Grey → Disabled / Inactive
class AppColors {
  AppColors._(); // Private constructor to prevent instantiation

  // ============================================================================
  // DISASTER SEVERITY COLORS (Light Mode)
  // ============================================================================
  
  /// Severe / Emergency - Used for critical alerts
  static const Color emergencyRed = Color(0xFFD32F2F);
  static const Color emergencyRedLight = Color(0xFFEF5350);
  static const Color emergencyRedDark = Color(0xFFC62828);
  
  /// High Risk - Used for high-priority warnings
  static const Color highRiskOrange = Color(0xFFEF6C00);
  static const Color highRiskOrangeLight = Color(0xFFFF9800);
  static const Color highRiskOrangeDark = Color(0xFFE65100);
  
  /// Moderate Risk - Used for moderate-priority alerts
  static const Color moderateYellow = Color(0xFFF9A825);
  static const Color moderateYellowLight = Color(0xFFFFEB3B);
  static const Color moderateYellowDark = Color(0xFFF57F17);
  
  /// Safe / Normal - Used for safe status and confirmations
  static const Color safeGreen = Color(0xFF388E3C);
  static const Color safeGreenLight = Color(0xFF4CAF50);
  static const Color safeGreenDark = Color(0xFF2E7D32);
  
  /// Information / Map / Water-related UI
  static const Color infoBlue = Color(0xFF01579B);
  static const Color infoBlueLight = Color(0xFF3B82F6);
  static const Color infoBlueDark = Color(0xFF0D47A1);
  
  // ============================================================================
  // DARK MODE DISASTER COLORS
  // ============================================================================
  
  static const Color emergencyRedDarkMode = Color(0xFFEF5350);
  static const Color highRiskOrangeDarkMode = Color(0xFFFF9800);
  static const Color moderateYellowDarkMode = Color(0xFFFFEB3B);
  static const Color safeGreenDarkMode = Color(0xFF66BB6A);
  static const Color infoBlueDarkMode = Color(0xFF42A5F5);
  
  // ============================================================================
  // SURFACE & BACKGROUND COLORS (Light Mode)
  // ============================================================================
  
  static const Color primaryBackground = Color(0xFFF5F5F5);
  static const Color surfaceColor = Color(0xFFFFFFFF);
  static const Color surfaceColorElevated = Color(0xFFFFFFFF);
  static const Color cardBackground = Color(0xFFFFFFFF);
  
  /// Light blue background for general context
  static const Color oceanBackground = Color(0xFFE1F5FE);
  
  // ============================================================================
  // DARK MODE SURFACE COLORS
  // ============================================================================
  
  static const Color primaryBackgroundDark = Color(0xFF121212);
  static const Color surfaceColorDark = Color(0xFF1E1E1E);
  static const Color surfaceColorElevatedDark = Color(0xFF2C2C2C);
  static const Color cardBackgroundDark = Color(0xFF1E1E1E);
  static const Color oceanBackgroundDark = Color(0xFF0A1929);
  
  // ============================================================================
  // TEXT COLORS
  // ============================================================================
  
  static const Color textPrimary = Color(0xFF212121);
  static const Color textSecondary = Color(0xFF757575);
  static const Color textTertiary = Color(0xFF9E9E9E);
  static const Color textOnPrimary = Color(0xFFFFFFFF);
  static const Color textOnDark = Color(0xFFFFFFFF);
  
  // Dark mode text
  static const Color textPrimaryDark = Color(0xFFE0E0E0);
  static const Color textSecondaryDark = Color(0xFFB0B0B0);
  static const Color textTertiaryDark = Color(0xFF808080);
  
  // ============================================================================
  // UI ELEMENT COLORS
  // ============================================================================
  
  /// Disabled / Inactive elements
  static const Color disabled = Color(0xFFBDBDBD);
  static const Color disabledDark = Color(0xFF424242);
  
  /// Dividers and borders
  static const Color divider = Color(0xFFE0E0E0);
  static const Color dividerDark = Color(0xFF424242);
  
  /// Shadow colors
  static const Color shadowLight = Color(0x1A000000);
  static const Color shadowMedium = Color(0x33000000);
  static const Color shadowDark = Color(0x4D000000);
  
  // ============================================================================
  // ACCENT COLORS
  // ============================================================================
  
  /// Secondary accent (Aqua Teal for general context)
  static const Color accentTeal = Color(0xFF26A69A);
  static const Color accentTealLight = Color(0xFF4DB6AC);
  static const Color accentTealDark = Color(0xFF00897B);
  
  /// Cyan accent for special features
  static const Color accentCyan = Color(0xFF06B6D4);
  static const Color accentCyanDark = Color(0xFF0891B2);
  
  // ============================================================================
  // SPECIAL PURPOSE COLORS
  // ============================================================================
  
  /// Transparent backgrounds
  static const Color transparent = Color(0x00000000);
  
  /// Overlay colors (for modals, alerts)
  static const Color overlayLight = Color(0x80000000);
  static const Color overlayMedium = Color(0xB3000000);
  static const Color overlayDark = Color(0xCC000000);
  
  // ============================================================================
  // GRADIENT DEFINITIONS
  // ============================================================================
  
  static const LinearGradient oceanGradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [infoBlue, accentCyan],
  );
  
  static const LinearGradient emergencyGradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [emergencyRedDark, emergencyRed],
  );
  
  static const LinearGradient safeGradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [safeGreen, safeGreenLight],
  );
  
  static const LinearGradient infoBlueLightGradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [infoBlueDark, infoBlueLight],
  );
  
  // ============================================================================
  // HELPER METHODS
  // ============================================================================
  
  /// Get severity color based on risk level (0-10 scale)
  static Color getSeverityColor(int severity, {bool isDark = false}) {
    if (severity >= 8) {
      return isDark ? emergencyRedDarkMode : emergencyRed;
    } else if (severity >= 5) {
      return isDark ? highRiskOrangeDarkMode : highRiskOrange;
    } else if (severity >= 3) {
      return isDark ? moderateYellowDarkMode : moderateYellow;
    } else {
      return isDark ? safeGreenDarkMode : safeGreen;
    }
  }
  
  /// Get color with opacity (WCAG compliant)
  static Color withOpacity(Color color, double opacity) {
    return color.withOpacity(opacity);
  }
  
  /// Get appropriate text color for background (ensures readability)
  static Color getTextColorForBackground(Color backgroundColor) {
    final luminance = backgroundColor.computeLuminance();
    return luminance > 0.5 ? textPrimary : textOnDark;
  }
}
