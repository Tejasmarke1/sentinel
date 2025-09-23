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
  String get common_cancel => 'ರದ್ದುಮಾಡಿ';

  @override
  String get common_delete => 'ಅಳಿಸಿ';

  @override
  String get common_edit => 'ಸಂಪಾದಿಸಿ';

  @override
  String get common_retry => 'ಮತ್ತೆ ಪ್ರಯತ್ನಿಸಿ';

  @override
  String get common_default => 'ಡೀಫಾಲ್ಟ್';

  @override
  String get language_select_title => 'ಭಾಷೆಯನ್ನು ಆಯ್ಕೆಮಾಡಿ';

  @override
  String get language_select_subtitle => 'ಸೆಂಟಿನೆಲ್‌ಗಾಗಿ ನಿಮ್ಮ ಆದ್ಯತೆಯ ಭಾಷೆಯನ್ನು ಆರಿಸಿ';

  @override
  String get language_section_primary => 'ಪ್ರಾಥಮಿಕ ಭಾಷೆಗಳು';

  @override
  String get language_section_west => 'ಪಶ್ಚಿಮ ಕರಾವಳಿ ಭಾಷೆಗಳು';

  @override
  String get language_section_east => 'ಪೂರ್ವ ಕರಾವಳಿ ಭಾಷೆಗಳು';

  @override
  String get language_section_islands => 'ದ್ವೀಪ ಪ್ರದೇಶಗಳು';

  @override
  String language_selected_label(Object language) {
    return 'ಆಯ್ಕೆಮಾಡಲಾಗಿದೆ: $language';
  }

  @override
  String language_changed_snackbar(Object language) {
    return 'ಭಾಷೆಯನ್ನು $language ಗೆ ಬದಲಾಯಿಸಲಾಗಿದೆ';
  }

  @override
  String get language_confirm_button => 'ಭಾಷೆಯನ್ನು ಖಚಿತಪಡಿಸಿ';

  @override
  String get login_welcome_to => 'ಗೆ ಸ್ವಾಗತ';

  @override
  String get login_title_caps => 'ಸೆಂಟಿನೆಲ್';

  @override
  String get login_tagline => 'ಸಾಗರ ಅಪಾಯದ ಎಚ್ಚರಿಕೆಗಳಿಗಾಗಿ ನಿಮ್ಮ ಸುರಕ್ಷತಾ ಒಡನಾಡಿ';

  @override
  String get login_enter_phone => 'ನಿಮ್ಮ ಮೊಬೈಲ್ ಸಂಖ್ಯೆಯನ್ನು ನಮೂದಿಸಿ';

  @override
  String get login_phone_help => 'ನಾವು ನಿಮಗೆ SMS ಮೂಲಕ ಪರಿಶೀಲನಾ ಕೋಡ್ ಕಳುಹಿಸುತ್ತೇವೆ';

  @override
  String get login_send_otp => 'OTP ಕಳುಹಿಸಿ';

  @override
  String get login_terms_prefix => 'ಮುಂದುವರಿಸುವ ಮೂಲಕ, ನೀವು ನಮ್ಮ';

  @override
  String get login_terms => 'ಸೇವಾ ನಿಯಮಗಳು';

  @override
  String get login_and => ' ಮತ್ತು ';

  @override
  String get login_privacy => 'ಗೌಪ್ಯತಾ ನೀತಿಗೆ ಸಮ್ಮತಿಸುತ್ತೀರಿ';

  @override
  String get login_error_enter_phone => 'ದಯವಿಟ್ಟು ನಿಮ್ಮ ಮೊಬೈಲ್ ಸಂಖ್ಯೆಯನ್ನು ನಮೂದಿಸಿ';

  @override
  String get login_error_valid_phone => 'ದಯವಿಟ್ಟು ಮಾನ್ಯವಾದ ಮೊಬೈಲ್ ಸಂಖ್ಯೆಯನ್ನು ನಮೂದಿಸಿ';

  @override
  String get otp_title => 'ಪರಿಶೀಲನಾ ಕೋಡ್ ನಮೂದಿಸಿ';

  @override
  String otp_sent_to(Object phone) {
    return 'ನಾವು $phone ಗೆ 6-ಅಂಕಿಯ ಕೋಡ್ ಕಳುಹಿಸಿದ್ದೇವೆ';
  }

  @override
  String get otp_hint => '೦೦೦೦೦೦';

  @override
  String get otp_verify_continue => 'ಪರಿಶೀಲಿಸಿ ಮತ್ತು ಮುಂದುವರಿಸಿ';

  @override
  String get otp_error_incomplete => 'ದಯವಿಟ್ಟು ಸಂಪೂರ್ಣ 6-ಅಂಕಿಯ ಕೋಡ್ ನಮೂದಿಸಿ';

  @override
  String otp_resend_in(Object seconds) {
    return '$seconds ಸೆಕೆಂಡುಗಳಲ್ಲಿ ಕೋಡ್ ಮರುಕಳುಹಿಸಿ';
  }

  @override
  String get otp_resend_cta => 'ಕೋಡ್ ಸಿಕ್ಕಿಲ್ಲವೇ? ಮರುಕಳುಹಿಸಿ';

  @override
  String get otp_request_first => 'ದಯವಿಟ್ಟು ಮೊದಲು ಕೋಡ್‌ಗಾಗಿ ವಿನಂತಿಸಿ.';

  @override
  String get otp_invalid_code => 'ಅಮಾನ್ಯ ಕೋಡ್';

  @override
  String get verification_failed => 'ಪರಿಶೀಲನೆ ವಿಫಲವಾಯಿತು';

  @override
  String get phone_country_code => '+೯೧';

  @override
  String get phone_hint_number => '೯೮೭೬೫ ೪೩೨೧೦';

  @override
  String get reports_title => 'ನನ್ನ ವರದಿಗಳು';

  @override
  String get reports_subtitle => 'ನೀವು ಸಲ್ಲಿಸಿದ ಅಪಾಯದ ವರದಿಗಳನ್ನು ಟ್ರ್ಯಾಕ್ ಮಾಡಿ';

  @override
  String reports_count_label(Object count) {
    return '$count ವರದಿಗಳು';
  }

  @override
  String get reports_filter_label => 'ಸ್ಥಿತಿಯ ಮೂಲಕ ಫಿಲ್ಟರ್ ಮಾಡಿ';

  @override
  String get status_pending => 'ಬಾಕಿಯಿದೆ';

  @override
  String get status_verified => 'ಪರಿಶೀಲಿಸಲಾಗಿದೆ';

  @override
  String get status_dismissed => 'ವಜಾಗೊಳಿಸಲಾಗಿದೆ';

  @override
  String get status_under_review => 'ಪರಿಶೀಲನೆಯಲ್ಲಿದೆ';

  @override
  String get reports_loading => 'ನಿಮ್ಮ ವರದಿಗಳನ್ನು ಲೋಡ್ ಮಾಡಲಾಗುತ್ತಿದೆ...';

  @override
  String get reports_error_title => 'ವರದಿಗಳನ್ನು ಲೋಡ್ ಮಾಡುವಲ್ಲಿ ದೋಷ';

  @override
  String get reports_empty_all => 'ಇನ್ನೂ ಯಾವುದೇ ವರದಿಗಳಿಲ್ಲ';

  @override
  String reports_empty_filtered(Object status) {
    return 'ಯಾವುದೇ $status ವರದಿಗಳಿಲ್ಲ';
  }

  @override
  String get reports_empty_all_sub => 'ನಮ್ಮ ಜಲಮೂಲಗಳನ್ನು ಸುರಕ್ಷಿತವಾಗಿರಿಸಲು ಸಾಗರ ಅಪಾಯಗಳ ಬಗ್ಗೆ ವರದಿ ಮಾಡಲು ಪ್ರಾರಂಭಿಸಿ';

  @override
  String get reports_empty_filtered_sub => 'ವರದಿಗಳನ್ನು ವೀಕ್ಷಿಸಲು ಬೇರೆ ಫಿಲ್ಟರ್ ಆಯ್ಕೆ ಮಾಡಲು ಪ್ರಯತ್ನಿಸಿ';

  @override
  String get reports_stat_pending => 'ಬಾಕಿಯಿದೆ';

  @override
  String get reports_stat_verified => 'ಪರಿಶೀಲಿಸಲಾಗಿದೆ';

  @override
  String get reports_stat_dismissed => 'ವಜಾಗೊಳಿಸಲಾಗಿದೆ';

  @override
  String get time_just_now => 'ಈಗ ತಾನೆ';

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
  String get report_menu_edit => 'ವರದಿಯನ್ನು ಸಂಪಾದಿಸಿ';

  @override
  String get report_menu_delete => 'ವರದಿಯನ್ನು ಅಳಿಸಿ';

  @override
  String get report_delete_title => 'ವರದಿಯನ್ನು ಅಳಿಸಿ';

  @override
  String report_delete_confirm(Object title) {
    return 'ನೀವು \"$title\" ಅನ್ನು ಅಳಿಸಲು ಖಚಿತವಾಗಿದ್ದೀರಾ? ಈ ಕ್ರಿಯೆಯನ್ನು ಹಿಂಪಡೆಯಲು ಸಾಧ್ಯವಿಲ್ಲ.';
  }

  @override
  String get report_deleted_success => 'ವರದಿಯನ್ನು ಯಶಸ್ವಿಯಾಗಿ ಅಳಿಸಲಾಗಿದೆ';

  @override
  String report_delete_failed(Object error) {
    return 'ವರದಿಯನ್ನು ಅಳಿಸಲು ವಿಫಲವಾಗಿದೆ: $error';
  }

  @override
  String get report_edit_coming => 'ಸಂಪಾದನೆ ವೈಶಿಷ್ಟ್ಯ ಶೀಘ್ರದಲ್ಲೇ ಬರಲಿದೆ!';

  @override
  String get report_media_coming => 'ಮಾಧ್ಯಮ ವೀಕ್ಷಕ ಶೀಘ್ರದಲ್ಲೇ ಬರಲಿದೆ!';

  @override
  String get report_section_description => 'ವಿವರಣೆ';

  @override
  String get report_section_location => 'ಸ್ಥಳ';

  @override
  String report_section_media(Object count) {
    return 'ಮಾಧ್ಯಮ ($count)';
  }

  @override
  String get report_section_reputation => 'ವರದಿಗಾರರ ಖ್ಯಾತಿ';

  @override
  String get report_media_view_all => 'ಎಲ್ಲವನ್ನೂ ವೀಕ್ಷಿಸಿ';

  @override
  String get report_lat_label => 'ಅಕ್ಷಾಂಶ:';

  @override
  String get report_lng_label => 'ರೇಖಾಂಶ:';

  @override
  String get report_action_edit => 'ವರದಿಯನ್ನು ಸಂಪಾದಿಸಿ';

  @override
  String get report_action_delete => 'ಅಳಿಸಿ';

  @override
  String get report_details_title => 'ವರದಿ ವಿವರಗಳು';

  @override
  String get report_id_label => 'ವರದಿ ಐಡಿ';

  @override
  String report_attachments_label(Object count) {
    return 'ಲಗತ್ತುಗಳು ($count)';
  }

  @override
  String get report_media_files => 'ಮಾಧ್ಯಮ ಫೈಲ್‌ಗಳು';

  @override
  String report_media_files_attached(Object count) {
    return 'ಈ ವರದಿಗೆ $count ಫೈಲ್(ಗಳನ್ನು) ಲಗತ್ತಿಸಲಾಗಿದೆ';
  }

  @override
  String get report_media_view => 'ವೀಕ್ಷಿಸಿ';

  @override
  String get nav_home => 'ಹೋಮ್';

  @override
  String get nav_alerts => 'ಎಚ್ಚರಿಕೆಗಳು';

  @override
  String get nav_reports => 'ವರದಿಗಳು';

  @override
  String get nav_profile => 'ಪ್ರೊಫೈಲ್';

  @override
  String get onboard_complete_your => 'ನಿಮ್ಮ';

  @override
  String get onboard_profile_setup => 'ಪ್ರೊಫೈಲ್ ಸೆಟಪ್ ಪೂರ್ಣಗೊಳಿಸಿ';

  @override
  String get onboard_header_subtitle => 'ನಿಮ್ಮ ಅನುಭವವನ್ನು ವೈಯಕ್ತೀಕರಿಸಲು ಮತ್ತು ನಿಮ್ಮನ್ನು ಸುರಕ್ಷಿತವಾಗಿರಿಸಲು ನಮಗೆ ಸಹಾಯ ಮಾಡಿ';

  @override
  String get onboard_full_name_label => 'ಪೂರ್ಣ ಹೆಸರು';

  @override
  String get onboard_full_name_hint => 'ನಿಮ್ಮ ಪೂರ್ಣ ಹೆಸರನ್ನು ನಮೂದಿಸಿ';

  @override
  String get onboard_full_name_error => 'ದಯವಿಟ್ಟು ನಿಮ್ಮ ಹೆಸರನ್ನು ನಮೂದಿಸಿ';

  @override
  String get onboard_email_label => 'ಇಮೇಲ್ ವಿಳಾಸ';

  @override
  String get onboard_email_hint => 'ನಿಮ್ಮ ಇಮೇಲ್ ವಿಳಾಸವನ್ನು ನಮೂದಿಸಿ';

  @override
  String get onboard_email_error_empty => 'ದಯವಿಟ್ಟು ನಿಮ್ಮ ಇಮೇಲ್ ಅನ್ನು ನಮೂದಿಸಿ';

  @override
  String get onboard_email_error_invalid => 'ದಯವಿಟ್ಟು ಮಾನ್ಯ ಇಮೇಲ್ ವಿಳಾಸವನ್ನು ನಮೂದಿಸಿ';

  @override
  String get onboard_trust_title => 'ವಿಶ್ವಾಸಾರ್ಹತೆಯ ಅಂಕ ವ್ಯವಸ್ಥೆ';

  @override
  String get onboard_trust_desc => 'ನಿಮ್ಮ ವರದಿಗಳನ್ನು ವರದಿಯ ಗುಣಮಟ್ಟ, ಸ್ಥಳದ ನಿಖರತೆ ಮತ್ತು ವರದಿ ಮಾಡುವ ಇತಿಹಾಸದ ಆಧಾರದ ಮೇಲೆ ಮೌಲ್ಯಮಾಪನ ಮಾಡಲಾಗುತ್ತದೆ. ವಿವರವಾದ, ನಿಖರವಾದ ವರದಿಗಳನ್ನು ಸಲ್ಲಿಸುವ ಮೂಲಕ ನಿಮ್ಮ ಖ್ಯಾತಿಯನ್ನು ನಿರ್ಮಿಸಿ.';

  @override
  String get onboard_continue => 'ಸೆಟಪ್ ಪೂರ್ಣಗೊಳಿಸಿ';

  @override
  String get onboard_footer_secure => 'ನಿಮ್ಮ ಮಾಹಿತಿಯು ಸುರಕ್ಷಿತ ಮತ್ತು ಎನ್‌ಕ್ರಿಪ್ಟ್ ಆಗಿದೆ';

  @override
  String get dashboard_live => 'ಲೈವ್';

  @override
  String get dashboard_title => 'ಸಾಗರ ಸುರಕ್ಷತಾ ಡ್ಯಾಶ್‌ಬೋರ್ಡ್';

  @override
  String get dashboard_stat_active_alerts => 'ಸಕ್ರಿಯ ಎಚ್ಚರಿಕೆಗಳು';

  @override
  String get dashboard_stat_verified => 'ಪರಿಶೀಲಿಸಲಾಗಿದೆ';

  @override
  String get dashboard_stat_this_week => 'ಈ ವಾರ';

  @override
  String get dashboard_recent_reports => 'ಇತ್ತೀಚಿನ ಅಪಾಯದ ವರದಿಗಳು';

  @override
  String get profile_title => 'ಪ್ರೊಫೈಲ್';

  @override
  String get profile_subtitle => 'ನಿಮ್ಮ ಖಾತೆ ಮತ್ತು ಸೆಟ್ಟಿಂಗ್‌ಗಳನ್ನು ನಿರ್ವಹಿಸಿ';

  @override
  String get profile_user_not_logged_in => 'ಬಳಕೆದಾರರು ಲಾಗಿನ್ ಆಗಿಲ್ಲ.';

  @override
  String get profile_could_not_load_data => 'ಬಳಕೆದಾರರ ಡೇಟಾವನ್ನು ಲೋಡ್ ಮಾಡಲು ಸಾಧ್ಯವಾಗಲಿಲ್ಲ.';

  @override
  String profile_something_wrong(Object error) {
    return 'ಏನೋ ತಪ್ಪಾಗಿದೆ: $error';
  }

  @override
  String get profile_verified => 'ಪರಿಶೀಲಿಸಲಾಗಿದೆ';

  @override
  String profile_member_since(Object date) {
    return '$date ರಿಂದ ಸದಸ್ಯ';
  }

  @override
  String get profile_email => 'ಇಮೇಲ್';

  @override
  String get profile_phone => 'ಫೋನ್';

  @override
  String get profile_edit_profile => 'ಪ್ರೊಫೈಲ್ ಸಂಪಾದಿಸಿ';

  @override
  String get profile_statistics_title => 'ಅಂಕಿಅಂಶಗಳು ಮತ್ತು ಸಾರಾಂಶ';

  @override
  String get profile_reports_submitted => 'ಸಲ್ಲಿಸಿದ ವರದಿಗಳು';

  @override
  String get profile_verified_reports => 'ಪರಿಶೀಲಿಸಿದ ವರದಿಗಳು';

  @override
  String get profile_pending_reports => 'ಬಾಕಿ ಇರುವ ವರದಿಗಳು';

  @override
  String get profile_rejected_reports => 'ತಿರಸ್ಕರಿಸಿದ ವರದಿಗಳು';

  @override
  String profile_could_not_load_stats(Object error) {
    return 'ಅಂಕಿಅಂಶಗಳನ್ನು ಲೋಡ್ ಮಾಡಲು ಸಾಧ್ಯವಾಗಲಿಲ್ಲ: $error';
  }

  @override
  String get profile_no_stats_available => 'ಯಾವುದೇ ಅಂಕಿಅಂಶಗಳು ಲಭ್ಯವಿಲ್ಲ.';

  @override
  String get profile_account_options => 'ಖಾತೆ ಆಯ್ಕೆಗಳು';

  @override
  String get profile_language_settings => 'ಭಾಷಾ ಸೆಟ್ಟಿಂಗ್‌ಗಳು';

  @override
  String get profile_language_settings_desc => 'ನಿಮ್ಮ ಆದ್ಯತೆಯ ಭಾಷೆಯನ್ನು ಆರಿಸಿ';

  @override
  String get profile_notification_settings => 'ಅಧಿಸೂಚನೆ ಸೆಟ್ಟಿಂಗ್‌ಗಳು';

  @override
  String get profile_notification_settings_desc => 'ಎಚ್ಚರಿಕೆಗಳು ಮತ್ತು ಪುಶ್ ಅಧಿಸೂಚನೆಗಳನ್ನು ನಿರ್ವಹಿಸಿ';

  @override
  String get profile_privacy_permissions => 'ಗೌಪ್ಯತೆ ಮತ್ತು ಅನುಮತಿಗಳು';

  @override
  String get profile_privacy_permissions_desc => 'ನಿಮ್ಮ ಡೇಟಾ ಮತ್ತು ಅಪ್ಲಿಕೇಶನ್ ಅನುಮತಿಗಳನ್ನು ನಿಯಂತ್ರಿಸಿ';

  @override
  String get profile_help_support => 'ಸಹಾಯ ಮತ್ತು ಬೆಂಬಲ';

  @override
  String get profile_help_support_desc => 'ಸಹಾಯ ಪಡೆಯಿರಿ ಮತ್ತು ಬೆಂಬಲವನ್ನು ಸಂಪರ್ಕಿಸಿ';

  @override
  String get profile_help_coming_soon => 'ಸಹಾಯ ಮತ್ತು ಬೆಂಬಲ ಶೀಘ್ರದಲ್ಲೇ ಬರಲಿದೆ!';

  @override
  String get profile_about_sentinel => 'ಸೆಂಟಿನೆಲ್ ಬಗ್ಗೆ';

  @override
  String get profile_about_sentinel_desc => 'ಅಪ್ಲಿಕೇಶನ್ ಆವೃತ್ತಿ ಮತ್ತು ಮಾಹಿತಿ';

  @override
  String get profile_app_name => 'ಸೆಂಟಿನೆಲ್';

  @override
  String get profile_app_version => '೧.೦.೦';

  @override
  String get profile_app_description => 'ಜನರಿಂದ ಸಾಗರ ಅಪಾಯದ ಎಚ್ಚರಿಕೆಗಳು\n\nಸಮುದಾಯ ವರದಿ ಮಾಡುವ ಮೂಲಕ ನಮ್ಮ ಸಾಗರಗಳನ್ನು ಸುರಕ್ಷಿತವಾಗಿರಿಸಲು ಸಹಾಯ ಮಾಡುವುದು.';

  @override
  String get profile_logout => 'ಲಾಗ್‌ಔಟ್';

  @override
  String get profile_logout_desc => 'ನಿಮ್ಮ ಖಾತೆಯಿಂದ ಸೈನ್ ಔಟ್ ಮಾಡಿ';

  @override
  String get profile_logout_confirm => 'ನೀವು ಸೆಂಟಿನೆಲ್‌ನಿಂದ ಲಾಗ್‌ಔಟ್ ಮಾಡಲು ಖಚಿತವಾಗಿದ್ದೀರಾ?';

  @override
  String get profile_cancel => 'ರದ್ದುಮಾಡಿ';

  @override
  String profile_logout_failed(Object error) {
    return 'ಲಾಗ್‌ಔಟ್ ವಿಫಲವಾಯಿತು: $error';
  }

  @override
  String get profile_edit_profile_title => 'ಪ್ರೊಫೈಲ್ ಸಂಪಾದಿಸಿ';

  @override
  String get profile_full_name_label => 'ಪೂರ್ಣ ಹೆಸರು';

  @override
  String get profile_full_name_hint => 'ನಿಮ್ಮ ಪೂರ್ಣ ಹೆಸರನ್ನು ನಮೂದಿಸಿ';

  @override
  String get profile_full_name_error => 'ದಯವಿಟ್ಟು ನಿಮ್ಮ ಹೆಸರನ್ನು ನಮೂದಿಸಿ';

  @override
  String get profile_email_label => 'ಇಮೇಲ್ ವಿಳಾಸ';

  @override
  String get profile_email_hint => 'ನಿಮ್ಮ ಇಮೇಲ್ ವಿಳಾಸವನ್ನು ನಮೂದಿಸಿ';

  @override
  String get profile_email_error_empty => 'ದಯವಿಟ್ಟು ನಿಮ್ಮ ಇಮೇಲ್ ಅನ್ನು ನಮೂದಿಸಿ';

  @override
  String get profile_email_error_invalid => 'ದಯವಿಟ್ಟು ಮಾನ್ಯ ಇಮೇಲ್ ವಿಳಾಸವನ್ನು ನಮೂದಿಸಿ';

  @override
  String get profile_phone_label => 'ಫೋನ್ ಸಂಖ್ಯೆ';

  @override
  String get profile_save_changes => 'ಬದಲಾವಣೆಗಳನ್ನು ಉಳಿಸಿ';

  @override
  String get profile_user_not_found => 'ದೋಷ: ಬಳಕೆದಾರರು ಕಂಡುಬಂದಿಲ್ಲ.';

  @override
  String get profile_updated_success => 'ಪ್ರೊಫೈಲ್ ಯಶಸ್ವಿಯಾಗಿ ನವೀಕರಿಸಲಾಗಿದೆ!';

  @override
  String profile_update_failed(Object error) {
    return 'ಪ್ರೊಫೈಲ್ ನವೀಕರಿಸಲು ವಿಫಲವಾಗಿದೆ: $error';
  }

  @override
  String profile_language_update_failed(Object error) {
    return 'ಭಾಷೆಯನ್ನು ನವೀಕರಿಸಲು ವಿಫಲವಾಗಿದೆ: $error';
  }

  @override
  String get profile_notification_title => 'ಅಧಿಸೂಚನೆ ಸೆಟ್ಟಿಂಗ್‌ಗಳು';

  @override
  String get profile_general_notifications => 'ಸಾಮಾನ್ಯ ಅಧಿಸೂಚನೆಗಳು';

  @override
  String get profile_push_notifications => 'ಪುಶ್ ಅಧಿಸೂಚನೆಗಳು';

  @override
  String get profile_push_notifications_desc => 'ನಿಮ್ಮ ಸಾಧನದಲ್ಲಿ ಅಧಿಸೂಚನೆಗಳನ್ನು ಸ್ವೀಕರಿಸಿ';

  @override
  String get profile_email_notifications => 'ಇಮೇಲ್ ಅಧಿಸೂಚನೆಗಳು';

  @override
  String get profile_email_notifications_desc => 'ಇಮೇಲ್ ಮೂಲಕ ಅಧಿಸೂಚನೆಗಳನ್ನು ಸ್ವೀಕರಿಸಿ';

  @override
  String get profile_alert_types => 'ಎಚ್ಚರಿಕೆಯ ಪ್ರಕಾರಗಳು';

  @override
  String get profile_critical_safety_alerts => 'ನಿರ್ಣಾಯಕ ಸುರಕ್ಷತಾ ಎಚ್ಚರಿಕೆಗಳು';

  @override
  String get profile_critical_safety_alerts_desc => 'ತಕ್ಷಣದ ಅಪಾಯ ಮತ್ತು ತುರ್ತು ಎಚ್ಚರಿಕೆಗಳು';

  @override
  String get profile_report_status_updates => 'ವರದಿ ಸ್ಥಿತಿ ನವೀಕರಣಗಳು';

  @override
  String get profile_report_status_updates_desc => 'ನೀವು ಸಲ್ಲಿಸಿದ ವರದಿಗಳ ಮೇಲಿನ ನವೀಕರಣಗಳು';

  @override
  String get profile_news_updates => 'ಸುದ್ದಿ ಮತ್ತು ನವೀಕರಣಗಳು';

  @override
  String get profile_news_updates_desc => 'ಸಾಗರ ಸುರಕ್ಷತಾ ಸುದ್ದಿ ಮತ್ತು ಅಪ್ಲಿಕೇಶನ್ ನವೀಕರಣಗಳು';

  @override
  String get profile_critical_alerts_info => 'ನಿಮ್ಮ ರಕ್ಷಣೆಗಾಗಿ ನಿರ್ಣಾಯಕ ಸುರಕ್ಷತಾ ಎಚ್ಚರಿಕೆಗಳನ್ನು ನಿಷ್ಕ್ರಿಯಗೊಳಿಸಲಾಗುವುದಿಲ್ಲ.';

  @override
  String get profile_privacy_title => 'ಗೌಪ್ಯತೆ ಮತ್ತು ಅನುಮತಿಗಳು';

  @override
  String get profile_location_data => 'ಸ್ಥಳ ಮತ್ತು ಡೇಟಾ';

  @override
  String get profile_location_sharing => 'ಸ್ಥಳ ಹಂಚಿಕೆ';

  @override
  String get profile_location_sharing_desc => 'ವರದಿಗಳಿಗಾಗಿ ನಿಮ್ಮ ಸ್ಥಳವನ್ನು ಪ್ರವೇಶಿಸಲು ಅಪ್ಲಿಕೇಶನ್‌ಗೆ ಅನುಮತಿಸಿ';

  @override
  String get profile_public_profile => 'ಸಾರ್ವಜನಿಕ ಪ್ರೊಫೈಲ್';

  @override
  String get profile_public_profile_desc => 'ನಿಮ್ಮ ಪ್ರೊಫೈಲ್ ಅನ್ನು ಇತರ ಬಳಕೆದಾರರಿಗೆ ಗೋಚರಿಸುವಂತೆ ಮಾಡಿ';

  @override
  String get profile_app_analytics => 'ಅಪ್ಲಿಕೇಶನ್ ವಿಶ್ಲೇಷಣೆ';

  @override
  String get profile_usage_analytics => 'ಬಳಕೆಯ ವಿಶ್ಲೇಷಣೆ';

  @override
  String get profile_usage_analytics_desc => 'ಬಳಕೆಯ ಡೇಟಾವನ್ನು ಹಂಚಿಕೊಳ್ಳುವ ಮೂಲಕ ಅಪ್ಲಿಕೇಶನ್ ಅನ್ನು ಸುಧಾರಿಸಲು ಸಹಾಯ ಮಾಡಿ';

  @override
  String get profile_crash_reporting => 'ಕ್ರ್ಯಾಶ್ ವರದಿ ಮಾಡುವುದು';

  @override
  String get profile_crash_reporting_desc => 'ಡೆವಲಪರ್‌ಗಳಿಗೆ ಸ್ವಯಂಚಾಲಿತವಾಗಿ ಕ್ರ್ಯಾಶ್ ವರದಿಗಳನ್ನು ಕಳುಹಿಸಿ';

  @override
  String get profile_view_privacy_policy => 'ಗೌಪ್ಯತಾ ನೀತಿಯನ್ನು ವೀಕ್ಷಿಸಿ';

  @override
  String get profile_opening_privacy_policy => 'ಗೌಪ್ಯತಾ ನೀತಿಯನ್ನು ತೆರೆಯಲಾಗುತ್ತಿದೆ...';

  @override
  String get profile_export_my_data => 'ನನ್ನ ಡೇಟಾವನ್ನು ರಫ್ತು ಮಾಡಿ';

  @override
  String get profile_data_export_submitted => 'ಡೇಟಾ ರಫ್ತು ವಿನಂತಿಯನ್ನು ಸಲ್ಲಿಸಲಾಗಿದೆ';

  @override
  String get profile_delete_my_account => 'ನನ್ನ ಖಾತೆಯನ್ನು ಅಳಿಸಿ';

  @override
  String get profile_delete_account_title => 'ಖಾತೆಯನ್ನು ಅಳಿಸಿ';

  @override
  String get profile_delete_account_confirm => 'ಈ ಕ್ರಿಯೆಯನ್ನು ಹಿಂಪಡೆಯಲು ಸಾಧ್ಯವಿಲ್ಲ. ನಿಮ್ಮ ಎಲ್ಲಾ ವರದಿಗಳು ಮತ್ತು ಡೇಟಾವನ್ನು ಶಾಶ್ವತವಾಗಿ ಅಳಿಸಲಾಗುತ್ತದೆ. ನೀವು ಮುಂದುವರಿಯಲು ಖಚಿತವಾಗಿದ್ದೀರಾ?';

  @override
  String get profile_delete_account_submitted => 'ಖಾತೆ ಅಳಿಸುವಿಕೆ ವಿನಂತಿಯನ್ನು ಸಲ್ಲಿಸಲಾಗಿದೆ';

  @override
  String get profile_no_name_provided => 'ಯಾವುದೇ ಹೆಸರನ್ನು ಒದಗಿಸಿಲ್ಲ';

  @override
  String get profile_no_email_provided => 'ಯಾವುದೇ ಇಮೇಲ್ ಒದಗಿಸಿಲ್ಲ';

  @override
  String get profile_no_phone_provided => 'ಯಾವುದೇ ಫೋನ್ ಒದಗಿಸಿಲ್ಲ';

  @override
  String get profile_default_location => 'ಪುಣೆ, ಮಹಾರಾಷ್ಟ್ರ, ಭಾರತ';

  @override
  String get profile_default_language => 'kn';

  @override
  String get profile_months => 'ಜನ,ಫೆಬ್ರ,ಮಾರ್ಚ್,ಏಪ್ರಿ,ಮೇ,ಜೂನ್,ಜುಲೈ,ಆಗ,ಸೆಪ್ಟಂ,ಅಕ್ಟೋ,ನವೆಂ,ಡಿಸೆಂ';

  @override
  String get create_report_title => 'ಅಪಾಯದ ವರದಿಯನ್ನು ರಚಿಸಿ';

  @override
  String get create_report_subtitle => 'ನಮ್ಮ ಸಾಗರಗಳನ್ನು ಸುರಕ್ಷಿತವಾಗಿರಿಸಲು ಸಹಾಯ ಮಾಡಿ';

  @override
  String get create_report_description_label => 'ವಿವರಣೆ *';

  @override
  String get create_report_description_hint => 'ನೀವು ಗಮನಿಸಿದ ಸಾಗರ ಅಪಾಯವನ್ನು ವಿವರಿಸಿ...';

  @override
  String get create_report_description_error_empty => 'ದಯವಿಟ್ಟು ವಿವರಣೆಯನ್ನು ಒದಗಿಸಿ';

  @override
  String get create_report_description_error_min_length => 'ವಿವರಣೆಯು ಕನಿಷ್ಠ 10 ಅಕ್ಷರಗಳನ್ನು ಹೊಂದಿರಬೇಕು';

  @override
  String get create_report_location_label => 'ಸ್ಥಳ *';

  @override
  String get create_report_location_hint => 'ಸ್ಥಳವನ್ನು ನಮೂದಿಸಿ ಅಥವಾ ಕೆಳಗಿನ ಬಟನ್‌ಗಳನ್ನು ಬಳಸಿ';

  @override
  String get create_report_location_error => 'ದಯವಿಟ್ಟು ಸ್ಥಳವನ್ನು ಸೇರಿಸಿ';

  @override
  String get create_report_current_location => 'ಪ್ರಸ್ತುತ ಸ್ಥಳ';

  @override
  String get create_report_getting_location => 'ಪಡೆಯಲಾಗುತ್ತಿದೆ...';

  @override
  String get create_report_pin_on_map => 'ನಕ್ಷೆಯಲ್ಲಿ ಪಿನ್ ಮಾಡಿ';

  @override
  String get create_report_location_selected => 'ಸ್ಥಳವನ್ನು ಯಶಸ್ವಿಯಾಗಿ ಆಯ್ಕೆಮಾಡಲಾಗಿದೆ';

  @override
  String create_report_coordinates(Object lat, Object lng) {
    return 'ನಿರ್ದೇಶಾಂಕಗಳು: $lat, $lng';
  }

  @override
  String get create_report_attach_media => 'ಮಾಧ್ಯಮವನ್ನು ಲಗತ್ತಿಸಿ';

  @override
  String get create_report_attach_photos_videos => 'ಫೋಟೋಗಳು/ವೀಡಿಯೊಗಳನ್ನು ಲಗತ್ತಿಸಿ';

  @override
  String get create_report_submit => 'ವರದಿಯನ್ನು ಸಲ್ಲಿಸಿ';

  @override
  String get create_report_submitting => 'ಸಲ್ಲಿಸಲಾಗುತ್ತಿದೆ...';

  @override
  String create_report_media_attached_success(Object count) {
    return '$count ಫೈಲ್(ಗಳನ್ನು) ಯಶಸ್ವಿಯಾಗಿ ಲಗತ್ತಿಸಲಾಗಿದೆ';
  }

  @override
  String create_report_media_attach_failed(Object error) {
    return 'ಮಾಧ್ಯಮವನ್ನು ಲಗತ್ತಿಸಲು ವಿಫಲವಾಗಿದೆ: $error';
  }

  @override
  String get create_report_location_captured_success => 'ಪ್ರಸ್ತುತ ಸ್ಥಳವನ್ನು ಯಶಸ್ವಿಯಾಗಿ ಸೆರೆಹಿಡಿಯಲಾಗಿದೆ!';

  @override
  String get create_report_location_permission_denied => 'ಬಳಕೆದಾರರಿಂದ ಸ್ಥಳ ಅನುಮತಿಯನ್ನು ನಿರಾಕರಿಸಲಾಗಿದೆ. ಈ ವೈಶಿಷ್ಟ್ಯವನ್ನು ಬಳಸಲು ದಯವಿಟ್ಟು ಸ್ಥಳ ಪ್ರವೇಶವನ್ನು ನೀಡಿ.';

  @override
  String get create_report_location_permission_denied_forever => 'ಸ್ಥಳ ಅನುಮತಿಗಳನ್ನು ಶಾಶ್ವತವಾಗಿ ನಿರಾಕರಿಸಲಾಗಿದೆ. ದಯವಿಟ್ಟು ನಿಮ್ಮ ಸಾಧನದ ಸೆಟ್ಟಿಂಗ್‌ಗಳಲ್ಲಿ ಸ್ಥಳ ಪ್ರವೇಶವನ್ನು ಸಕ್ರಿಯಗೊಳಿಸಿ.';

  @override
  String get create_report_location_services_disabled => 'ಸ್ಥಳ ಸೇವೆಗಳನ್ನು ನಿಷ್ಕ್ರಿಯಗೊಳಿಸಲಾಗಿದೆ. ದಯವಿಟ್ಟು ನಿಮ್ಮ ಸಾಧನದ ಸೆಟ್ಟಿಂಗ್‌ಗಳಲ್ಲಿ ಸ್ಥಳ ಸೇವೆಗಳನ್ನು ಸಕ್ರಿಯಗೊಳಿಸಿ.';

  @override
  String get create_report_location_unable_determine => 'ಸ್ಥಳವನ್ನು ನಿರ್ಧರಿಸಲು ಸಾಧ್ಯವಾಗುತ್ತಿಲ್ಲ. ದಯವಿಟ್ಟು ಮತ್ತೆ ಪ್ರಯತ್ನಿಸಿ ಅಥವಾ ನಕ್ಷೆಯಲ್ಲಿ ಹಸ್ತಚಾಲಿತವಾಗಿ ಸ್ಥಳವನ್ನು ಆಯ್ಕೆಮಾಡಿ.';

  @override
  String get create_report_location_current => 'ಪ್ರಸ್ತುತ ಸ್ಥಳ';

  @override
  String create_report_location_coordinates(Object lat, Object lng) {
    return 'ಸ್ಥಳ: $lat, $lng';
  }

  @override
  String get create_report_submit_location_required => 'ದಯವಿಟ್ಟು ವರದಿಗಾಗಿ ಸ್ಥಳವನ್ನು ಸೇರಿಸಿ';

  @override
  String get create_report_submit_login_required => 'ವರದಿಯನ್ನು ಸಲ್ಲಿಸಲು ದಯವಿಟ್ಟು ಲಾಗಿನ್ ಮಾಡಿ';

  @override
  String create_report_submit_failed(Object error) {
    return 'ವರದಿಯನ್ನು ಸಲ್ಲಿಸಲು ವಿಫಲವಾಗಿದೆ: $error';
  }

  @override
  String get create_report_submit_retry => 'ಮತ್ತೆ ಪ್ರಯತ್ನಿಸಿ';

  @override
  String get create_report_success_title => 'ವರದಿಯನ್ನು ಯಶಸ್ವಿಯಾಗಿ ಸಲ್ಲಿಸಲಾಗಿದೆ!';

  @override
  String get create_report_success_auto_approved => 'ವರದಿಯು ಸ್ವಯಂ-ಅನುಮೋದಿತ ಮತ್ತು ಪ್ರಕಟಿತವಾಗಿದೆ!';

  @override
  String create_report_success_auto_approved_sub(Object score) {
    return 'ಹೆಚ್ಚಿನ ವಿಶ್ವಾಸಾರ್ಹತೆಯ ಅಂಕ ($score%)';
  }

  @override
  String get create_report_success_review => 'ಪರಿಶೀಲನೆಗಾಗಿ ವರದಿಯನ್ನು ಸಲ್ಲಿಸಲಾಗಿದೆ';

  @override
  String get create_report_success_review_normal => 'ಸಾಮಾನ್ಯ ಪ್ರಕ್ರಿಯೆ ನಿರೀಕ್ಷಿಸಲಾಗಿದೆ';

  @override
  String get create_report_success_review_verification => 'ಹೆಚ್ಚುವರಿ ಪರಿಶೀಲನೆ ಅಗತ್ಯವಿರಬಹುದು';

  @override
  String get create_report_success_manual_review => 'ಹಸ್ತಚಾಲಿತ ಪರಿಶೀಲನೆಗಾಗಿ ವರದಿಯನ್ನು ಸಲ್ಲಿಸಲಾಗಿದೆ';

  @override
  String get create_report_success_manual_review_sub => 'ವಿವರವಾದ ಪರಿಶೀಲನೆ ಅಗತ್ಯವಿದೆ';

  @override
  String create_report_success_title_label(Object title) {
    return 'ಶೀರ್ಷಿಕೆ: $title';
  }

  @override
  String get create_report_unknown_location => 'ಅಪರಿಚಿತ ಸ್ಥಳ';

  @override
  String get create_report_selected_location => 'ಆಯ್ದ ಸ್ಥಳ';
}
