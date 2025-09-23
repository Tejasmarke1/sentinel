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
  String get language_section_west => 'पश्चिम किनारपट्टीवरील भाषा';

  @override
  String get language_section_east => 'पूर्व किनारपट्टीवरील भाषा';

  @override
  String get language_section_islands => 'बेट प्रदेशांतील भाषा';

  @override
  String language_selected_label(Object language) {
    return 'निवडलेली: $language';
  }

  @override
  String language_changed_snackbar(Object language) {
    return 'भाषा $language मध्ये बदलली आहे';
  }

  @override
  String get language_confirm_button => 'भाषेची पुष्टी करा';

  @override
  String get login_welcome_to => 'मध्ये आपले स्वागत आहे';

  @override
  String get login_title_caps => 'सेंटिनेल';

  @override
  String get login_tagline => 'सागरी धोक्याच्या सूचनांसाठी तुमचा सुरक्षा सोबती';

  @override
  String get login_enter_phone => 'तुमचा मोबाईल नंबर टाका';

  @override
  String get login_phone_help => 'आम्ही तुम्हाला SMS द्वारे पडताळणी कोड पाठवू';

  @override
  String get login_send_otp => 'ओटीपी (OTP) पाठवा';

  @override
  String get login_terms_prefix => 'पुढे चालू ठेवून, तुम्ही आमच्या';

  @override
  String get login_terms => 'सेवा अटींना';

  @override
  String get login_and => ' आणि ';

  @override
  String get login_privacy => 'गोपनीयता धोरणाला सहमत आहात';

  @override
  String get login_error_enter_phone => 'कृपया तुमचा मोबाईल नंबर टाका';

  @override
  String get login_error_valid_phone => 'कृपया वैध मोबाईल नंबर टाका';

  @override
  String get otp_title => 'पडताळणी कोड टाका';

  @override
  String otp_sent_to(Object phone) {
    return 'आम्ही $phone वर ६-अंकी कोड पाठवला आहे';
  }

  @override
  String get otp_hint => '००००००';

  @override
  String get otp_verify_continue => 'पडताळा आणि पुढे जा';

  @override
  String get otp_error_incomplete => 'कृपया पूर्ण ६-अंकी कोड टाका';

  @override
  String otp_resend_in(Object seconds) {
    return '$seconds सेकंदात कोड पुन्हा पाठवा';
  }

  @override
  String get otp_resend_cta => 'कोड मिळाला नाही? पुन्हा पाठवा';

  @override
  String get otp_request_first => 'कृपया आधी कोडची विनंती करा.';

  @override
  String get otp_invalid_code => 'अवैध कोड';

  @override
  String get verification_failed => 'पडताळणी अयशस्वी झाली';

  @override
  String get phone_country_code => '+९१';

  @override
  String get phone_hint_number => '९८७६५ ४३२१०';

  @override
  String get reports_title => 'माझे अहवाल';

  @override
  String get reports_subtitle => 'तुमच्या सादर केलेल्या धोक्याच्या अहवालांचा मागोवा घ्या';

  @override
  String reports_count_label(Object count) {
    return '$count अहवाल';
  }

  @override
  String get reports_filter_label => 'स्थितीनुसार फिल्टर करा';

  @override
  String get status_pending => 'प्रलंबित';

  @override
  String get status_verified => 'पडताळलेले';

  @override
  String get status_dismissed => 'नाकारलेले';

  @override
  String get status_under_review => 'पुनरावलोकनाखाली';

  @override
  String get reports_loading => 'तुमचे अहवाल लोड होत आहेत...';

  @override
  String get reports_error_title => 'अहवाल लोड करण्यात त्रुटी';

  @override
  String get reports_empty_all => 'अद्याप कोणतेही अहवाल नाहीत';

  @override
  String reports_empty_filtered(Object status) {
    return 'कोणतेही $status अहवाल नाहीत';
  }

  @override
  String get reports_empty_all_sub => 'आपले जलक्षेत्र सुरक्षित ठेवण्यासाठी सागरी धोक्यांची तक्रार करण्यास सुरुवात करा';

  @override
  String get reports_empty_filtered_sub => 'अहवाल पाहण्यासाठी वेगळा फिल्टर निवडून प्रयत्न करा';

  @override
  String get reports_stat_pending => 'प्रलंबित';

  @override
  String get reports_stat_verified => 'पडताळलेले';

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
  String get report_menu_edit => 'अहवाल संपादित करा';

  @override
  String get report_menu_delete => 'अहवाल हटवा';

  @override
  String get report_delete_title => 'अहवाल हटवा';

  @override
  String report_delete_confirm(Object title) {
    return 'तुम्हाला खात्री आहे की तुम्हाला \"$title\" हटवायचा आहे? ही क्रिया पूर्ववत केली जाऊ शकत नाही.';
  }

  @override
  String get report_deleted_success => 'अहवाल यशस्वीरित्या हटवला';

  @override
  String report_delete_failed(Object error) {
    return 'अहवाल हटवण्यात अयशस्वी: $error';
  }

  @override
  String get report_edit_coming => 'संपादन सुविधा लवकरच येत आहे!';

  @override
  String get report_media_coming => 'मीडिया व्ह्यूअर लवकरच येत आहे!';

  @override
  String get report_section_description => 'वर्णन';

  @override
  String get report_section_location => 'स्थान';

  @override
  String report_section_media(Object count) {
    return 'मीडिया ($count)';
  }

  @override
  String get report_section_reputation => 'वार्ताहराची प्रतिष्ठा';

  @override
  String get report_media_view_all => 'सर्व पहा';

  @override
  String get report_lat_label => 'अक्षांश:';

  @override
  String get report_lng_label => 'रेखांश:';

  @override
  String get report_action_edit => 'अहवाल संपादित करा';

  @override
  String get report_action_delete => 'हटवा';

  @override
  String get report_details_title => 'अहवाल तपशील';

  @override
  String get report_id_label => 'अहवाल आयडी';

  @override
  String report_attachments_label(Object count) {
    return 'संलग्नक ($count)';
  }

  @override
  String get report_media_files => 'मीडिया फाइल्स';

  @override
  String report_media_files_attached(Object count) {
    return 'या अहवालासोबत $count फाइल(स्) जोडल्या आहेत';
  }

  @override
  String get report_media_view => 'पहा';

  @override
  String get nav_home => 'मुख्यपृष्ठ';

  @override
  String get nav_alerts => 'सूचना';

  @override
  String get nav_reports => 'अहवाल';

  @override
  String get nav_profile => 'प्रोफाइल';

  @override
  String get onboard_complete_your => 'तुमचे';

  @override
  String get onboard_profile_setup => 'प्रोफाइल सेटअप पूर्ण करा';

  @override
  String get onboard_header_subtitle => 'तुमचा अनुभव वैयक्तिकृत करण्यासाठी आणि तुम्हाला सुरक्षित ठेवण्यासाठी आम्हाला मदत करा';

  @override
  String get onboard_full_name_label => 'पूर्ण नाव';

  @override
  String get onboard_full_name_hint => 'तुमचे पूर्ण नाव टाका';

  @override
  String get onboard_full_name_error => 'कृपया तुमचे नाव टाका';

  @override
  String get onboard_email_label => 'ई-मेल पत्ता';

  @override
  String get onboard_email_hint => 'तुमचा ई-मेल पत्ता टाका';

  @override
  String get onboard_email_error_empty => 'कृपया तुमचा ई-मेल टाका';

  @override
  String get onboard_email_error_invalid => 'कृपया वैध ई-मेल पत्ता टाका';

  @override
  String get onboard_trust_title => 'विश्वासार्हता गुण प्रणाली';

  @override
  String get onboard_trust_desc => 'तुमच्या अहवालांचे मूल्यांकन अहवाल गुणवत्ता, स्थानाची अचूकता आणि अहवाल इतिहासावर आधारित असेल. तपशीलवार, अचूक अहवाल सादर करून तुमची प्रतिष्ठा वाढवा.';

  @override
  String get onboard_continue => 'सेटअप पूर्ण करा';

  @override
  String get onboard_footer_secure => 'तुमची माहिती सुरक्षित आणि एनक्रिप्टेड आहे';

  @override
  String get dashboard_live => 'थेट';

  @override
  String get dashboard_title => 'सागरी सुरक्षा डॅशबोर्ड';

  @override
  String get dashboard_stat_active_alerts => 'सक्रिय सूचना';

  @override
  String get dashboard_stat_verified => 'पडताळलेले';

  @override
  String get dashboard_stat_this_week => 'या आठवड्यात';

  @override
  String get dashboard_recent_reports => 'अलीकडील धोक्याचे अहवाल';

  @override
  String get profile_title => 'प्रोफाइल';

  @override
  String get profile_subtitle => 'तुमचे खाते आणि सेटिंग्ज व्यवस्थापित करा';

  @override
  String get profile_user_not_logged_in => 'वापरकर्ता लॉग इन नाही.';

  @override
  String get profile_could_not_load_data => 'वापरकर्ता डेटा लोड होऊ शकला नाही.';

  @override
  String profile_something_wrong(Object error) {
    return 'काहीतरी चूक झाली: $error';
  }

  @override
  String get profile_verified => 'पडताळलेले';

  @override
  String profile_member_since(Object date) {
    return '$date पासून सदस्य';
  }

  @override
  String get profile_email => 'ई-मेल';

  @override
  String get profile_phone => 'फोन';

  @override
  String get profile_edit_profile => 'प्रोफाइल संपादित करा';

  @override
  String get profile_statistics_title => 'आकडेवारी आणि सारांश';

  @override
  String get profile_reports_submitted => 'सादर केलेले अहवाल';

  @override
  String get profile_verified_reports => 'पडताळलेले अहवाल';

  @override
  String get profile_pending_reports => 'प्रलंबित अहवाल';

  @override
  String get profile_rejected_reports => 'नाकारलेले अहवाल';

  @override
  String profile_could_not_load_stats(Object error) {
    return 'आकडेवारी लोड होऊ शकली नाही: $error';
  }

  @override
  String get profile_no_stats_available => 'कोणतीही आकडेवारी उपलब्ध नाही.';

  @override
  String get profile_account_options => 'खाते पर्याय';

  @override
  String get profile_language_settings => 'भाषा सेटिंग्ज';

  @override
  String get profile_language_settings_desc => 'तुमची पसंतीची भाषा निवडा';

  @override
  String get profile_notification_settings => 'सूचना सेटिंग्ज';

  @override
  String get profile_notification_settings_desc => 'सूचना आणि पुश नोटिफिकेशन्स व्यवस्थापित करा';

  @override
  String get profile_privacy_permissions => 'गोपनीयता आणि परवानग्या';

  @override
  String get profile_privacy_permissions_desc => 'तुमचा डेटा आणि ॲप परवानग्या नियंत्रित करा';

  @override
  String get profile_help_support => 'मदत आणि समर्थन';

  @override
  String get profile_help_support_desc => 'मदत मिळवा आणि समर्थनाशी संपर्क साधा';

  @override
  String get profile_help_coming_soon => 'मदत आणि समर्थन लवकरच येत आहे!';

  @override
  String get profile_about_sentinel => 'सेंटिनेल बद्दल';

  @override
  String get profile_about_sentinel_desc => 'ॲप आवृत्ती आणि माहिती';

  @override
  String get profile_app_name => 'सेंटिनेल';

  @override
  String get profile_app_version => '१.०.०';

  @override
  String get profile_app_description => 'लोकसहभागातून सागरी धोक्याच्या सूचना\n\nसामुदायिक अहवालाद्वारे आपले महासागर सुरक्षित ठेवण्यास मदत.';

  @override
  String get profile_logout => 'लॉगआउट';

  @override
  String get profile_logout_desc => 'तुमच्या खात्यातून साइन आउट करा';

  @override
  String get profile_logout_confirm => 'तुम्हाला सेंटिनेलमधून लॉगआउट करायचे आहे याची खात्री आहे का?';

  @override
  String get profile_cancel => 'रद्द करा';

  @override
  String profile_logout_failed(Object error) {
    return 'लॉगआउट अयशस्वी: $error';
  }

  @override
  String get profile_edit_profile_title => 'प्रोफाइल संपादित करा';

  @override
  String get profile_full_name_label => 'पूर्ण नाव';

  @override
  String get profile_full_name_hint => 'तुमचे पूर्ण नाव टाका';

  @override
  String get profile_full_name_error => 'कृपया तुमचे नाव टाका';

  @override
  String get profile_email_label => 'ई-मेल पत्ता';

  @override
  String get profile_email_hint => 'तुमचा ई-मेल पत्ता टाका';

  @override
  String get profile_email_error_empty => 'कृपया तुमचा ई-मेल टाका';

  @override
  String get profile_email_error_invalid => 'कृपया वैध ई-मेल पत्ता टाका';

  @override
  String get profile_phone_label => 'फोन नंबर';

  @override
  String get profile_save_changes => 'बदल जतन करा';

  @override
  String get profile_user_not_found => 'त्रुटी: वापरकर्ता सापडला नाही.';

  @override
  String get profile_updated_success => 'प्रोफाइल यशस्वीरित्या अद्यतनित झाले!';

  @override
  String profile_update_failed(Object error) {
    return 'प्रोफाइल अद्यतनित करण्यात अयशस्वी: $error';
  }

  @override
  String profile_language_update_failed(Object error) {
    return 'भाषा अद्यतनित करण्यात अयशस्वी: $error';
  }

  @override
  String get profile_notification_title => 'सूचना सेटिंग्ज';

  @override
  String get profile_general_notifications => 'सर्वसाधारण सूचना';

  @override
  String get profile_push_notifications => 'पुश नोटिफिकेशन्स';

  @override
  String get profile_push_notifications_desc => 'तुमच्या डिव्हाइसवर सूचना मिळवा';

  @override
  String get profile_email_notifications => 'ई-मेल सूचना';

  @override
  String get profile_email_notifications_desc => 'ई-मेलद्वारे सूचना मिळवा';

  @override
  String get profile_alert_types => 'सूचनांचे प्रकार';

  @override
  String get profile_critical_safety_alerts => 'गंभीर सुरक्षा सूचना';

  @override
  String get profile_critical_safety_alerts_desc => 'तात्काळ धोका आणि आपत्कालीन सूचना';

  @override
  String get profile_report_status_updates => 'अहवाल स्थिती अद्यतने';

  @override
  String get profile_report_status_updates_desc => 'तुमच्या सादर केलेल्या अहवालांवरील अद्यतने';

  @override
  String get profile_news_updates => 'बातम्या आणि अद्यतने';

  @override
  String get profile_news_updates_desc => 'सागरी सुरक्षा बातम्या आणि ॲप अद्यतने';

  @override
  String get profile_critical_alerts_info => 'तुमच्या सुरक्षेसाठी गंभीर सुरक्षा सूचना बंद केल्या जाऊ शकत नाहीत.';

  @override
  String get profile_privacy_title => 'गोपनीयता आणि परवानग्या';

  @override
  String get profile_location_data => 'स्थान आणि डेटा';

  @override
  String get profile_location_sharing => 'स्थान शेअरिंग';

  @override
  String get profile_location_sharing_desc => 'अहवालांसाठी ॲपला तुमचे स्थान वापरण्याची परवानगी द्या';

  @override
  String get profile_public_profile => 'सार्वजनिक प्रोफाइल';

  @override
  String get profile_public_profile_desc => 'तुमचे प्रोफाइल इतर वापरकर्त्यांना दिसू द्या';

  @override
  String get profile_app_analytics => 'ॲप विश्लेषण';

  @override
  String get profile_usage_analytics => 'वापर विश्लेषण';

  @override
  String get profile_usage_analytics_desc => 'वापराचा डेटा शेअर करून ॲप सुधारण्यास मदत करा';

  @override
  String get profile_crash_reporting => 'क्रॅश रिपोर्टिंग';

  @override
  String get profile_crash_reporting_desc => 'डेव्हलपर्सना आपोआप क्रॅश अहवाल पाठवा';

  @override
  String get profile_view_privacy_policy => 'गोपनीयता धोरण पहा';

  @override
  String get profile_opening_privacy_policy => 'गोपनीयता धोरण उघडत आहे...';

  @override
  String get profile_export_my_data => 'माझा डेटा निर्यात करा';

  @override
  String get profile_data_export_submitted => 'डेटा निर्यात विनंती सादर केली आहे';

  @override
  String get profile_delete_my_account => 'माझे खाते हटवा';

  @override
  String get profile_delete_account_title => 'खाते हटवा';

  @override
  String get profile_delete_account_confirm => 'ही क्रिया पूर्ववत केली जाऊ शकत नाही. तुमचे सर्व अहवाल आणि डेटा कायमचा हटवला जाईल. तुम्हाला पुढे जायचे आहे याची खात्री आहे का?';

  @override
  String get profile_delete_account_submitted => 'खाते हटवण्याची विनंती सादर केली आहे';

  @override
  String get profile_no_name_provided => 'नाव दिलेले नाही';

  @override
  String get profile_no_email_provided => 'ई-मेल दिलेला नाही';

  @override
  String get profile_no_phone_provided => 'फोन नंबर दिलेला नाही';

  @override
  String get profile_default_location => 'पुणे, महाराष्ट्र, भारत';

  @override
  String get profile_default_language => 'mr';

  @override
  String get profile_months => 'जाने,फेब्रु,मार्च,एप्रि,मे,जून,जुलै,ऑग,सप्टें,ऑक्टो,नोव्हें,डिसें';

  @override
  String get create_report_title => 'धोक्याचा अहवाल तयार करा';

  @override
  String get create_report_subtitle => 'आपले महासागर सुरक्षित ठेवण्यास मदत करा';

  @override
  String get create_report_description_label => 'वर्णन *';

  @override
  String get create_report_description_hint => 'तुम्ही पाहिलेल्या सागरी धोक्याचे वर्णन करा...';

  @override
  String get create_report_description_error_empty => 'कृपया वर्णन द्या';

  @override
  String get create_report_description_error_min_length => 'वर्णन किमान १० अक्षरांचे असणे आवश्यक आहे';

  @override
  String get create_report_location_label => 'स्थान *';

  @override
  String get create_report_location_hint => 'स्थान टाका किंवा खालील बटणे वापरा';

  @override
  String get create_report_location_error => 'कृपया स्थान जोडा';

  @override
  String get create_report_current_location => 'सध्याचे स्थान';

  @override
  String get create_report_getting_location => 'मिळवत आहे...';

  @override
  String get create_report_pin_on_map => 'नकाशावर पिन करा';

  @override
  String get create_report_location_selected => 'स्थान यशस्वीरित्या निवडले';

  @override
  String create_report_coordinates(Object lat, Object lng) {
    return 'निर्देशांक: $lat, $lng';
  }

  @override
  String get create_report_attach_media => 'मीडिया जोडा';

  @override
  String get create_report_attach_photos_videos => 'फोटो/व्हिडिओ जोडा';

  @override
  String get create_report_submit => 'अहवाल सादर करा';

  @override
  String get create_report_submitting => 'सादर करत आहे...';

  @override
  String create_report_media_attached_success(Object count) {
    return '$count फाइल(स्) यशस्वीरित्या जोडल्या';
  }

  @override
  String create_report_media_attach_failed(Object error) {
    return 'मीडिया जोडण्यात अयशस्वी: $error';
  }

  @override
  String get create_report_location_captured_success => 'सध्याचे स्थान यशस्वीरित्या घेतले!';

  @override
  String get create_report_location_permission_denied => 'वापरकर्त्याने स्थान परवानगी नाकारली. हे वैशिष्ट्य वापरण्यासाठी कृपया स्थान प्रवेश मंजूर करा.';

  @override
  String get create_report_location_permission_denied_forever => 'स्थान परवानग्या कायमच्या नाकारल्या आहेत. कृपया तुमच्या डिव्हाइस सेटिंग्जमध्ये स्थान प्रवेश सक्षम करा.';

  @override
  String get create_report_location_services_disabled => 'स्थान सेवा अक्षम आहेत. कृपया तुमच्या डिव्हाइस सेटिंग्जमध्ये स्थान सेवा सक्षम करा.';

  @override
  String get create_report_location_unable_determine => 'स्थान निश्चित करणे शक्य नाही. कृपया पुन्हा प्रयत्न करा किंवा नकाशावर व्यक्तिचलितपणे स्थान निवडा.';

  @override
  String get create_report_location_current => 'सध्याचे स्थान';

  @override
  String create_report_location_coordinates(Object lat, Object lng) {
    return 'स्थान: $lat, $lng';
  }

  @override
  String get create_report_submit_location_required => 'कृपया अहवालासाठी एक स्थान जोडा';

  @override
  String get create_report_submit_login_required => 'अहवाल सादर करण्यासाठी कृपया लॉग इन करा';

  @override
  String create_report_submit_failed(Object error) {
    return 'अहवाल सादर करण्यात अयशस्वी: $error';
  }

  @override
  String get create_report_submit_retry => 'पुन्हा प्रयत्न करा';

  @override
  String get create_report_success_title => 'अहवाल यशस्वीरित्या सादर झाला!';

  @override
  String get create_report_success_auto_approved => 'अहवाल आपोआप मंजूर आणि प्रकाशित झाला!';

  @override
  String create_report_success_auto_approved_sub(Object score) {
    return 'उच्च विश्वासार्हता गुण ($score%)';
  }

  @override
  String get create_report_success_review => 'अहवाल पुनरावलोकनासाठी सादर केला आहे';

  @override
  String get create_report_success_review_normal => 'सामान्य प्रक्रियेची अपेक्षा आहे';

  @override
  String get create_report_success_review_verification => 'अतिरिक्त पडताळणी आवश्यक असू शकते';

  @override
  String get create_report_success_manual_review => 'अहवाल व्यक्तिचलित पुनरावलोकनासाठी सादर केला आहे';

  @override
  String get create_report_success_manual_review_sub => 'तपशीलवार पडताळणी आवश्यक';

  @override
  String create_report_success_title_label(Object title) {
    return 'शीर्षक: $title';
  }

  @override
  String get create_report_unknown_location => 'अज्ञात स्थान';

  @override
  String get create_report_selected_location => 'निवडलेले स्थान';
}
