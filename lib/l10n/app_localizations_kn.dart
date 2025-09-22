// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Kannada (`kn`).
class AppLocalizationsKn extends AppLocalizations {
  AppLocalizationsKn([String locale = 'kn']) : super(locale);

  @override
  String get appTitle => 'ಸೆಂಟಿನೆಲ್';

  @override
  String get common_cancel => 'ರದ್ದುಮಾಡು';

  @override
  String get common_delete => 'ಅಳಿಸು';

  @override
  String get common_edit => 'ಸಂಪಾದಿಸು';

  @override
  String get common_retry => 'ಮತ್ತೆ ಪ್ರಯತ್ನಿಸು';

  @override
  String get common_default => 'ಡೀಫಾಲ್ಟ್';

  @override
  String get language_select_title => 'ಭಾಷೆಯನ್ನು ಆಯ್ಕೆಮಾಡಿ';

  @override
  String get language_select_subtitle => 'ಸೆಂಟಿನೆಲ್‌ಗಾಗಿ ನಿಮ್ಮ ಇಚ್ಛಿತ ಭಾಷೆಯನ್ನು ಆಯ್ಕೆಮಾಡಿ';

  @override
  String get language_section_primary => 'ಪ್ರಮುಖ ಭಾಷೆಗಳು';

  @override
  String get language_section_west => 'ಪಶ್ಚಿಮ ತೀರ ಭಾಷೆಗಳು';

  @override
  String get language_section_east => 'ಪೂರ್ವ ತೀರ ಭಾಷೆಗಳು';

  @override
  String get language_section_islands => 'ದ್ವೀಪ ಪ್ರದೇಶಗಳು';

  @override
  String language_selected_label(Object language) {
    return 'ಆಯ್ಕೆಮಾಡಲಾಗಿದೆ: $language';
  }

  @override
  String language_changed_snackbar(Object language) {
    return 'ಭಾಷೆಯನ್ನು $language ಗೆ ಬದಲಿಸಲಾಗಿದೆ';
  }

  @override
  String get language_confirm_button => 'ಭಾಷೆಯನ್ನು ದೃಢೀಕರಿಸಿ';

  @override
  String get login_welcome_to => 'ಸ್ವಾಗತ';

  @override
  String get login_title_caps => 'ಸೆಂಟಿನೆಲ್';

  @override
  String get login_tagline => 'ಸಮುದ್ರ ಅಪಾಯಗಳ ಎಚ್ಚರಿಕೆಗಳಿಗೆ ನಿಮ್ಮ ಸುರಕ್ಷತಾ ಗೆಳೆಯ';

  @override
  String get login_enter_phone => 'ನಿಮ್ಮ ಮೊಬೈಲ್ ಸಂಖ್ಯೆಯನ್ನು ನಮೂದಿಸಿ';

  @override
  String get login_phone_help => 'ನಾವು SMS ಮೂಲಕ ಪರಿಶೀಲನಾ ಕೋಡ್ ಅನ್ನು ಕಳುಹಿಸುತ್ತೇವೆ';

  @override
  String get login_send_otp => 'OTP ಕಳುಹಿಸಿ';

  @override
  String get login_terms_prefix => 'ಮುಂದುವರಿದಂತೆ, ನೀವು ನಮ್ಮ';

  @override
  String get login_terms => 'ಸೇವಾ ನಿಯಮಗಳಿಗೆ';

  @override
  String get login_and => ' ಮತ್ತು ';

  @override
  String get login_privacy => 'ಗೌಪ್ಯತೆಯ ನೀತಿಯನ್ನು ಒಪ್ಪುತ್ತೀರಿ';

  @override
  String get login_error_enter_phone => 'ದಯವಿಟ್ಟು ನಿಮ್ಮ ಮೊಬೈಲ್ ಸಂಖ್ಯೆಯನ್ನು ನಮೂದಿಸಿ';

  @override
  String get login_error_valid_phone => 'ದಯವಿಟ್ಟು ಮಾನ್ಯ ಮೊಬೈಲ್ ಸಂಖ್ಯೆಯನ್ನು ನಮೂದಿಸಿ';

  @override
  String get otp_title => 'ಪರಿಶೀಲನಾ ಕೋಡ್ ನಮೂದಿಸಿ';

  @override
  String otp_sent_to(Object phone) {
    return 'ನಾವು 6 ಅಂಕೆಗಳ ಕೋಡ್ ಅನ್ನು ಕಳುಹಿಸಿದ್ದೇವೆ\n$phone';
  }

