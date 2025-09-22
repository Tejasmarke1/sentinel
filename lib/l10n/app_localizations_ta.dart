// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Tamil (`ta`).
class AppLocalizationsTa extends AppLocalizations {
  AppLocalizationsTa([String locale = 'ta']) : super(locale);

  @override
  String get appTitle => 'சென்டினல்';

  @override
  String get common_cancel => 'ரத்து செய்';

  @override
  String get common_delete => 'அழி';

  @override
  String get common_edit => 'தொகுப்பு';

  @override
  String get common_retry => 'மீண்டும் முயற்சி செய்';

  @override
  String get common_default => 'இயல்புநிலை';

  @override
  String get language_select_title => 'மொழியை தேர்ந்தெடு';

  @override
  String get language_select_subtitle => 'சென்டினலுக்கான உங்கள் விருப்ப மொழியை தேர்ந்தெடுக்கவும்';

  @override
  String get language_section_primary => 'முக்கிய மொழிகள்';

  @override
  String get language_section_west => 'மேற்கு கரைவாழ்வின் மொழிகள்';

  @override
  String get language_section_east => 'கிழக்கு கரைவாழ்வின் மொழிகள்';

  @override
  String get language_section_islands => 'தீவு பகுதிகள்';

  @override
  String language_selected_label(Object language) {
    return 'தேர்ந்தெடுக்கப்பட்டது: $language';
  }

  @override
  String language_changed_snackbar(Object language) {
    return 'மொழி $language ஆக மாறியது';
  }

  @override
  String get language_confirm_button => 'மொழியை உறுதிசெய்';

  @override
  String get login_welcome_to => 'வரவேற்கிறோம்';

  @override
  String get login_title_caps => 'சென்டினல்';

  @override
  String get login_tagline => 'கடல் அபாய அறிவிப்புகளுக்கான உங்கள் பாதுகாப்பு நண்பர்';

  @override
  String get login_enter_phone => 'உங்கள் மொபைல் எணை உள்ளிடவும்';

  @override
  String get login_phone_help => 'நாம் SMS மூலம் ஒரு சரிபார்ப்பு குறியீட்டை அனுப்புவோம்';

  @override
  String get login_send_otp => 'OTP அனுப்பு';

  @override
  String get login_terms_prefix => 'தொடர்ந்தால், நீங்கள் எங்களது';

  @override
  String get login_terms => 'சேவை விதிமுறைகளை';

  @override
  String get login_and => ' மற்றும் ';

  @override
  String get login_privacy => 'குறிப்புப் பாதுகாப்பு கொள்கையை ஏற்கிறீர்கள்';

  @override
  String get login_error_enter_phone => 'தயவுசெய்து உங்கள் மொபைல் எணை உள்ளிடவும்';

  @override
  String get login_error_valid_phone => 'தயவுசெய்து செல்லுபடியான மொபைல் எணை உள்ளிடவும்';

  @override
  String get otp_title => 'சரிபார்ப்பு குறியீட்டை உள்ளிடவும்';

  @override
  String otp_sent_to(Object phone) {
    return 'நாம் 6 இலக்க குறியீட்டை அனுப்பினோம்\n$phone';
  }

  @override
  String get otp_hint => '000000';

  @override
  String get otp_verify_continue => 'சரிபார்த்து தொடரவும்';

  @override
  String get otp_error_incomplete => 'தயவுசெய்து முழு 6 இலக்க குறியீட்டை உள்ளிடவும்';

  @override
  String otp_resend_in(Object seconds) {
    return '$seconds வினாடிகளில் மீண்டும் அனுப்பு';
  }

  @override
  String get otp_resend_cta => 'குறியீடு பெறவில்லை? மீண்டும் அனுப்பு';

  @override
  String get otp_request_first => 'முதலில் குறியீட்டை கோரவும்.';

  @override
  String get otp_invalid_code => 'Invalid code';

  @override
  String get verification_failed => 'Verification failed';

  @override
  String get phone_country_code => '+91';

  @override
  String get phone_hint_number => '98765 43210';

  @override
  String get reports_title => 'எனது அறிக்கைகள்';

