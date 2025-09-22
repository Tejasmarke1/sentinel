// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get appTitle => 'Sentinel';

  @override
  String get common_cancel => 'Cancel';

  @override
  String get common_delete => 'Delete';

  @override
  String get common_edit => 'Edit';

  @override
  String get common_retry => 'Retry';

  @override
  String get common_default => 'DEFAULT';

  @override
  String get language_select_title => 'Select Language';

  @override
  String get language_select_subtitle => 'Choose your preferred language for Sentinel';

  @override
  String get language_section_primary => 'Primary Languages';

  @override
  String get language_section_west => 'West Coast Languages';

  @override
  String get language_section_east => 'East Coast Languages';

  @override
  String get language_section_islands => 'Island Territories';

  @override
  String language_selected_label(Object language) {
    return 'Selected: $language';
  }

  @override
  String language_changed_snackbar(Object language) {
    return 'Language changed to $language';
  }

  @override
  String get language_confirm_button => 'Confirm Language';

  @override
  String get login_welcome_to => 'Welcome to';

  @override
  String get login_title_caps => 'SENTINEL';

  @override
  String get login_tagline => 'Your safety companion for ocean hazard alerts';

  @override
  String get login_enter_phone => 'Enter your mobile number';

  @override
  String get login_phone_help => 'We\'ll send you a verification code via SMS';

  @override
  String get login_send_otp => 'Send OTP';

  @override
  String get login_terms_prefix => 'By continuing, you agree to our';

  @override
  String get login_terms => 'Terms of Service';

  @override
  String get login_and => ' and ';

  @override
  String get login_privacy => 'Privacy Policy';

  @override
  String get login_error_enter_phone => 'Please enter your mobile number';

  @override
  String get login_error_valid_phone => 'Please enter a valid mobile number';

  @override
  String get otp_title => 'Enter Verification Code';

  @override
  String otp_sent_to(Object phone) {
    return 'We sent a 6-digit code to\n$phone';
  }

  @override
  String get otp_hint => '000000';

  @override
  String get otp_verify_continue => 'Verify & Continue';

  @override
  String get otp_error_incomplete => 'Please enter complete 6-digit code';

  @override
  String otp_resend_in(Object seconds) {
    return 'Resend code in ${seconds}s';
  }

  @override
  String get otp_resend_cta => 'Didn\'t receive code? Resend';

  @override
  String get otp_request_first => 'Please request the code first.';

  @override
  String get otp_invalid_code => 'Invalid code';

  @override
  String get verification_failed => 'Verification failed';

  @override
  String get phone_country_code => '+91';

  @override
  String get phone_hint_number => '98765 43210';

  @override
  String get reports_title => 'My Reports';

  @override
  String get reports_subtitle => 'Track your submitted hazard reports';

  @override
  String reports_count_label(Object count) {
    return '$count Reports';
  }

  @override
  String get reports_filter_label => 'Filter by Status';

  @override
  String get status_pending => 'Pending';

  @override
  String get status_verified => 'Verified';

  @override
  String get status_dismissed => 'Dismissed';

  @override
  String get status_under_review => 'Under Review';

  @override
  String get reports_loading => 'Loading your reports...';

  @override
  String get reports_error_title => 'Error Loading Reports';

  @override
  String get reports_empty_all => 'No Reports Yet';

  @override
  String reports_empty_filtered(Object status) {
    return 'No $status Reports';
  }

  @override
  String get reports_empty_all_sub => 'Start reporting ocean hazards to help keep our waters safe';

  @override
  String get reports_empty_filtered_sub => 'Try selecting a different filter to view reports';

  @override
  String get reports_stat_pending => 'Pending';

  @override
  String get reports_stat_verified => 'Verified';

  @override
  String get reports_stat_dismissed => 'Dismissed';

  @override
  String get time_just_now => 'Just now';

  @override
  String time_minutes_ago(Object minutes) {
    return '${minutes}m ago';
  }

  @override
  String time_hours_ago(Object hours) {
    return '${hours}h ago';
  }

  @override
  String time_days_ago(Object days) {
    return '${days}d ago';
  }

  @override
  String time_on_date(Object day, Object month, Object year) {
    return '$day/$month/$year';
  }

  @override
  String get report_details_title => 'Report Details';

  @override
  String get report_menu_edit => 'Edit Report';

  @override
  String get report_menu_delete => 'Delete Report';

  @override
  String report_reported_on(Object date) {
    return 'Reported on $date';
  }

  @override
  String get report_section_description => 'Description';

  @override
  String get report_section_location => 'Location';

  @override
  String report_section_media(Object count) {
    return 'Media ($count)';
  }

  @override
  String get report_section_reputation => 'Reporter Reputation';

  @override
  String get report_media_view_all => 'View All';

  @override
  String get report_lat_label => 'Lat:';

  @override
  String get report_lng_label => 'Lng:';

  @override
  String get report_action_edit => 'Edit Report';

  @override
  String get report_action_delete => 'Delete Report';

  @override
  String get report_delete_title => 'Delete Report';

  @override
  String report_delete_confirm(Object title) {
    return 'Are you sure you want to delete \"$title\"? This action cannot be undone.';
  }

  @override
  String get report_deleted_success => 'Report deleted successfully';

  @override
  String report_delete_failed(Object error) {
    return 'Failed to delete report: $error';
  }

  @override
  String get report_edit_coming => 'Edit functionality coming soon!';

  @override
  String get report_media_coming => 'Media viewer coming soon!';

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