  @override
  String get otp_hint => '000000';

  @override
  String get otp_verify_continue => 'ಪರಿಶೀಲಿಸಿ & ಮುಂದುವರೆಯಿರಿ';

  @override
  String get otp_error_incomplete => 'ದಯವಿಟ್ಟು ಸಂಪೂರ್ಣ 6 ಅಂಕೆಗಳ ಕೋಡ್ ನಮೂದಿಸಿ';

  @override
  String otp_resend_in(Object seconds) {
    return '$seconds ಸೆಕೆಂಡುಗಳಲ್ಲಿ ಮರುಕಳುಹಿಸಿ';
  }

  @override
  String get otp_resend_cta => 'ಕೋಡ್ ಬಂದಿದೆನಾ? ಮರುಕಳುಹಿಸಿ';

  @override
  String get otp_request_first => 'ದಯವಿಟ್ಟು ಮೊದಲು ಕೋಡ್ ಅನ್ನು ವಿನಂತಿಸಿ.';

  @override
  String get otp_invalid_code => 'Invalid code';

  @override
  String get verification_failed => 'Verification failed';

  @override
  String get phone_country_code => '+91';

  @override
  String get phone_hint_number => '98765 43210';

  @override
  String get reports_title => 'ನನ್ನ ವರದಿಗಳು';

  @override
  String get reports_subtitle => 'ನೀವು ಸಲ್ಲಿಸಿದ ಅಪಾಯ ವರದಿಗಳನ್ನು ಟ್ರ್ಯಾಕ್ ಮಾಡಿ';

  @override
  String reports_count_label(Object count) {
    return '$count ವರದಿಗಳು';
  }

  @override
  String get reports_filter_label => 'ಸ್ಥಿತಿಯ ಪ್ರಕಾರ ಫಿಲ್ಟರ್ ಮಾಡಿ';

  @override
  String get status_pending => 'ಮೂಕ';

  @override
  String get status_verified => 'ಪರಿಶೀಲಿಸಲಾಗಿದೆ';

  @override
  String get status_dismissed => 'ರದ್ದುಮಾಡಲಾಗಿದೆ';

  @override
  String get status_under_review => 'ಸಮೀಕ್ಷೆಯಲ್ಲಿದೆ';

  @override
  String get reports_loading => 'ನಿಮ್ಮ ವರದಿಗಳನ್ನು ಲೋಡ್ ಮಾಡುತ್ತಿದೆ...';

  @override
  String get reports_error_title => 'ವರದಿಗಳನ್ನು ಲೋಡ್ ಮಾಡುವಾಗ ದೋಷ';

  @override
  String get reports_empty_all => 'ಯಾವುದೇ ವರದಿ ಇಲ್ಲ';

  @override
  String reports_empty_filtered(Object status) {
    return 'ಯಾವುದೇ $status ವರದಿ ಇಲ್ಲ';
  }

  @override
  String get reports_empty_all_sub => 'ನಮ್ಮ ಸಮುದ್ರವನ್ನು ಸುರಕ್ಷಿತವಾಗಿರಿಸಲು ಸಮುದ್ರ ಅಪಾಯಗಳನ್ನು ವರದಿ ಮಾಡಲು ಪ್ರಾರಂಭಿಸಿ';

  @override
  String get reports_empty_filtered_sub => 'ವರದಿಗಳನ್ನು ನೋಡುವುದಕ್ಕೆ ಬೇರೆ ಫಿಲ್ಟರ್ ಆಯ್ಕೆಮಾಡಿ';

  @override
  String get reports_stat_pending => 'ಮೂಕ';

  @override
  String get reports_stat_verified => 'ಪರಿಶೀಲಿಸಲಾಗಿದೆ';

  @override
  String get reports_stat_dismissed => 'ರದ್ದುಮಾಡಲಾಗಿದೆ';

  @override
  String get time_just_now => 'ಈ ಕ್ಷಣ';

  @override
  String time_minutes_ago(Object minutes) {
    return '$minutes ನಿಮಿಷಗಳ ಹಿಂದೆ';
  }

  @override
  String time_hours_ago(Object hours) {
    return '$hours ಗಂಟೆಗಳ ಹಿಂದೆ';
  }

  @override
  String time_days_ago(Object days) {
    return '$days ದಿನಗಳ ಹಿಂದೆ';
  }

