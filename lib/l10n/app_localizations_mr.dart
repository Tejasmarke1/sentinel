// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Marathi (`mr`).
class AppLocalizationsMr extends AppLocalizations {
  AppLocalizationsMr([String locale = 'mr']) : super(locale);

  @override
  String get appTitle => 'सेंटिनेल';

  @override
  String get common_cancel => 'रद्द करा';

  @override
  String get common_delete => 'हटवा';

  @override
  String get common_edit => 'संपादित करा';

  @override
  String get common_retry => 'पुन्हा प्रयत्न करा';

  @override
  String get common_default => 'डीफॉल्ट';

  @override
  String get language_select_title => 'भाषा निवडा';

  @override
  String get language_select_subtitle => 'सेंटिनेलसाठी तुमची पसंतीची भाषा निवडा';

  @override
  String get language_section_primary => 'प्राथमिक भाषा';

  @override
  String get language_section_west => 'पश्चिम किनारपट्टीच्या भाषा';

  @override
  String get language_section_east => 'पूर्व किनारपट्टीच्या भाषा';

  @override
  String get language_section_islands => 'द्वीप क्षेत्रे';

  @override
  String language_selected_label(Object language) {
    return 'निवडलेली: $language';
  }

  @override
  String language_changed_snackbar(Object language) {
    return 'भाषा $language मध्ये बदलली';
  }

  @override
  String get language_confirm_button => 'भाषा निश्चित करा';

  @override
  String get login_welcome_to => 'स्वागत आहे';

  @override
  String get login_title_caps => 'सेंटिनेल';

  @override
  String get login_tagline => 'समुद्री धोक्यांसाठी तुमचा सुरक्षा साथीदार';

  @override
  String get login_enter_phone => 'तुमचा मोबाईल क्रमांक टाका';

  @override
  String get login_phone_help => 'आम्ही तुम्हाला SMS द्वारे सत्यापन कोड पाठवू';

  @override
  String get login_send_otp => 'OTP पाठवा';

  @override
  String get login_terms_prefix => 'पुढे सुरू ठेवताना, तुम्ही आमच्या';

  @override
  String get login_terms => 'सेवेच्या अटींना';

  @override
  String get login_and => ' आणि ';

  @override
  String get login_privacy => 'गोपनीयता धोरणास';

  @override
  String get login_error_enter_phone => 'कृपया तुमचा मोबाईल क्रमांक टाका';

  @override
  String get login_error_valid_phone => 'कृपया वैध मोबाईल क्रमांक टाका';

  @override
  String get otp_title => 'सत्यापन कोड टाका';

  @override
  String otp_sent_to(Object phone) {
    return 'आम्ही 6-अंकी कोड पाठवला आहे\n$phone';
  }

  @override
  String get otp_hint => '000000';

  @override
  String get otp_verify_continue => 'सत्यापित करा व पुढे चला';

  @override
  String get otp_error_incomplete => 'कृपया पूर्ण 6-अंकी कोड टाका';

  @override
  String otp_resend_in(Object seconds) {
    return '$seconds सेकंदात कोड पुन्हा पाठवा';
  }

  @override
  String get otp_resend_cta => 'कोड मिळाला नाही? पुन्हा पाठवा';

  @override
  String get otp_request_first => 'कृपया प्रथम कोडची विनंती करा.';

  @override
  String get otp_invalid_code => 'Invalid code';

  @override
  String get verification_failed => 'Verification failed';

  @override
  String get phone_country_code => '+91';

  @override
  String get phone_hint_number => '98765 43210';

  @override
  String get reports_title => 'माझे अहवाल';

  @override
  String get reports_subtitle => 'तुमचे सबमिट केलेले धोका अहवाल ट्रॅक करा';

  @override
  String reports_count_label(Object count) {
    return '$count अहवाल';
  }

  @override
  String get reports_filter_label => 'स्थितीनुसार फिल्टर करा';

  @override
  String get status_pending => 'प्रलंबित';

  @override
  String get status_verified => 'सत्यापित';

  @override
  String get status_dismissed => 'नाकारलेले';

  @override
  String get status_under_review => 'पुनरावलोकनाधीन';

  @override
  String get reports_loading => 'तुमचे अहवाल लोड होत आहेत...';

  @override
  String get reports_error_title => 'अहवाल लोड करण्यात त्रुटी';

  @override
  String get reports_empty_all => 'अजून अहवाल नाहीत';

  @override
  String reports_empty_filtered(Object status) {
    return 'कोणतेही $status अहवाल नाहीत';
  }

  @override
  String get reports_empty_all_sub => 'आपले समुद्र सुरक्षित ठेवण्यासाठी समुद्री धोके रिपोर्ट करायला सुरुवात करा';

  @override
  String get reports_empty_filtered_sub => 'अहवाल पाहण्यासाठी वेगळा फिल्टर निवडून पहा';

  @override
  String get reports_stat_pending => 'प्रलंबित';

  @override
  String get reports_stat_verified => 'सत्यापित';

  @override
  String get reports_stat_dismissed => 'नाकारलेले';

  @override
  String get time_just_now => 'आत्ताच';

  @override
  String time_minutes_ago(Object minutes) {
    return '$minutes मिनिटांपूर्वी';
  }

  @override
  String time_hours_ago(Object hours) {
    return '$hours तासांपूर्वी';
  }

  @override
  String time_days_ago(Object days) {
    return '$days दिवसांपूर्वी';
  }

  @override
  String time_on_date(Object day, Object month, Object year) {
    return '$day/$month/$year';
  }

  @override
  String get report_details_title => 'अहवाल तपशील';

  @override
  String get report_menu_edit => 'अहवाल संपादित करा';

  @override
  String get report_menu_delete => 'अहवाल हटवा';

  @override
  String report_reported_on(Object date) {
    return '$date रोजी रिपोर्ट केले';
  }

  @override
  String get report_section_description => 'वर्णन';

  @override
  String get report_section_location => 'स्थान';

  @override
  String report_section_media(Object count) {
    return 'मीडिया ($count)';
  }

  @override
  String get report_section_reputation => 'रिपोर्ट करणाऱ्याची प्रतिष्ठा';

  @override
  String get report_media_view_all => 'सर्व पहा';

  @override
  String get report_lat_label => 'अक्षांश:';

  @override
  String get report_lng_label => 'रेखांश:';

  @override
  String get report_action_edit => 'अहवाल संपादित करा';

  @override
  String get report_action_delete => 'अहवाल हटवा';

  @override
  String get report_delete_title => 'अहवाल हटवा';

  @override
  String report_delete_confirm(Object title) {
    return 'तुम्हाला \"$title\" हटवायचा आहे का? ही कृती उलटवता येणार नाही.';
  }

  @override
  String get report_deleted_success => 'अहवाल यशस्वीपणे हटवला';

  @override
  String report_delete_failed(Object error) {
    return 'अहवाल हटवण्यात अयशस्वी: $error';
  }

  @override
  String get report_edit_coming => 'संपादन सुविधा लवकरच येत आहे!';

  @override
  String get report_media_coming => 'मीडिया दर्शक लवकरच येत आहे!';

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
