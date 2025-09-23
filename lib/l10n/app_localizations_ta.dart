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
  String get common_cancel => 'ரத்துசெய்';

  @override
  String get common_delete => 'நீக்கு';

  @override
  String get common_edit => 'திருத்து';

  @override
  String get common_retry => 'மீண்டும் முயலவும்';

  @override
  String get common_default => 'இயல்புநிலை';

  @override
  String get language_select_title => 'மொழியைத் தேர்ந்தெடுக்கவும்';

  @override
  String get language_select_subtitle => 'சென்டினலுக்கான உங்களுக்கு விருப்பமான மொழியைத் தேர்ந்தெடுக்கவும்';

  @override
  String get language_section_primary => 'முதன்மை மொழிகள்';

  @override
  String get language_section_west => 'மேற்குக் கடற்கரை மொழிகள்';

  @override
  String get language_section_east => 'கிழக்கு கடற்கரை மொழிகள்';

  @override
  String get language_section_islands => 'தீவுப் பிரதேசங்கள்';

  @override
  String language_selected_label(Object language) {
    return 'தேர்ந்தெடுக்கப்பட்டது: $language';
  }

  @override
  String language_changed_snackbar(Object language) {
    return 'மொழி $language ஆக மாற்றப்பட்டது';
  }

  @override
  String get language_confirm_button => 'மொழியை உறுதிப்படுத்தவும்';

  @override
  String get login_welcome_to => '-க்கு வரவேற்கிறோம்';

  @override
  String get login_title_caps => 'சென்டினல்';

  @override
  String get login_tagline => 'கடல் அபாய எச்சரிக்கைகளுக்கான உங்கள் பாதுகாப்பு துணை';

  @override
  String get login_enter_phone => 'உங்கள் மொபைல் எண்ணை உள்ளிடவும்';

  @override
  String get login_phone_help => 'நாங்கள் உங்களுக்கு SMS வழியாக ஒரு சரிபார்ப்புக் குறியீட்டை அனுப்புவோம்';

  @override
  String get login_send_otp => 'OTP அனுப்பு';

  @override
  String get login_terms_prefix => 'தொடர்வதன் மூலம், எங்கள்';

  @override
  String get login_terms => 'சேவை விதிமுறைகள்';

  @override
  String get login_and => ' மற்றும் ';

  @override
  String get login_privacy => 'தனியுரிமைக் கொள்கையை ஏற்கிறீர்கள்';

  @override
  String get login_error_enter_phone => 'தயவுசெய்து உங்கள் மொபைல் எண்ணை உள்ளிடவும்';

  @override
  String get login_error_valid_phone => 'தயவுசெய்து சரியான மொபைல் எண்ணை உள்ளிடவும்';

  @override
  String get otp_title => 'சரிபார்ப்புக் குறியீட்டை உள்ளிடவும்';

  @override
  String otp_sent_to(Object phone) {
    return 'நாங்கள் $phone எண்ணிற்கு 6 இலக்கக் குறியீட்டை அனுப்பியுள்ளோம்';
  }

  @override
  String get otp_hint => '000000';

  @override
  String get otp_verify_continue => 'சரிபார்த்து தொடரவும்';

  @override
  String get otp_error_incomplete => 'தயவுசெய்து முழுமையான 6 இலக்கக் குறியீட்டை உள்ளிடவும்';

  @override
  String otp_resend_in(Object seconds) {
    return '$seconds வினாடிகளில் குறியீட்டை மீண்டும் அனுப்பவும்';
  }

  @override
  String get otp_resend_cta => 'குறியீடு வரவில்லையா? மீண்டும் அனுப்பு';

  @override
  String get otp_request_first => 'தயவுசெய்து முதலில் குறியீட்டைக் கோரவும்.';

  @override
  String get otp_invalid_code => 'தவறான குறியீடு';

  @override
  String get verification_failed => 'சரிபார்ப்பு தோல்வியடைந்தது';

  @override
  String get phone_country_code => '+91';

  @override
  String get phone_hint_number => '98765 43210';

  @override
  String get reports_title => 'எனது அறிக்கைகள்';

  @override
  String get reports_subtitle => 'நீங்கள் சமர்ப்பித்த அபாய அறிக்கைகளைக் கண்காணிக்கவும்';

  @override
  String reports_count_label(Object count) {
    return '$count அறிக்கைகள்';
  }

  @override
  String get reports_filter_label => 'நிலை அடிப்படையில் வடிகட்டவும்';

  @override
  String get status_pending => 'நிலுவையில் உள்ளது';

  @override
  String get status_verified => 'சரிபார்க்கப்பட்டது';

  @override
  String get status_dismissed => 'நிராகரிக்கப்பட்டது';

  @override
  String get status_under_review => 'மதிப்பாய்வில் உள்ளது';

  @override
  String get reports_loading => 'உங்கள் அறிக்கைகள் ஏற்றப்படுகின்றன...';

  @override
  String get reports_error_title => 'அறிக்கைகளை ஏற்றுவதில் பிழை';

  @override
  String get reports_empty_all => 'இன்னும் அறிக்கைகள் எதுவும் இல்லை';

  @override
  String reports_empty_filtered(Object status) {
    return '$status அறிக்கைகள் எதுவும் இல்லை';
  }

  @override
  String get reports_empty_all_sub => 'நமது கடல்களைப் பாதுகாப்பாக வைத்திருக்க கடல் அபாயங்களைப் புகாரளிக்கத் தொடங்குங்கள்';

  @override
  String get reports_empty_filtered_sub => 'அறிக்கைகளைப் பார்க்க வேறு வடிப்பானைத் தேர்ந்தெடுக்க முயற்சிக்கவும்';

  @override
  String get reports_stat_pending => 'நிலுவையில் உள்ளது';

  @override
  String get reports_stat_verified => 'சரிபார்க்கப்பட்டது';

  @override
  String get reports_stat_dismissed => 'நிராகரிக்கப்பட்டது';

  @override
  String get time_just_now => 'இப்போதுதான்';

  @override
  String time_minutes_ago(Object minutes) {
    return '$minutes நிமிடம் முன்பு';
  }

  @override
  String time_hours_ago(Object hours) {
    return '$hours மணிநேரம் முன்பு';
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
  String get report_menu_edit => 'அறிக்கையைத் திருத்து';

  @override
  String get report_menu_delete => 'அறிக்கையை நீக்கு';

  @override
  String get report_delete_title => 'அறிக்கையை நீக்கு';

  @override
  String report_delete_confirm(Object title) {
    return '\"$title\" ஐ நீக்க விரும்புகிறீர்களா? இந்தச் செயலைச் செயல்தவிர்க்க முடியாது.';
  }

  @override
  String get report_deleted_success => 'அறிக்கை வெற்றிகரமாக நீக்கப்பட்டது';

  @override
  String report_delete_failed(Object error) {
    return 'அறிக்கையை நீக்க முடியவில்லை: $error';
  }

  @override
  String get report_edit_coming => 'திருத்தும் வசதி விரைவில் வருகிறது!';

  @override
  String get report_media_coming => 'ஊடகப் பார்வையாளர் விரைவில் வருகிறார்!';

  @override
  String get report_section_description => 'விளக்கம்';

  @override
  String get report_section_location => 'இடம்';

  @override
  String report_section_media(Object count) {
    return 'ஊடகம் ($count)';
  }

  @override
  String get report_section_reputation => 'புகாரளிப்பவரின் நம்பகத்தன்மை';

  @override
  String get report_media_view_all => 'அனைத்தையும் காட்டு';

  @override
  String get report_lat_label => 'அட்சரேகை:';

  @override
  String get report_lng_label => 'தீர்க்கரேகை:';

  @override
  String get report_action_edit => 'அறிக்கையைத் திருத்து';

  @override
  String get report_action_delete => 'நீக்கு';

  @override
  String get report_details_title => 'அறிக்கை விவரங்கள்';

  @override
  String get report_id_label => 'அறிக்கை ஐடி';

  @override
  String report_attachments_label(Object count) {
    return 'இணைப்புகள் ($count)';
  }

  @override
  String get report_media_files => 'ஊடகக் கோப்புகள்';

  @override
  String report_media_files_attached(Object count) {
    return 'இந்த அறிக்கையுடன் $count கோப்பு(கள்) இணைக்கப்பட்டுள்ளன';
  }

  @override
  String get report_media_view => 'காண்க';

  @override
  String get nav_home => 'முகப்பு';

  @override
  String get nav_alerts => 'எச்சரிக்கைகள்';

  @override
  String get nav_reports => 'அறிக்கைகள்';

  @override
  String get nav_profile => 'சுயவிவரம்';

  @override
  String get onboard_complete_your => 'உங்கள்';

  @override
  String get onboard_profile_setup => 'சுயவிவர அமைப்பை முடிக்கவும்';

  @override
  String get onboard_header_subtitle => 'உங்கள் அனுபவத்தைத் தனிப்பயனாக்கவும் உங்களைப் பாதுகாப்பாக வைத்திருக்கவும் எங்களுக்கு உதவுங்கள்';

  @override
  String get onboard_full_name_label => 'முழுப்பெயர்';

  @override
  String get onboard_full_name_hint => 'உங்கள் முழுப்பெயரை உள்ளிடவும்';

  @override
  String get onboard_full_name_error => 'தயவுசெய்து உங்கள் பெயரை உள்ளிடவும்';

  @override
  String get onboard_email_label => 'மின்னஞ்சல் முகவரி';

  @override
  String get onboard_email_hint => 'உங்கள் மின்னஞ்சல் முகவரியை உள்ளிடவும்';

  @override
  String get onboard_email_error_empty => 'தயவுசெய்து உங்கள் மின்னஞ்சலை உள்ளிடவும்';

  @override
  String get onboard_email_error_invalid => 'தயவுசெய்து சரியான மின்னஞ்சல் முகவரியை உள்ளிடவும்';

  @override
  String get onboard_trust_title => 'நம்பகத்தன்மை மதிப்பெண் அமைப்பு';

  @override
  String get onboard_trust_desc => 'உங்கள் அறிக்கைகள், அறிக்கையின் தரம், இருப்பிடத்தின் துல்லியம் மற்றும் புகாரளிப்பு வரலாறு ஆகியவற்றின் அடிப்படையில் மதிப்பிடப்படும். விரிவான, துல்லியமான அறிக்கைகளைச் சமர்ப்பிப்பதன் மூலம் உங்கள் நற்பெயரை வளர்த்துக் கொள்ளுங்கள்.';

  @override
  String get onboard_continue => 'அமைப்பை முடிக்கவும்';

  @override
  String get onboard_footer_secure => 'உங்கள் தகவல் பாதுகாப்பானது மற்றும் குறியாக்கம் செய்யப்பட்டது';

  @override
  String get dashboard_live => 'நேரலை';

  @override
  String get dashboard_title => 'கடல் பாதுகாப்பு டாஷ்போர்டு';

  @override
  String get dashboard_stat_active_alerts => 'செயலில் உள்ள எச்சரிக்கைகள்';

  @override
  String get dashboard_stat_verified => 'சரிபார்க்கப்பட்டது';

  @override
  String get dashboard_stat_this_week => 'இந்த வாரம்';

  @override
  String get dashboard_recent_reports => 'சமீபத்திய அபாய அறிக்கைகள்';

  @override
  String get profile_title => 'சுயவிவரம்';

  @override
  String get profile_subtitle => 'உங்கள் கணக்கு மற்றும் அமைப்புகளை நிர்வகிக்கவும்';

  @override
  String get profile_user_not_logged_in => 'பயனர் உள்நுழையவில்லை.';

  @override
  String get profile_could_not_load_data => 'பயனர் தரவை ஏற்ற முடியவில்லை.';

  @override
  String profile_something_wrong(Object error) {
    return 'ஏதோ தவறு случилось: $error';
  }

  @override
  String get profile_verified => 'சரிபார்க்கப்பட்டது';

  @override
  String profile_member_since(Object date) {
    return '$date முதல் உறுப்பினர்';
  }

  @override
  String get profile_email => 'மின்னஞ்சல்';

  @override
  String get profile_phone => 'தொலைபேசி';

  @override
  String get profile_edit_profile => 'சுயவிவரத்தைத் திருத்து';

  @override
  String get profile_statistics_title => 'புள்ளிவிவரங்கள் & சுருக்கம்';

  @override
  String get profile_reports_submitted => 'சமர்ப்பிக்கப்பட்ட அறிக்கைகள்';

  @override
  String get profile_verified_reports => 'சரிபார்க்கப்பட்ட அறிக்கைகள்';

  @override
  String get profile_pending_reports => 'நிலுவையிலுள்ள அறிக்கைகள்';

  @override
  String get profile_rejected_reports => 'நிராகரிக்கப்பட்ட அறிக்கைகள்';

  @override
  String profile_could_not_load_stats(Object error) {
    return 'புள்ளிவிவரங்களை ஏற்ற முடியவில்லை: $error';
  }

  @override
  String get profile_no_stats_available => 'புள்ளிவிவரங்கள் எதுவும் இல்லை.';

  @override
  String get profile_account_options => 'கணக்கு விருப்பங்கள்';

  @override
  String get profile_language_settings => 'மொழி அமைப்புகள்';

  @override
  String get profile_language_settings_desc => 'உங்களுக்கு விருப்பமான மொழியைத் தேர்ந்தெடுக்கவும்';

  @override
  String get profile_notification_settings => 'அறிவிப்பு அமைப்புகள்';

  @override
  String get profile_notification_settings_desc => 'எச்சரிக்கைகள் மற்றும் புஷ் அறிவிப்புகளை நிர்வகிக்கவும்';

  @override
  String get profile_privacy_permissions => 'தனியுரிமை & அனுமதிகள்';

  @override
  String get profile_privacy_permissions_desc => 'உங்கள் தரவு மற்றும் பயன்பாட்டு அனுமதிகளைக் கட்டுப்படுத்தவும்';

  @override
  String get profile_help_support => 'உதவி & ஆதரவு';

  @override
  String get profile_help_support_desc => 'உதவி பெறவும் மற்றும் ஆதரவைத் தொடர்பு கொள்ளவும்';

  @override
  String get profile_help_coming_soon => 'உதவி & ஆதரவு விரைவில் வருகிறது!';

  @override
  String get profile_about_sentinel => 'சென்டினல் பற்றி';

  @override
  String get profile_about_sentinel_desc => 'பயன்பாட்டின் பதிப்பு மற்றும் தகவல்';

  @override
  String get profile_app_name => 'சென்டினல்';

  @override
  String get profile_app_version => '1.0.0';

  @override
  String get profile_app_description => 'பலரின் பங்களிப்புடன் கடல் அபாய எச்சரிக்கைகள்\n\nசமூக அறிக்கைகள் மூலம் நமது கடல்களைப் பாதுகாப்பாக வைத்திருக்க உதவுகிறது.';

  @override
  String get profile_logout => 'வெளியேறு';

  @override
  String get profile_logout_desc => 'உங்கள் கணக்கிலிருந்து வெளியேறவும்';

  @override
  String get profile_logout_confirm => 'சென்டினலிலிருந்து வெளியேற விரும்புகிறீர்களா?';

  @override
  String get profile_cancel => 'ரத்துசெய்';

  @override
  String profile_logout_failed(Object error) {
    return 'வெளியேற முடியவில்லை: $error';
  }

  @override
  String get profile_edit_profile_title => 'சுயவிவரத்தைத் திருத்து';

  @override
  String get profile_full_name_label => 'முழுப்பெயர்';

  @override
  String get profile_full_name_hint => 'உங்கள் முழுப்பெயரை உள்ளிடவும்';

  @override
  String get profile_full_name_error => 'தயவுசெய்து உங்கள் பெயரை உள்ளிடவும்';

  @override
  String get profile_email_label => 'மின்னஞ்சல் முகவரி';

  @override
  String get profile_email_hint => 'உங்கள் மின்னஞ்சல் முகவரியை உள்ளிடவும்';

  @override
  String get profile_email_error_empty => 'தயவுசெய்து உங்கள் மின்னஞ்சலை உள்ளிடவும்';

  @override
  String get profile_email_error_invalid => 'தயவுசெய்து சரியான மின்னஞ்சல் முகவரியை உள்ளிடவும்';

  @override
  String get profile_phone_label => 'தொலைபேசி எண்';

  @override
  String get profile_save_changes => 'மாற்றங்களைச் சேமி';

  @override
  String get profile_user_not_found => 'பிழை: பயனர் கண்டுபிடிக்கப்படவில்லை.';

  @override
  String get profile_updated_success => 'சுயவிவரம் வெற்றிகரமாகப் புதுப்பிக்கப்பட்டது!';

  @override
  String profile_update_failed(Object error) {
    return 'சுயவிவரத்தைப் புதுப்பிக்க முடியவில்லை: $error';
  }

  @override
  String profile_language_update_failed(Object error) {
    return 'மொழியைப் புதுப்பிக்க முடியவில்லை: $error';
  }

  @override
  String get profile_notification_title => 'அறிவிப்பு அமைப்புகள்';

  @override
  String get profile_general_notifications => 'பொது அறிவிப்புகள்';

  @override
  String get profile_push_notifications => 'புஷ் அறிவிப்புகள்';

  @override
  String get profile_push_notifications_desc => 'உங்கள் சாதனத்தில் அறிவிப்புகளைப் பெறவும்';

  @override
  String get profile_email_notifications => 'மின்னஞ்சல் அறிவிப்புகள்';

  @override
  String get profile_email_notifications_desc => 'மின்னஞ்சல் வழியாக அறிவிப்புகளைப் பெறவும்';

  @override
  String get profile_alert_types => 'எச்சரிக்கை வகைகள்';

  @override
  String get profile_critical_safety_alerts => 'முக்கிய பாதுகாப்பு எச்சரிக்கைகள்';

  @override
  String get profile_critical_safety_alerts_desc => 'உடனடி ஆபத்து மற்றும் அவசர எச்சரிக்கைகள்';

  @override
  String get profile_report_status_updates => 'அறிக்கை நிலை புதுப்பிப்புகள்';

  @override
  String get profile_report_status_updates_desc => 'நீங்கள் சமர்ப்பித்த அறிக்கைகள் குறித்த புதுப்பிப்புகள்';

  @override
  String get profile_news_updates => 'செய்திகள் & புதுப்பிப்புகள்';

  @override
  String get profile_news_updates_desc => 'கடல் பாதுகாப்பு செய்திகள் மற்றும் பயன்பாட்டுப் புதுப்பிப்புகள்';

  @override
  String get profile_critical_alerts_info => 'உங்கள் பாதுகாப்பிற்காக முக்கிய பாதுகாப்பு எச்சரிக்கைகளை முடக்க முடியாது.';

  @override
  String get profile_privacy_title => 'தனியுரிமை & அனுமதிகள்';

  @override
  String get profile_location_data => 'இருப்பிடம் & தரவு';

  @override
  String get profile_location_sharing => 'இருப்பிடப் பகிர்வு';

  @override
  String get profile_location_sharing_desc => 'அறிக்கைகளுக்காக உங்கள் இருப்பிடத்தை அணுக பயன்பாட்டை அனுமதிக்கவும்';

  @override
  String get profile_public_profile => 'பொது சுயவிவரம்';

  @override
  String get profile_public_profile_desc => 'உங்கள் சுயவிவரத்தை மற்ற பயனர்களுக்குத் தெரியும்படி செய்யவும்';

  @override
  String get profile_app_analytics => 'பயன்பாட்டுப் பகுப்பாய்வு';

  @override
  String get profile_usage_analytics => 'பயன்பாட்டுப் பகுப்பாய்வு';

  @override
  String get profile_usage_analytics_desc => 'பயன்பாட்டுத் தரவைப் பகிர்வதன் மூலம் பயன்பாட்டை மேம்படுத்த உதவுங்கள்';

  @override
  String get profile_crash_reporting => 'செயலிழப்பு அறிக்கை';

  @override
  String get profile_crash_reporting_desc => 'செயலிழப்பு அறிக்கைகளை உருவாக்குநர்களுக்குத் தானாக அனுப்பவும்';

  @override
  String get profile_view_privacy_policy => 'தனியுரிமைக் கொள்கையைப் பார்க்கவும்';

  @override
  String get profile_opening_privacy_policy => 'தனியுரிமைக் கொள்கையைத் திறக்கிறது...';

  @override
  String get profile_export_my_data => 'எனது தரவை ஏற்றுமதி செய்';

  @override
  String get profile_data_export_submitted => 'தரவு ஏற்றுமதி கோரிக்கை சமர்ப்பிக்கப்பட்டது';

  @override
  String get profile_delete_my_account => 'எனது கணக்கை நீக்கு';

  @override
  String get profile_delete_account_title => 'கணக்கை நீக்கு';

  @override
  String get profile_delete_account_confirm => 'இந்தச் செயலைச் செயல்தவிர்க்க முடியாது. உங்கள் எல்லா அறிக்கைகளும் தரவுகளும் நிரந்தரமாக நீக்கப்படும். நீங்கள் தொடர விரும்புகிறீர்களா?';

  @override
  String get profile_delete_account_submitted => 'கணக்கு நீக்குதல் கோரிக்கை சமர்ப்பிக்கப்பட்டது';

  @override
  String get profile_no_name_provided => 'பெயர் வழங்கப்படவில்லை';

  @override
  String get profile_no_email_provided => 'மின்னஞ்சல் வழங்கப்படவில்லை';

  @override
  String get profile_no_phone_provided => 'தொலைபேசி எண் வழங்கப்படவில்லை';

  @override
  String get profile_default_location => 'புனே, மகாராஷ்டிரா, இந்தியா';

  @override
  String get profile_default_language => 'ta';

  @override
  String get profile_months => 'ஜன,பிப்,மார்,ஏப்,மே,ஜூன்,ஜூலை,ஆக,செப்,அக்,நவ,டிச';

  @override
  String get create_report_title => 'அபாய அறிக்கையை உருவாக்கு';

  @override
  String get create_report_subtitle => 'நமது கடல்களைப் பாதுகாப்பாக வைத்திருக்க உதவுங்கள்';

  @override
  String get create_report_description_label => 'விளக்கம் *';

  @override
  String get create_report_description_hint => 'நீங்கள் கண்ட கடல் அபாயத்தை விவரிக்கவும்...';

  @override
  String get create_report_description_error_empty => 'தயவுசெய்து ஒரு விளக்கத்தை வழங்கவும்';

  @override
  String get create_report_description_error_min_length => 'விளக்கம் குறைந்தது 10 எழுத்துகளாக இருக்க வேண்டும்';

  @override
  String get create_report_location_label => 'இடம் *';

  @override
  String get create_report_location_hint => 'இடத்தை உள்ளிடவும் அல்லது கீழே உள்ள பொத்தான்களைப் பயன்படுத்தவும்';

  @override
  String get create_report_location_error => 'தயவுசெய்து ஒரு இடத்தை சேர்க்கவும்';

  @override
  String get create_report_current_location => 'தற்போதைய இடம்';

  @override
  String get create_report_getting_location => 'பெறப்படுகிறது...';

  @override
  String get create_report_pin_on_map => 'வரைபடத்தில் குறியிடு';

  @override
  String get create_report_location_selected => 'இடம் வெற்றிகரமாகத் தேர்ந்தெடுக்கப்பட்டது';

  @override
  String create_report_coordinates(Object lat, Object lng) {
    return 'ஆயத்தொலைவுகள்: $lat, $lng';
  }

  @override
  String get create_report_attach_media => 'ஊடகத்தை இணை';

  @override
  String get create_report_attach_photos_videos => 'புகைப்படங்கள்/காணொளிகளை இணை';

  @override
  String get create_report_submit => 'அறிக்கையைச் சமர்ப்பி';

  @override
  String get create_report_submitting => 'சமர்ப்பிக்கப்படுகிறது...';

  @override
  String create_report_media_attached_success(Object count) {
    return '$count கோப்பு(கள்) வெற்றிகரமாக இணைக்கப்பட்டது';
  }

  @override
  String create_report_media_attach_failed(Object error) {
    return 'ஊடகத்தை இணைக்க முடியவில்லை: $error';
  }

  @override
  String get create_report_location_captured_success => 'தற்போதைய இடம் வெற்றிகரமாகப் பதியப்பட்டது!';

  @override
  String get create_report_location_permission_denied => 'பயனர் இருப்பிட அனுமதியை மறுத்துவிட்டார். இந்த அம்சத்தைப் பயன்படுத்த, இருப்பிட அணுகலை வழங்கவும்.';

  @override
  String get create_report_location_permission_denied_forever => 'இருப்பிட அனுமதிகள் நிரந்தரமாக மறுக்கப்பட்டுள்ளன. உங்கள் சாதனத்தின் அமைப்புகளில் இருப்பிட அணுகலை இயக்கவும்.';

  @override
  String get create_report_location_services_disabled => 'இருப்பிடச் சேவைகள் முடக்கப்பட்டுள்ளன. உங்கள் சாதனத்தின் அமைப்புகளில் இருப்பிடச் சேவைகளை இயக்கவும்.';

  @override
  String get create_report_location_unable_determine => 'இருப்பிடத்தைக் கண்டறிய முடியவில்லை. மீண்டும் முயற்சிக்கவும் அல்லது வரைபடத்தில் இருப்பிடத்தைத் கைமுறையாகத் தேர்ந்தெடுக்கவும்.';

  @override
  String get create_report_location_current => 'தற்போதைய இடம்';

  @override
  String create_report_location_coordinates(Object lat, Object lng) {
    return 'இடம்: $lat, $lng';
  }

  @override
  String get create_report_submit_location_required => 'தயவுசெய்து அறிக்கைக்கான இடத்தை சேர்க்கவும்';

  @override
  String get create_report_submit_login_required => 'அறிக்கையைச் சமர்ப்பிக்க உள்நுழையவும்';

  @override
  String create_report_submit_failed(Object error) {
    return 'அறிக்கையைச் சமர்ப்பிக்க முடியவில்லை: $error';
  }

  @override
  String get create_report_submit_retry => 'மீண்டும் முயலவும்';

  @override
  String get create_report_success_title => 'அறிக்கை வெற்றிகரமாகச் சமர்ப்பிக்கப்பட்டது!';

  @override
  String get create_report_success_auto_approved => 'அறிக்கை தானாக அங்கீகரிக்கப்பட்டு வெளியிடப்பட்டது!';

  @override
  String create_report_success_auto_approved_sub(Object score) {
    return 'அதிக நம்பகத்தன்மை மதிப்பெண் ($score%)';
  }

  @override
  String get create_report_success_review => 'அறிக்கை மதிப்பாய்விற்காகச் சமர்ப்பிக்கப்பட்டது';

  @override
  String get create_report_success_review_normal => 'சாதாரண செயலாக்கம் எதிர்பார்க்கப்படுகிறது';

  @override
  String get create_report_success_review_verification => 'கூடுதல் சரிபார்ப்பு தேவைப்படலாம்';

  @override
  String get create_report_success_manual_review => 'அறிக்கை கைமுறை மதிப்பாய்விற்காகச் சமர்ப்பிக்கப்பட்டது';

  @override
  String get create_report_success_manual_review_sub => 'விரிவான சரிபார்ப்பு தேவை';

  @override
  String create_report_success_title_label(Object title) {
    return 'தலைப்பு: $title';
  }

  @override
  String get create_report_unknown_location => 'தெரியாத இடம்';

  @override
  String get create_report_selected_location => 'தேர்ந்தெடுக்கப்பட்ட இடம்';
}