  @override
  String time_on_date(Object day, Object month, Object year) {
    return '$day/$month/$year';
  }

  @override
  String get report_details_title => 'ವರದಿ ವಿವರಗಳು';

  @override
  String get report_menu_edit => 'ವರದಿಯನ್ನು ಸಂಪಾದಿಸಿ';

  @override
  String get report_menu_delete => 'ವರದಿಯನ್ನು ಅಳಿಸು';

  @override
  String report_reported_on(Object date) {
    return '$date ರಂದು ವರದಿ ಮಾಡಲಾಗಿದೆ';
  }

  @override
  String get report_section_description => 'ವಿವರಣೆ';

  @override
  String get report_section_location => 'ಸ್ಥಳ';

  @override
  String report_section_media(Object count) {
    return 'ಮಾಧ್ಯಮ ($count)';
  }

  @override
  String get report_section_reputation => 'ವರದಿ ಮಾಡಿದವರ ಖ್ಯಾತಿ';

  @override
  String get report_media_view_all => 'ಎಲ್ಲಾವುದನ್ನೂ ನೋಡಿ';

  @override
  String get report_lat_label => 'ಅಕ್ಷಾಂಶ:';

  @override
  String get report_lng_label => 'ರೇಖಾಂಶ:';

  @override
  String get report_action_edit => 'ವರದಿಯನ್ನು ಸಂಪಾದಿಸಿ';

  @override
  String get report_action_delete => 'ವರದಿಯನ್ನು ಅಳಿಸು';

  @override
  String get report_delete_title => 'ವರದಿಯನ್ನು ಅಳಿಸು';

  @override
  String report_delete_confirm(Object title) {
    return 'ನೀವು \"$title\" ಅನ್ನು ಅಳಿಸಲು ಬಯಸುತ್ತೀರಾ? ಈ ಕ್ರಿಯೆಯನ್ನು ಹಿಂದಕ್ಕೆ ತರುಲಾಗದು.';
  }

  @override
  String get report_deleted_success => 'ವರದಿ ಯಶಸ್ವಿಯಾಗಿ ಅಳಿಸಲಾಗಿದೆ';

  @override
  String report_delete_failed(Object error) {
    return 'ವರದಿ ಅಳಿಸಲು ವಿಫಲವಾಗಿದೆ: $error';
  }

  @override
  String get report_edit_coming => 'ಸಂಪಾದನೆ ವೈಶಿಷ್ಟ್ಯವು ಶೀಘ್ರದಲ್ಲೇ ಬರುತ್ತದೆ!';

  @override
  String get report_media_coming => 'ಮಾಧ್ಯಮ ವೀಕ್ಷಕ ಶೀಘ್ರದಲ್ಲೇ ಬರುತ್ತದೆ!';

  @override
  String get nav_home => 'Home';

  @override
  String get nav_alerts => 'Alerts';

  @override
  String get nav_reports => 'Reports';

  @override
  String get nav_profile => 'Profile';

  @override
  String get onboard_complete_your => 'Complete Your';

  @override
  String get onboard_profile_setup => 'Profile Setup';

  @override
  String get onboard_header_subtitle => 'Help us personalize your experience and keep you safe';

  @override
  String get onboard_full_name_label => 'Full Name';

  @override
  String get onboard_full_name_hint => 'Enter your full name';

  @override
  String get onboard_full_name_error => 'Please enter your name';

  @override
  String get onboard_email_label => 'Email Address';

  @override
  String get onboard_email_hint => 'Enter your email address';

  @override
  String get onboard_email_error_empty => 'Please enter your email';

  @override
  String get onboard_email_error_invalid => 'Please enter a valid email address';

  @override
  String get onboard_trust_title => 'Trust Score System';

  @override
  String get onboard_trust_desc => 'Your reports will be evaluated based on report quality, location accuracy, and reporting history. Build your reputation by submitting detailed, accurate reports.';

  @override
  String get onboard_continue => 'Complete Setup';

  @override
  String get onboard_footer_secure => 'Your information is secure and encrypted';

  @override
  String get dashboard_live => 'Live';

  @override
  String get dashboard_title => 'Ocean Safety Dashboard';

  @override
  String get dashboard_stat_active_alerts => 'Active Alerts';

  @override
  String get dashboard_stat_verified => 'Verified';

  @override
  String get dashboard_stat_this_week => 'This Week';

  @override
  String get dashboard_recent_reports => 'Recent Hazard Reports';
}
