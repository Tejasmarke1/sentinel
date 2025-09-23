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
  String get language_select_subtitle => 'Sentinel के लिए अपनी पसंदीदा भाषा चुनें';

  @override
  String get language_section_primary => 'मुख्य भाषाएँ';

  @override
  String get language_section_west => 'पश्चिमी तट की भाषाएँ';

  @override
  String get language_section_east => 'पूर्वी तट की भाषाएँ';

  @override
  String get language_section_islands => 'द्वीप क्षेत्रों की भाषाएँ';

  @override
  String language_selected_label(Object language) {
    return 'चयनित: $language';
  }

  @override
  String language_changed_snackbar(Object language) {
    return 'भाषा $language में बदल गई';
  }

  @override
  String get language_confirm_button => 'भाषा की पुष्टि करें';

  @override
  String get login_welcome_to => 'आपका स्वागत है';

  @override
  String get login_title_caps => 'SENTINEL';

  @override
  String get login_tagline => 'समुद्र खतरों के अलर्ट के लिए आपका सुरक्षा साथी';

  @override
  String get login_enter_phone => 'अपना मोबाइल नंबर दर्ज करें';

  @override
  String get login_phone_help => 'हम आपको एसएमएस द्वारा एक सत्यापन कोड भेजेंगे';

  @override
  String get login_send_otp => 'ओटीपी भेजें';

  @override
  String get login_terms_prefix => 'जारी रखने पर, आप हमारी शर्तों से सहमत हैं';

  @override
  String get login_terms => 'सेवा की शर्तें';

  @override
  String get login_and => ' और ';

  @override
  String get login_privacy => 'गोपनीयता नीति';

  @override
  String get login_error_enter_phone => 'कृपया अपना मोबाइल नंबर दर्ज करें';

  @override
  String get login_error_valid_phone => 'कृपया एक मान्य मोबाइल नंबर दर्ज करें';

  @override
  String get otp_title => 'सत्यापन कोड दर्ज करें';

  @override
  String otp_sent_to(Object phone) {
    return 'हमने 6-अंकों का कोड भेजा है\n$phone';
  }

  @override
  String get otp_hint => '000000';

  @override
  String get otp_verify_continue => 'सत्यापित करें और जारी रखें';

  @override
  String get otp_error_incomplete => 'कृपया पूरा 6-अंकों का कोड दर्ज करें';

  @override
  String otp_resend_in(Object seconds) {
    return '$seconds सेकंड में पुनः भेजें';
  }

  @override
  String get otp_resend_cta => 'कोड नहीं मिला? पुनः भेजें';

  @override
  String get otp_request_first => 'कृपया पहले कोड का अनुरोध करें।';

  @override
  String get otp_invalid_code => 'अमान्य कोड';

  @override
  String get verification_failed => 'सत्यापन विफल';

  @override
  String get phone_country_code => '+91';

  @override
  String get phone_hint_number => '98765 43210';

  @override
  String get reports_title => 'मेरी रिपोर्ट्स';

  @override
  String get reports_subtitle => 'आपकी जमा की गई खतरे की रिपोर्ट्स को ट्रैक करें';

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
  String get reports_empty_all => 'अभी तक कोई रिपोर्ट नहीं';

  @override
  String reports_empty_filtered(Object status) {
    return 'कोई $status रिपोर्ट नहीं';
  }

  @override
  String get reports_empty_all_sub => 'हमारे समुद्रों को सुरक्षित रखने के लिए खतरे की रिपोर्ट करना शुरू करें';

  @override
  String get reports_empty_filtered_sub => 'रिपोर्ट देखने के लिए कोई दूसरा फ़िल्टर चुनें';

  @override
  String get reports_stat_pending => 'लंबित';

  @override
  String get reports_stat_verified => 'सत्यापित';

  @override
  String get reports_stat_dismissed => 'खारिज';

  @override
  String get time_just_now => 'अभी-अभी';

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
  String get report_menu_edit => 'रिपोर्ट संपादित करें';

  @override
  String get report_menu_delete => 'रिपोर्ट हटाएँ';

  @override
  String get report_delete_title => 'रिपोर्ट हटाएँ';

  @override
  String report_delete_confirm(Object title) {
    return 'क्या आप वाकई \"$title\" रिपोर्ट हटाना चाहते हैं? यह क्रिया वापस नहीं ली जा सकती।';
  }

  @override
  String get report_deleted_success => 'रिपोर्ट सफलतापूर्वक हटाई गई';

  @override
  String report_delete_failed(Object error) {
    return 'रिपोर्ट हटाने में विफल: $error';
  }

  @override
  String get report_edit_coming => 'संपादन सुविधा जल्द ही आ रही है!';

  @override
  String get report_media_coming => 'मीडिया व्यूअर जल्द ही आ रहा है!';

  @override
  String get report_section_description => 'विवरण';

  @override
  String get report_section_location => 'स्थान';

  @override
  String report_section_media(Object count) {
    return 'मीडिया ($count)';
  }

  @override
  String get report_section_reputation => 'रिपोर्टर की प्रतिष्ठा';

  @override
  String get report_media_view_all => 'सभी देखें';

  @override
  String get report_lat_label => 'अक्षांश:';

  @override
  String get report_lng_label => 'देशांतर:';

  @override
  String get report_action_edit => 'रिपोर्ट संपादित करें';

  @override
  String get report_action_delete => 'हटाएँ';

  @override
  String get report_details_title => 'रिपोर्ट विवरण';

  @override
  String get report_id_label => 'रिपोर्ट आईडी';

  @override
  String report_attachments_label(Object count) {
    return 'संलग्नक ($count)';
  }

  @override
  String get report_media_files => 'मीडिया फ़ाइलें';

  @override
  String report_media_files_attached(Object count) {
    return 'इस रिपोर्ट में $count फ़ाइल(ें) संलग्न की गई हैं';
  }

  @override
  String get report_media_view => 'देखें';

  @override
  String get nav_home => 'होम';

  @override
  String get nav_alerts => 'अलर्ट्स';

  @override
  String get nav_reports => 'रिपोर्ट्स';

  @override
  String get nav_profile => 'प्रोफ़ाइल';

  @override
  String get onboard_complete_your => 'पूरा करें अपना';

  @override
  String get onboard_profile_setup => 'प्रोफ़ाइल सेटअप';

  @override
  String get onboard_header_subtitle => 'हम आपके अनुभव को व्यक्तिगत बनाने और आपको सुरक्षित रखने में मदद करेंगे';

  @override
  String get onboard_full_name_label => 'पूरा नाम';

  @override
  String get onboard_full_name_hint => 'अपना पूरा नाम दर्ज करें';

  @override
  String get onboard_full_name_error => 'कृपया अपना नाम दर्ज करें';

  @override
  String get onboard_email_label => 'ईमेल पता';

  @override
  String get onboard_email_hint => 'अपना ईमेल पता दर्ज करें';

  @override
  String get onboard_email_error_empty => 'कृपया अपना ईमेल दर्ज करें';

  @override
  String get onboard_email_error_invalid => 'कृपया एक मान्य ईमेल दर्ज करें';

  @override
  String get onboard_trust_title => 'विश्वास स्कोर प्रणाली';

  @override
  String get onboard_trust_desc => 'आपकी रिपोर्ट्स का मूल्यांकन गुणवत्ता, स्थान की सटीकता और रिपोर्टिंग इतिहास के आधार पर किया जाएगा। विस्तृत और सटीक रिपोर्ट देकर अपनी प्रतिष्ठा बनाएं।';

  @override
  String get onboard_continue => 'सेटअप पूरा करें';

  @override
  String get onboard_footer_secure => 'आपकी जानकारी सुरक्षित और एन्क्रिप्टेड है';

  @override
  String get dashboard_live => 'लाइव';

  @override
  String get dashboard_title => 'महासागर सुरक्षा डैशबोर्ड';

  @override
  String get dashboard_stat_active_alerts => 'सक्रिय अलर्ट्स';

  @override
  String get dashboard_stat_verified => 'सत्यापित';

  @override
  String get dashboard_stat_this_week => 'इस सप्ताह';

  @override
  String get dashboard_recent_reports => 'हाल की खतरे की रिपोर्ट्स';

  @override
  String get profile_title => 'प्रोफ़ाइल';

  @override
  String get profile_subtitle => 'अपना खाता और सेटिंग्स प्रबंधित करें';

  @override
  String get profile_user_not_logged_in => 'उपयोगकर्ता लॉग इन नहीं है।';

  @override
  String get profile_could_not_load_data => 'उपयोगकर्ता डेटा लोड नहीं हो सका।';

  @override
  String profile_something_wrong(Object error) {
    return 'कुछ गलत हुआ: $error';
  }

  @override
  String get profile_verified => 'सत्यापित';

  @override
  String profile_member_since(Object date) {
    return '$date से सदस्य';
  }

  @override
  String get profile_email => 'ईमेल';

  @override
  String get profile_phone => 'फ़ोन';

  @override
  String get profile_edit_profile => 'प्रोफ़ाइल संपादित करें';

  @override
  String get profile_statistics_title => 'सांख्यिकी और सारांश';

  @override
  String get profile_reports_submitted => 'जमा की गई रिपोर्ट्स';

  @override
  String get profile_verified_reports => 'सत्यापित रिपोर्ट्स';

  @override
  String get profile_pending_reports => 'लंबित रिपोर्ट्स';

  @override
  String get profile_rejected_reports => 'अस्वीकृत रिपोर्ट्स';

  @override
  String profile_could_not_load_stats(Object error) {
    return 'सांख्यिकी लोड नहीं हो सकी: $error';
  }

  @override
  String get profile_no_stats_available => 'कोई सांख्यिकी उपलब्ध नहीं।';

  @override
  String get profile_account_options => 'खाता विकल्प';

  @override
  String get profile_language_settings => 'भाषा सेटिंग्स';

  @override
  String get profile_language_settings_desc => 'अपनी पसंदीदा भाषा चुनें';

  @override
  String get profile_notification_settings => 'सूचना सेटिंग्स';

  @override
  String get profile_notification_settings_desc => 'अलर्ट्स और पुश सूचनाएँ प्रबंधित करें';

  @override
  String get profile_privacy_permissions => 'गोपनीयता और अनुमतियाँ';

  @override
  String get profile_privacy_permissions_desc => 'अपने डेटा और ऐप अनुमतियों को नियंत्रित करें';

  @override
  String get profile_help_support => 'सहायता और समर्थन';

  @override
  String get profile_help_support_desc => 'मदद प्राप्त करें और समर्थन से संपर्क करें';

  @override
  String get profile_help_coming_soon => 'सहायता और समर्थन जल्द ही आ रहे हैं!';

  @override
  String get profile_about_sentinel => 'Sentinel के बारे में';

  @override
  String get profile_about_sentinel_desc => 'ऐप संस्करण और जानकारी';

  @override
  String get profile_app_name => 'Sentinel';

  @override
  String get profile_app_version => '1.0.0';

  @override
  String get profile_app_description => 'क्राउडसोर्स्ड महासागर खतरे अलर्ट्स\n\nसमुदाय रिपोर्टिंग के माध्यम से हमारे महासागरों को सुरक्षित रखना।';

  @override
  String get profile_logout => 'लॉग आउट';

  @override
  String get profile_logout_desc => 'अपने खाते से साइन आउट करें';

  @override
  String get profile_logout_confirm => 'क्या आप वाकई Sentinel से लॉग आउट करना चाहते हैं?';

  @override
  String get profile_cancel => 'रद्द करें';

  @override
  String profile_logout_failed(Object error) {
    return 'लॉगआउट विफल: $error';
  }

  @override
  String get profile_edit_profile_title => 'प्रोफ़ाइल संपादित करें';

  @override
  String get profile_full_name_label => 'पूरा नाम';

  @override
  String get profile_full_name_hint => 'अपना पूरा नाम दर्ज करें';

  @override
  String get profile_full_name_error => 'कृपया अपना नाम दर्ज करें';

  @override
  String get profile_email_label => 'ईमेल पता';

  @override
  String get profile_email_hint => 'अपना ईमेल पता दर्ज करें';

  @override
  String get profile_email_error_empty => 'कृपया अपना ईमेल दर्ज करें';

  @override
  String get profile_email_error_invalid => 'कृपया एक मान्य ईमेल दर्ज करें';

  @override
  String get profile_phone_label => 'फ़ोन नंबर';

  @override
  String get profile_save_changes => 'परिवर्तन सहेजें';

  @override
  String get profile_user_not_found => 'त्रुटि: उपयोगकर्ता नहीं मिला।';

  @override
  String get profile_updated_success => 'प्रोफ़ाइल सफलतापूर्वक अपडेट हुई!';

  @override
  String profile_update_failed(Object error) {
    return 'प्रोफ़ाइल अपडेट विफल: $error';
  }

  @override
  String profile_language_update_failed(Object error) {
    return 'भाषा अपडेट विफल: $error';
  }

  @override
  String get profile_notification_title => 'सूचना सेटिंग्स';

  @override
  String get profile_general_notifications => 'सामान्य सूचनाएँ';

  @override
  String get profile_push_notifications => 'पुश सूचनाएँ';

  @override
  String get profile_push_notifications_desc => 'अपने डिवाइस पर सूचनाएँ प्राप्त करें';

  @override
  String get profile_email_notifications => 'ईमेल सूचनाएँ';

  @override
  String get profile_email_notifications_desc => 'ईमेल के माध्यम से सूचनाएँ प्राप्त करें';

  @override
  String get profile_alert_types => 'अलर्ट प्रकार';

  @override
  String get profile_critical_safety_alerts => 'महत्वपूर्ण सुरक्षा अलर्ट्स';

  @override
  String get profile_critical_safety_alerts_desc => 'तत्काल खतरे और आपातकालीन अलर्ट्स';

  @override
  String get profile_report_status_updates => 'रिपोर्ट स्थिति अपडेट्स';

  @override
  String get profile_report_status_updates_desc => 'आपकी जमा की गई रिपोर्ट्स पर अपडेट्स';

  @override
  String get profile_news_updates => 'समाचार और अपडेट्स';

  @override
  String get profile_news_updates_desc => 'महासागर सुरक्षा समाचार और ऐप अपडेट्स';

  @override
  String get profile_critical_alerts_info => 'आपकी सुरक्षा के लिए महत्वपूर्ण अलर्ट्स को अक्षम नहीं किया जा सकता।';

  @override
  String get profile_privacy_title => 'गोपनीयता और अनुमतियाँ';

  @override
  String get profile_location_data => 'स्थान और डेटा';

  @override
  String get profile_location_sharing => 'स्थान साझा करना';

  @override
  String get profile_location_sharing_desc => 'रिपोर्ट्स के लिए ऐप को आपका स्थान एक्सेस करने दें';

  @override
  String get profile_public_profile => 'सार्वजनिक प्रोफ़ाइल';

  @override
  String get profile_public_profile_desc => 'अपनी प्रोफ़ाइल अन्य उपयोगकर्ताओं को दिखाई दें';

  @override
  String get profile_app_analytics => 'ऐप विश्लेषण';

  @override
  String get profile_usage_analytics => 'उपयोग विश्लेषण';

  @override
  String get profile_usage_analytics_desc => 'उपयोग डेटा साझा करके ऐप को सुधारने में मदद करें';

  @override
  String get profile_crash_reporting => 'क्रैश रिपोर्टिंग';

  @override
  String get profile_crash_reporting_desc => 'डेवलपर्स को स्वचालित रूप से क्रैश रिपोर्ट भेजें';

  @override
  String get profile_view_privacy_policy => 'गोपनीयता नीति देखें';

  @override
  String get profile_opening_privacy_policy => 'गोपनीयता नीति खोल रहा है...';

  @override
  String get profile_export_my_data => 'मेरा डेटा निर्यात करें';

  @override
  String get profile_data_export_submitted => 'डेटा निर्यात अनुरोध जमा किया गया';

  @override
  String get profile_delete_my_account => 'मेरा खाता हटाएँ';

  @override
  String get profile_delete_account_title => 'खाता हटाएँ';

  @override
  String get profile_delete_account_confirm => 'यह क्रिया वापस नहीं की जा सकती। आपकी सभी रिपोर्ट्स और डेटा स्थायी रूप से हटाए जाएंगे। क्या आप जारी रखना चाहते हैं?';

  @override
  String get profile_delete_account_submitted => 'खाता हटाने का अनुरोध जमा किया गया';

  @override
  String get profile_no_name_provided => 'कोई नाम उपलब्ध नहीं';

  @override
  String get profile_no_email_provided => 'कोई ईमेल उपलब्ध नहीं';

  @override
  String get profile_no_phone_provided => 'कोई फ़ोन उपलब्ध नहीं';

  @override
  String get profile_default_location => 'पुणे, महाराष्ट्र, भारत';

  @override
  String get profile_default_language => 'hi';

  @override
  String get profile_months => 'जन,फ़र,मार्च,अप्रैल,मई,जून,जुलाई,अगस्त,सितं,अक्टू,नवं,दिसं';

  @override
  String get create_report_title => 'खतरे की रिपोर्ट बनाएँ';

  @override
  String get create_report_subtitle => 'हमारे महासागरों को सुरक्षित रखने में मदद करें';

  @override
  String get create_report_description_label => 'विवरण *';

  @override
  String get create_report_description_hint => 'आपने जो महासागर खतरा देखा उसका विवरण दें...';

  @override
  String get create_report_description_error_empty => 'कृपया एक विवरण प्रदान करें';

  @override
  String get create_report_description_error_min_length => 'विवरण कम से कम 10 अक्षरों का होना चाहिए';

  @override
  String get create_report_location_label => 'स्थान *';

  @override
  String get create_report_location_hint => 'स्थान दर्ज करें या नीचे दिए गए बटन का उपयोग करें';

  @override
  String get create_report_location_error => 'कृपया एक स्थान जोड़ें';

  @override
  String get create_report_current_location => 'वर्तमान स्थान';

  @override
  String get create_report_getting_location => 'प्राप्त कर रहा है...';

  @override
  String get create_report_pin_on_map => 'मानचित्र पर पिन करें';

  @override
  String get create_report_location_selected => 'स्थान सफलतापूर्वक चुना गया';

  @override
  String create_report_coordinates(Object lat, Object lng) {
    return 'निर्देशांक: $lat, $lng';
  }

  @override
  String get create_report_attach_media => 'मीडिया संलग्न करें';

  @override
  String get create_report_attach_photos_videos => 'फ़ोटो/वीडियो संलग्न करें';

  @override
  String get create_report_submit => 'रिपोर्ट जमा करें';

  @override
  String get create_report_submitting => 'जमा कर रहा है...';

  @override
  String create_report_media_attached_success(Object count) {
    return '$count फ़ाइल(ें) सफलतापूर्वक संलग्न की गईं';
  }

  @override
  String create_report_media_attach_failed(Object error) {
    return 'मीडिया संलग्न करने में विफल: $error';
  }

  @override
  String get create_report_location_captured_success => 'वर्तमान स्थान सफलतापूर्वक प्राप्त हुआ!';

  @override
  String get create_report_location_permission_denied => 'उपयोगकर्ता ने स्थान की अनुमति अस्वीकार कर दी। कृपया इस सुविधा का उपयोग करने के लिए स्थान एक्सेस की अनुमति दें।';

  @override
  String get create_report_location_permission_denied_forever => 'स्थान अनुमतियाँ स्थायी रूप से अस्वीकार की गईं। कृपया अपने डिवाइस सेटिंग्स में स्थान एक्सेस सक्षम करें।';

  @override
  String get create_report_location_services_disabled => 'स्थान सेवाएँ अक्षम हैं। कृपया अपने डिवाइस सेटिंग्स में उन्हें सक्षम करें।';

  @override
  String get create_report_location_unable_determine => 'स्थान निर्धारित नहीं कर सका। कृपया पुनः प्रयास करें या मानचित्र पर मैन्युअल रूप से स्थान चुनें।';

  @override
  String get create_report_location_current => 'वर्तमान स्थान';

  @override
  String create_report_location_coordinates(Object lat, Object lng) {
    return 'स्थान: $lat, $lng';
  }

  @override
  String get create_report_submit_location_required => 'रिपोर्ट के लिए कृपया एक स्थान जोड़ें';

  @override
  String get create_report_submit_login_required => 'रिपोर्ट जमा करने के लिए कृपया लॉग इन करें';

  @override
  String create_report_submit_failed(Object error) {
    return 'रिपोर्ट जमा करने में विफल: $error';
  }

  @override
  String get create_report_submit_retry => 'पुनः प्रयास करें';

  @override
  String get create_report_success_title => 'रिपोर्ट सफलतापूर्वक जमा हुई!';

  @override
  String get create_report_success_auto_approved => 'रिपोर्ट स्वतः अनुमोदित और प्रकाशित हुई!';

  @override
  String create_report_success_auto_approved_sub(Object score) {
    return 'उच्च विश्वास स्कोर ($score%)';
  }

  @override
  String get create_report_success_review => 'रिपोर्ट समीक्षा के लिए जमा हुई';

  @override
  String get create_report_success_review_normal => 'सामान्य प्रक्रिया अपेक्षित';

  @override
  String get create_report_success_review_verification => 'अतिरिक्त सत्यापन आवश्यक हो सकता है';

  @override
  String get create_report_success_manual_review => 'रिपोर्ट मैन्युअल समीक्षा के लिए जमा हुई';

  @override
  String get create_report_success_manual_review_sub => 'विस्तृत सत्यापन आवश्यक';

  @override
  String create_report_success_title_label(Object title) {
    return 'शीर्षक: $title';
  }

  @override
  String get create_report_unknown_location => 'अज्ञात स्थान';

  @override
  String get create_report_selected_location => 'चयनित स्थान';
}
