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
  String get report_menu_edit => 'Edit Report';

  @override
  String get report_menu_delete => 'Delete Report';

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
  String get report_action_delete => 'Delete';

  @override
  String get report_details_title => 'Report Details';

  @override
  String get report_id_label => 'Report ID';

  @override
  String report_attachments_label(Object count) {
    return 'Attachments ($count)';
  }

  @override
  String get report_media_files => 'Media Files';

  @override
  String report_media_files_attached(Object count) {
    return '$count file(s) attached to this report';
  }

  @override
  String get report_media_view => 'View';

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

  @override
  String get profile_title => 'Profile';

  @override
  String get profile_subtitle => 'Manage your account and settings';

  @override
  String get profile_user_not_logged_in => 'User not logged in.';

  @override
  String get profile_could_not_load_data => 'Could not load user data.';

  @override
  String profile_something_wrong(Object error) {
    return 'Something went wrong: $error';
  }

  @override
  String get profile_verified => 'VERIFIED';

  @override
  String profile_member_since(Object date) {
    return 'Member since $date';
  }

  @override
  String get profile_email => 'Email';

  @override
  String get profile_phone => 'Phone';

  @override
  String get profile_edit_profile => 'Edit Profile';

  @override
  String get profile_statistics_title => 'Statistics & Summary';

  @override
  String get profile_reports_submitted => 'Reports Submitted';

  @override
  String get profile_verified_reports => 'Verified Reports';

  @override
  String get profile_pending_reports => 'Pending Reports';

  @override
  String get profile_rejected_reports => 'Rejected Reports';

  @override
  String profile_could_not_load_stats(Object error) {
    return 'Could not load statistics: $error';
  }

  @override
  String get profile_no_stats_available => 'No statistics available.';

  @override
  String get profile_account_options => 'Account Options';

  @override
  String get profile_language_settings => 'Language Settings';

  @override
  String get profile_language_settings_desc => 'Choose your preferred language';

  @override
  String get profile_notification_settings => 'Notification Settings';

  @override
  String get profile_notification_settings_desc => 'Manage alerts and push notifications';

  @override
  String get profile_privacy_permissions => 'Privacy & Permissions';

  @override
  String get profile_privacy_permissions_desc => 'Control your data and app permissions';

  @override
  String get profile_help_support => 'Help & Support';

  @override
  String get profile_help_support_desc => 'Get help and contact support';

  @override
  String get profile_help_coming_soon => 'Help & Support coming soon!';

  @override
  String get profile_about_sentinel => 'About Sentinel';

  @override
  String get profile_about_sentinel_desc => 'App version and information';

  @override
  String get profile_app_name => 'Sentinel';

  @override
  String get profile_app_version => '1.0.0';

  @override
  String get profile_app_description => 'Crowdsourced Ocean Hazard Alerts\n\nHelping keep our oceans safe through community reporting.';

  @override
  String get profile_logout => 'Logout';

  @override
  String get profile_logout_desc => 'Sign out from your account';

  @override
  String get profile_logout_confirm => 'Are you sure you want to logout from Sentinel?';

  @override
  String get profile_cancel => 'Cancel';

  @override
  String profile_logout_failed(Object error) {
    return 'Logout failed: $error';
  }

  @override
  String get profile_edit_profile_title => 'Edit Profile';

  @override
  String get profile_full_name_label => 'Full Name';

  @override
  String get profile_full_name_hint => 'Enter your full name';

  @override
  String get profile_full_name_error => 'Please enter your name';

  @override
  String get profile_email_label => 'Email Address';

  @override
  String get profile_email_hint => 'Enter your email address';

  @override
  String get profile_email_error_empty => 'Please enter your email';

  @override
  String get profile_email_error_invalid => 'Please enter a valid email address';

  @override
  String get profile_phone_label => 'Phone Number';

  @override
  String get profile_save_changes => 'Save Changes';

  @override
  String get profile_user_not_found => 'Error: User not found.';

  @override
  String get profile_updated_success => 'Profile updated successfully!';

  @override
  String profile_update_failed(Object error) {
    return 'Failed to update profile: $error';
  }

  @override
  String profile_language_update_failed(Object error) {
    return 'Failed to update language: $error';
  }

  @override
  String get profile_notification_title => 'Notification Settings';

  @override
  String get profile_general_notifications => 'General Notifications';

  @override
  String get profile_push_notifications => 'Push Notifications';

  @override
  String get profile_push_notifications_desc => 'Receive notifications on your device';

  @override
  String get profile_email_notifications => 'Email Notifications';

  @override
  String get profile_email_notifications_desc => 'Receive notifications via email';

  @override
  String get profile_alert_types => 'Alert Types';

  @override
  String get profile_critical_safety_alerts => 'Critical Safety Alerts';

  @override
  String get profile_critical_safety_alerts_desc => 'Immediate danger and emergency alerts';

  @override
  String get profile_report_status_updates => 'Report Status Updates';

  @override
  String get profile_report_status_updates_desc => 'Updates on your submitted reports';

  @override
  String get profile_news_updates => 'News & Updates';

  @override
  String get profile_news_updates_desc => 'Ocean safety news and app updates';

  @override
  String get profile_critical_alerts_info => 'Critical safety alerts cannot be disabled for your protection.';

  @override
  String get profile_privacy_title => 'Privacy & Permissions';

  @override
  String get profile_location_data => 'Location & Data';

  @override
  String get profile_location_sharing => 'Location Sharing';

  @override
  String get profile_location_sharing_desc => 'Allow app to access your location for reports';

  @override
  String get profile_public_profile => 'Public Profile';

  @override
  String get profile_public_profile_desc => 'Make your profile visible to other users';

  @override
  String get profile_app_analytics => 'App Analytics';

  @override
  String get profile_usage_analytics => 'Usage Analytics';

  @override
  String get profile_usage_analytics_desc => 'Help improve the app by sharing usage data';

  @override
  String get profile_crash_reporting => 'Crash Reporting';

  @override
  String get profile_crash_reporting_desc => 'Automatically send crash reports to developers';

  @override
  String get profile_view_privacy_policy => 'View Privacy Policy';

  @override
  String get profile_opening_privacy_policy => 'Opening Privacy Policy...';

  @override
  String get profile_export_my_data => 'Export My Data';

  @override
  String get profile_data_export_submitted => 'Data export request submitted';

  @override
  String get profile_delete_my_account => 'Delete My Account';

  @override
  String get profile_delete_account_title => 'Delete Account';

  @override
  String get profile_delete_account_confirm => 'This action cannot be undone. All your reports and data will be permanently deleted. Are you sure you want to proceed?';

  @override
  String get profile_delete_account_submitted => 'Account deletion request submitted';

  @override
  String get profile_no_name_provided => 'No Name Provided';

  @override
  String get profile_no_email_provided => 'No Email Provided';

  @override
  String get profile_no_phone_provided => 'No Phone Provided';

  @override
  String get profile_default_location => 'Pune, Maharashtra, India';

  @override
  String get profile_default_language => 'en';

  @override
  String get profile_months => 'Jan,Feb,Mar,Apr,May,Jun,Jul,Aug,Sep,Oct,Nov,Dec';

  @override
  String get create_report_title => 'Create Hazard Report';

  @override
  String get create_report_subtitle => 'Help keep our oceans safe';

  @override
  String get create_report_description_label => 'Description *';

  @override
  String get create_report_description_hint => 'Describe the ocean hazard you observed...';

  @override
  String get create_report_description_error_empty => 'Please provide a description';

  @override
  String get create_report_description_error_min_length => 'Description must be at least 10 characters';

  @override
  String get create_report_location_label => 'Location *';

  @override
  String get create_report_location_hint => 'Enter location or use buttons below';

  @override
  String get create_report_location_error => 'Please add a location';

  @override
  String get create_report_current_location => 'Current Location';

  @override
  String get create_report_getting_location => 'Getting...';

  @override
  String get create_report_pin_on_map => 'Pin on Map';

  @override
  String get create_report_location_selected => 'Location selected successfully';

  @override
  String create_report_coordinates(Object lat, Object lng) {
    return 'Coordinates: $lat, $lng';
  }

  @override
  String get create_report_attach_media => 'Attach Media';

  @override
  String get create_report_attach_photos_videos => 'Attach Photos/Videos';

  @override
  String get create_report_submit => 'Submit Report';

  @override
  String get create_report_submitting => 'Submitting...';

  @override
  String create_report_media_attached_success(Object count) {
    return '$count file(s) attached successfully';
  }

  @override
  String create_report_media_attach_failed(Object error) {
    return 'Failed to attach media: $error';
  }

  @override
  String get create_report_location_captured_success => 'Current location captured successfully!';

  @override
  String get create_report_location_permission_denied => 'Location permission denied by user. Please grant location access to use this feature.';

  @override
  String get create_report_location_permission_denied_forever => 'Location permissions are permanently denied. Please enable location access in your device settings.';

  @override
  String get create_report_location_services_disabled => 'Location services are disabled. Please enable location services in your device settings.';

  @override
  String get create_report_location_unable_determine => 'Unable to determine location. Please try again or select location manually on the map.';

  @override
  String get create_report_location_current => 'Current Location';

  @override
  String create_report_location_coordinates(Object lat, Object lng) {
    return 'Location: $lat, $lng';
  }

  @override
  String get create_report_submit_location_required => 'Please add a location for the report';

  @override
  String get create_report_submit_login_required => 'Please log in to submit a report';

  @override
  String create_report_submit_failed(Object error) {
    return 'Failed to submit report: $error';
  }

  @override
  String get create_report_submit_retry => 'Retry';

  @override
  String get create_report_success_title => 'Report submitted successfully!';

  @override
  String get create_report_success_auto_approved => 'Report auto-approved and published!';

  @override
  String create_report_success_auto_approved_sub(Object score) {
    return 'High trust score ($score%)';
  }

  @override
  String get create_report_success_review => 'Report submitted for review';

  @override
  String get create_report_success_review_normal => 'Normal processing expected';

  @override
  String get create_report_success_review_verification => 'Additional verification may be required';

  @override
  String get create_report_success_manual_review => 'Report submitted for manual review';

  @override
  String get create_report_success_manual_review_sub => 'Detailed verification required';

  @override
  String create_report_success_title_label(Object title) {
    return 'Title: $title';
  }

  @override
  String get create_report_unknown_location => 'Unknown location';

  @override
  String get create_report_selected_location => 'Selected location';
}
