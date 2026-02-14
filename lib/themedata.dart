import 'package:flutter/material.dart';
import 'utils/app_colors.dart';

/// Light theme for Multi-Hazard Disaster Management App
/// Uses emergency-friendly colors optimized for high-stress situations
final ThemeData lightTheme = ThemeData(
  useMaterial3: true,
  brightness: Brightness.light,
  
  // Color scheme based on disaster management principles
  colorScheme: ColorScheme.light(
    primary: AppColors.infoBlue,
    onPrimary: AppColors.textOnPrimary,
    primaryContainer: AppColors.infoBlueLight,
    onPrimaryContainer: AppColors.textPrimary,
    
    secondary: AppColors.accentTeal,
    onSecondary: AppColors.textOnDark,
    secondaryContainer: AppColors.accentTealLight,
    onSecondaryContainer: AppColors.textPrimary,
    
    tertiary: AppColors.accentCyan,
    onTertiary: AppColors.textOnDark,
    
    error: AppColors.emergencyRed,
    onError: AppColors.textOnDark,
    errorContainer: AppColors.emergencyRedLight,
    onErrorContainer: AppColors.textPrimary,
    
    surface: AppColors.surfaceColor,
    onSurface: AppColors.textPrimary,
    surfaceContainerHighest: AppColors.oceanBackground,
    onSurfaceVariant: AppColors.textSecondary,
    
    outline: AppColors.divider,
    shadow: AppColors.shadowMedium,
  ),
  
  scaffoldBackgroundColor: AppColors.oceanBackground,
  
  // AppBar theme - Clear information display
  appBarTheme: AppBarTheme(
    backgroundColor: AppColors.infoBlue,
    foregroundColor: AppColors.textOnDark,
    elevation: 0,
    centerTitle: false,
    titleTextStyle: TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.w600,
      color: AppColors.textOnDark,
    ),
    iconTheme: IconThemeData(color: AppColors.textOnDark),
  ),
  
  // Card theme - Clean surface for information
  cardTheme: CardThemeData(
    color: AppColors.cardBackground,
    elevation: 2,
    shadowColor: AppColors.shadowLight,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
  ),
  
  // Text theme - WCAG compliant readability
  textTheme: TextTheme(
    displayLarge: TextStyle(
      fontSize: 32,
      fontWeight: FontWeight.bold,
      color: AppColors.textPrimary,
      height: 1.2,
    ),
    displayMedium: TextStyle(
      fontSize: 28,
      fontWeight: FontWeight.bold,
      color: AppColors.textPrimary,
      height: 1.2,
    ),
    displaySmall: TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.bold,
      color: AppColors.textPrimary,
      height: 1.2,
    ),
    headlineLarge: TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.bold,
      color: AppColors.infoBlueDark,
      height: 1.3,
    ),
    headlineMedium: TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.w600,
      color: AppColors.textPrimary,
      height: 1.3,
    ),
    headlineSmall: TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w600,
      color: AppColors.textPrimary,
      height: 1.3,
    ),
    titleLarge: TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w600,
      color: AppColors.textPrimary,
      height: 1.4,
    ),
    titleMedium: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w500,
      color: AppColors.textPrimary,
      height: 1.4,
    ),
    titleSmall: TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w500,
      color: AppColors.textSecondary,
      height: 1.4,
    ),
    bodyLarge: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.normal,
      color: AppColors.textPrimary,
      height: 1.5,
    ),
    bodyMedium: TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.normal,
      color: AppColors.textPrimary,
      height: 1.5,
    ),
    bodySmall: TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.normal,
      color: AppColors.textSecondary,
      height: 1.5,
    ),
    labelLarge: TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w500,
      color: AppColors.textPrimary,
      height: 1.4,
    ),
    labelMedium: TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w500,
      color: AppColors.textSecondary,
      height: 1.4,
    ),
    labelSmall: TextStyle(
      fontSize: 11,
      fontWeight: FontWeight.w500,
      color: AppColors.textTertiary,
      height: 1.4,
    ),
  ),
  
  // Floating Action Button - Highly visible
  floatingActionButtonTheme: FloatingActionButtonThemeData(
    backgroundColor: AppColors.accentTeal,
    foregroundColor: AppColors.textOnDark,
    elevation: 4,
  ),
  
  // Elevated Button - Primary actions
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: AppColors.infoBlue,
      foregroundColor: AppColors.textOnDark,
      elevation: 2,
      padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
    ),
  ),
  
  // Text Button - Secondary actions
  textButtonTheme: TextButtonThemeData(
    style: TextButton.styleFrom(
      foregroundColor: AppColors.infoBlue,
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
    ),
  ),
  
  // Outlined Button - Tertiary actions
  outlinedButtonTheme: OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      foregroundColor: AppColors.infoBlue,
      side: BorderSide(color: AppColors.infoBlue, width: 1.5),
      padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
    ),
  ),
  
  // Input Decoration - Clear form fields
  inputDecorationTheme: InputDecorationTheme(
    filled: true,
    fillColor: AppColors.surfaceColor,
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(color: AppColors.divider),
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(color: AppColors.divider),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(color: AppColors.infoBlue, width: 2),
    ),
    errorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(color: AppColors.emergencyRed, width: 1.5),
    ),
    labelStyle: TextStyle(color: AppColors.textSecondary),
    hintStyle: TextStyle(color: AppColors.textTertiary),
  ),
  
  // Divider
  dividerTheme: DividerThemeData(
    color: AppColors.divider,
    thickness: 1,
    space: 1,
  ),
  
  // Icon theme
  iconTheme: IconThemeData(
    color: AppColors.textSecondary,
    size: 24,
  ),
);