  @override
  String get reports_subtitle => 'நீங்கள் சமர்ப்பித்த அபாய அறிக்கைகளை பின்தொடரவும்';

  @override
  String reports_count_label(Object count) {
    return '$count அறிக்கைகள்';
  }

  @override
  String get reports_filter_label => 'நிலை படி வடிகட்டி காண்க';

  @override
  String get status_pending => 'மீதமுள்ளது';

  @override
  String get status_verified => 'சரிபார்க்கப்பட்டது';

  @override
  String get status_dismissed => 'நிராகரிக்கப்பட்டது';

  @override
  String get status_under_review => 'திருத்தத்தின் கீழ்';

  @override
  String get reports_loading => 'உங்கள் அறிக்கைகள் ஏற்றப்படுகிறது...';

  @override
  String get reports_error_title => 'அறிக்கைகள் ஏற்றுவதில் பிழை';

  @override
  String get reports_empty_all => 'எந்த அறிக்கைகளும் இல்லை';

  @override
  String reports_empty_filtered(Object status) {
    return '$status அறிக்கைகள் எதுவும் இல்லை';
  }

  @override
  String get reports_empty_all_sub => 'நமது கடல்களை பாதுகாப்பாக வைக்க கடல் அபாயங்களைப் பதிவு செய்ய தொடங்கவும்';

  @override
  String get reports_empty_filtered_sub => 'அறிக்கைகளை பார்க்க வேறொரு வடிகட்டியை தேர்ந்தெடுக்கவும்';

  @override
  String get reports_stat_pending => 'மீதமுள்ளது';

  @override
  String get reports_stat_verified => 'சரிபார்க்கப்பட்டது';

  @override
  String get reports_stat_dismissed => 'நிராகரிக்கப்பட்டது';

  @override
  String get time_just_now => 'இப்போதே';

  @override
  String time_minutes_ago(Object minutes) {
    return '$minutes நிமிடங்கள் முன்பு';
  }

  @override
  String time_hours_ago(Object hours) {
    return '$hours மணி முன்பு';
  }

  @override
  String time_days_ago(Object days) {
    return '$days நாட்கள் முன்பு';
  }

  @override
  String time_on_date(Object day, Object month, Object year) {
    return '$day/$month/$year';
  }

  @override
  String get report_details_title => 'அறிக்கை விவரங்கள்';

  @override
  String get report_menu_edit => 'அறிக்கையைத் தொகுக்கவும்';

  @override
  String get report_menu_delete => 'அறிக்கையை அழிக்கவும்';

  @override
  String report_reported_on(Object date) {
    return '$date அன்று அறிக்கை';
  }

  @override
  String get report_section_description => 'விபரம்';

  @override
  String get report_section_location => 'இடம்';

  @override
  String report_section_media(Object count) {
    return 'ஊடகம் ($count)';
  }

  @override
  String get report_section_reputation => 'அறிக்கையிடுநரின் மதிப்பு';

  @override
  String get report_media_view_all => 'அனைத்தையும் பார்க்கவும்';

  @override
  String get report_lat_label => 'அட்சாங்கம்:';

  @override
  String get report_lng_label => 'நீளங்கம்:';

  @override
  String get report_action_edit => 'அறிக்கையைத் தொகுக்கவும்';

  @override
  String get report_action_delete => 'அறிக்கையை அழிக்கவும்';

  @override
  String get report_delete_title => 'அறிக்கையை அழிக்கவும்';

  @override
  String report_delete_confirm(Object title) {
    return '\"$title\" அழிக்க விரும்புகிறீர்களா? இந்த செயல் மீட்க முடியாது.';
  }

  @override
  String get report_deleted_success => 'அறிக்கை வெற்றிகரமாக அழிக்கப்பட்டது';

  @override
  String report_delete_failed(Object error) {
    return 'அறிக்கை அழிக்க முடியவில்லை: $error';
  }

  @override
  String get report_edit_coming => 'தொகுப்பு செயல்பாடு விரைவில் வருகிறது!';

  @override
  String get report_media_coming => 'ஊடக பார்வையாளர் விரைவில் வருகிறது!';

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
