// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Hindi (`hi`).
class AppLocalizationsHi extends AppLocalizations {
  AppLocalizationsHi([String locale = 'hi']) : super(locale);

  @override
  String get appTitle => 'सेंटिनेल';

  @override
  String get common_cancel => 'रद्द करें';

  @override
  String get common_delete => 'हटाएँ';

  @override
  String get common_edit => 'संपादित करें';

  @override
  String get common_retry => 'पुनः प्रयास करें';

  @override
  String get common_default => 'डिफ़ॉल्ट';

  @override
  String get language_select_title => 'भाषा चुनें';

  @override
  String get language_select_subtitle => 'सेंटिनेल के लिए अपनी पसंदीदा भाषा चुनें';

  @override
  String get language_section_primary => 'मुख्य भाषाएँ';

  @override
  String get language_section_west => 'पश्चिम तटीय भाषाएँ';

  @override
  String get language_section_east => 'पूर्व तटीय भाषाएँ';

  @override
  String get language_section_islands => 'द्वीप क्षेत्र';

  @override
  String language_selected_label(Object language) {
    return 'चुनी हुई: $language';
  }

  @override
  String language_changed_snackbar(Object language) {
    return 'भाषा $language में बदल गई';
  }

  @override
  String get language_confirm_button => 'भाषा की पुष्टि करें';

  @override
  String get login_welcome_to => 'स्वागत है';

  @override
  String get login_title_caps => 'सेंटिनेल';

  @override
  String get login_tagline => 'समुद्री खतरे की चेतावनी के लिए आपका सुरक्षा साथी';

  @override
  String get login_enter_phone => 'अपना मोबाइल नंबर दर्ज करें';

  @override
  String get login_phone_help => 'हम आपको SMS के माध्यम से एक सत्यापन कोड भेजेंगे';

  @override
  String get login_send_otp => 'OTP भेजें';

  @override
  String get login_terms_prefix => 'जारी रखते हुए, आप हमारी';

  @override
  String get login_terms => 'सेवा की शर्तों';

  @override
  String get login_and => ' और ';

  @override
  String get login_privacy => 'गोपनीयता नीति';

  @override
  String get login_error_enter_phone => 'कृपया अपना मोबाइल नंबर दर्ज करें';

  @override
  String get login_error_valid_phone => 'कृपया मान्य मोबाइल नंबर दर्ज करें';

  @override
  String get otp_title => 'सत्यापन कोड दर्ज करें';

  @override
  String otp_sent_to(Object phone) {
    return 'हमने 6 अंकों का कोड भेजा है\n$phone';
  }

  @override
  String get otp_hint => '000000';

  @override
  String get otp_verify_continue => 'सत्यापित करें & जारी रखें';

  @override
  String get otp_error_incomplete => 'कृपया पूरा 6 अंकों का कोड दर्ज करें';

  @override
  String otp_resend_in(Object seconds) {
    return '$seconds सेकंड में पुनः भेजें';
  }

  @override
  String get otp_resend_cta => 'कोड प्राप्त नहीं हुआ? पुनः भेजें';

  @override
  String get otp_request_first => 'कृपया पहले कोड का अनुरोध करें।';

  @override
  String get otp_invalid_code => 'Invalid code';

  @override
  String get verification_failed => 'Verification failed';

  @override
  String get phone_country_code => '+91';

  @override
  String get phone_hint_number => '98765 43210';

  @override
  String get reports_title => 'मेरी रिपोर्ट्स';

  @override
  String get reports_subtitle => 'अपनी सबमिट की गई खतरे की रिपोर्ट ट्रैक करें';

  @override
  String reports_count_label(Object count) {
    return '$count रिपोर्ट्स';
  }

  @override
  String get reports_filter_label => 'स्थिति के अनुसार फ़िल्टर करें';

  @override
  String get status_pending => 'लंबित';

  @override
  String get status_verified => 'सत्यापित';

  @override
  String get status_dismissed => 'खारिज';

  @override
  String get status_under_review => 'समीक्षा में';

  @override
  String get reports_loading => 'आपकी रिपोर्ट्स लोड हो रही हैं...';

  @override
  String get reports_error_title => 'रिपोर्ट्स लोड करने में त्रुटि';

  @override
  String get reports_empty_all => 'कोई रिपोर्ट नहीं';

  @override
  String reports_empty_filtered(Object status) {
    return 'कोई $status रिपोर्ट नहीं';
  }

  @override
  String get reports_empty_all_sub => 'हमारे समुद्रों को सुरक्षित रखने के लिए समुद्री खतरे की रिपोर्ट करना शुरू करें';

  @override
  String get reports_empty_filtered_sub => 'रिपोर्ट देखने के लिए अलग फ़िल्टर चुनें';

  @override
  String get reports_stat_pending => 'लंबित';

  @override
  String get reports_stat_verified => 'सत्यापित';

  @override
  String get reports_stat_dismissed => 'खारिज';

  @override
  String get time_just_now => 'अभी';

  @override
  String time_minutes_ago(Object minutes) {
    return '$minutes मिनट पहले';
  }

  @override
  String time_hours_ago(Object hours) {
    return '$hours घंटे पहले';
  }

  @override
  String time_days_ago(Object days) {
    return '$days दिन पहले';
  }

  @override
  String time_on_date(Object day, Object month, Object year) {
    return '$day/$month/$year';
  }

  @override
  String get report_details_title => 'रिपोर्ट विवरण';

  @override
  String get report_menu_edit => 'रिपोर्ट संपादित करें';

  @override
  String get report_menu_delete => 'रिपोर्ट हटाएँ';

  @override
  String report_reported_on(Object date) {
    return '$date को रिपोर्ट की गई';
  }

  @override
  String get report_section_description => 'विवरण';

  @override
  String get report_section_location => 'स्थान';

  @override
  String report_section_media(Object count) {
    return 'मीडिया ($count)';
  }

  @override
  String get report_section_reputation => 'रिपोर्ट करने वाले की प्रतिष्ठा';

  @override
  String get report_media_view_all => 'सभी देखें';

  @override
  String get report_lat_label => 'अक्षांश:';

  @override
  String get report_lng_label => 'देशांतर:';

  @override
  String get report_action_edit => 'रिपोर्ट संपादित करें';

  @override
  String get report_action_delete => 'रिपोर्ट हटाएँ';

  @override
  String get report_delete_title => 'रिपोर्ट हटाएँ';

  @override
  String report_delete_confirm(Object title) {
    return 'क्या आप \"$title\" हटाना चाहते हैं? यह कार्रवाई पूर्ववत नहीं की जा सकती।';
  }

  @override
  String get report_deleted_success => 'रिपोर्ट सफलतापूर्वक हटाई गई';

  @override
  String report_delete_failed(Object error) {
    return 'रिपोर्ट हटाने में विफल: $error';
  }

  @override
  String get report_edit_coming => 'संपादन सुविधा जल्द आ रही है!';

  @override
  String get report_media_coming => 'मीडिया व्यूअर जल्द आ रहा है!';

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