/// Dark theme for Multi-Hazard Disaster Management App
/// Maintains visibility and contrast in low-light conditions
final ThemeData darkTheme = ThemeData(
  useMaterial3: true,
  brightness: Brightness.dark,
  
  colorScheme: ColorScheme.dark(
    primary: AppColors.infoBlueDarkMode,
    onPrimary: AppColors.textOnDark,
    primaryContainer: AppColors.infoBlueDark,
    onPrimaryContainer: AppColors.textPrimaryDark,
    
    secondary: AppColors.accentTeal,
    onSecondary: AppColors.textOnDark,
    secondaryContainer: AppColors.accentTealDark,
    onSecondaryContainer: AppColors.textPrimaryDark,
    
    tertiary: AppColors.accentCyan,
    onTertiary: AppColors.textOnDark,
    
    error: AppColors.emergencyRedDarkMode,
    onError: AppColors.textOnDark,
    errorContainer: AppColors.emergencyRedDark,
    onErrorContainer: AppColors.textPrimaryDark,
    
    surface: AppColors.surfaceColorDark,
    onSurface: AppColors.textPrimaryDark,
    surfaceContainerHighest: AppColors.oceanBackgroundDark,
    onSurfaceVariant: AppColors.textSecondaryDark,
    
    outline: AppColors.dividerDark,
    shadow: AppColors.shadowDark,
  ),
  
  scaffoldBackgroundColor: AppColors.oceanBackgroundDark,
  
  appBarTheme: AppBarTheme(
    backgroundColor: AppColors.surfaceColorDark,
    foregroundColor: AppColors.textPrimaryDark,
    elevation: 0,
    centerTitle: false,
    titleTextStyle: TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.w600,
      color: AppColors.textPrimaryDark,
    ),
    iconTheme: IconThemeData(color: AppColors.textPrimaryDark),
  ),
  
  cardTheme: CardThemeData(
    color: AppColors.cardBackgroundDark,
    elevation: 4,
    shadowColor: AppColors.shadowDark,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
  ),
  
  textTheme: TextTheme(
    displayLarge: TextStyle(
      fontSize: 32,
      fontWeight: FontWeight.bold,
      color: AppColors.textPrimaryDark,
      height: 1.2,
    ),
    headlineLarge: TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.bold,
      color: AppColors.infoBlueDarkMode,
      height: 1.3,
    ),
    bodyLarge: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.normal,
      color: AppColors.textPrimaryDark,
      height: 1.5,
    ),
    bodyMedium: TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.normal,
      color: AppColors.textPrimaryDark,
      height: 1.5,
    ),
    bodySmall: TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.normal,
      color: AppColors.textSecondaryDark,
      height: 1.5,
    ),
  ),
  
  floatingActionButtonTheme: FloatingActionButtonThemeData(
    backgroundColor: AppColors.accentTeal,
    foregroundColor: AppColors.textOnDark,
    elevation: 6,
  ),
  
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: AppColors.infoBlueDarkMode,
      foregroundColor: AppColors.textOnDark,
      elevation: 2,
      padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
    ),
  ),
  
  dividerTheme: DividerThemeData(
    color: AppColors.dividerDark,
    thickness: 1,
    space: 1,
  ),
  
  iconTheme: IconThemeData(
    color: AppColors.textSecondaryDark,
    size: 24,
  ),
);

// Legacy alias for backward compatibility
@Deprecated('Use lightTheme instead')
final ThemeData oceanTheme = lightTheme;
