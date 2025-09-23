// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Gujarati (`gu`).
class AppLocalizationsGu extends AppLocalizations {
  AppLocalizationsGu([String locale = 'gu']) : super(locale);

  @override
  String get appTitle => 'સેન્ટિનલ';

  @override
  String get common_cancel => 'રદ કરો';

  @override
  String get common_delete => 'કાઢી નાખો';

  @override
  String get common_edit => 'સંપાદિત કરો';

  @override
  String get common_retry => 'ફરી પ્રયાસ કરો';

  @override
  String get common_default => 'ડિફૉલ્ટ';

  @override
  String get language_select_title => 'ભાષા પસંદ કરો';

  @override
  String get language_select_subtitle => 'સેન્ટિનલ માટે તમારી પસંદગીની ભાષા પસંદ કરો';

  @override
  String get language_section_primary => 'પ્રાથમિક ભાષાઓ';

  @override
  String get language_section_west => 'પશ્ચિમ કિનારાની ભાષાઓ';

  @override
  String get language_section_east => 'પૂર્વ કિનારાની ભાષાઓ';

  @override
  String get language_section_islands => 'દ્વીપ પ્રદેશો';

  @override
  String language_selected_label(Object language) {
    return 'પસંદ કરેલ: $language';
  }

  @override
  String language_changed_snackbar(Object language) {
    return 'ભાષા $language માં બદલાઈ ગઈ છે';
  }

  @override
  String get language_confirm_button => 'ભાષાની પુષ્ટિ કરો';

  @override
  String get login_welcome_to => 'માં આપનું સ્વાગત છે';

  @override
  String get login_title_caps => 'સેન્ટિનલ';

  @override
  String get login_tagline => 'દરિયાઈ જોખમની ચેતવણીઓ માટે તમારો સલામતી સાથી';

  @override
  String get login_enter_phone => 'તમારો મોબાઇલ નંબર દાખલ કરો';

  @override
  String get login_phone_help => 'અમે તમને SMS દ્વારા ચકાસણી કોડ મોકલીશું';

  @override
  String get login_send_otp => 'OTP મોકલો';

  @override
  String get login_terms_prefix => 'આગળ વધીને, તમે અમારી';

  @override
  String get login_terms => 'સેવાની શરતો';

  @override
  String get login_and => ' અને ';

  @override
  String get login_privacy => 'ગોપનીયતા નીતિ સાથે સંમત થાઓ છો';

  @override
  String get login_error_enter_phone => 'કૃપા કરીને તમારો મોબાઇલ નંબર દાખલ કરો';

  @override
  String get login_error_valid_phone => 'કૃપા કરીને માન્ય મોબાઇલ નંબર દાખલ કરો';

  @override
  String get otp_title => 'ચકાસણી કોડ દાખલ કરો';

  @override
  String otp_sent_to(Object phone) {
    return 'અમે $phone પર ૬-અંકનો કોડ મોકલ્યો છે';
  }

  @override
  String get otp_hint => '૦૦૦૦૦૦';

  @override
  String get otp_verify_continue => 'ચકાસો અને આગળ વધો';

  @override
  String get otp_error_incomplete => 'કૃપા કરીને સંપૂર્ણ ૬-અંકનો કોડ દાખલ કરો';

  @override
  String otp_resend_in(Object seconds) {
    return '$seconds સેકન્ડમાં કોડ ફરીથી મોકલો';
  }

  @override
  String get otp_resend_cta => 'કોડ નથી મળ્યો? ફરીથી મોકલો';

  @override
  String get otp_request_first => 'કૃપા કરીને પહેલા કોડની વિનંતી કરો.';

  @override
  String get otp_invalid_code => 'અમાન્ય કોડ';

  @override
  String get verification_failed => 'ચકાસણી નિષ્ફળ ગઈ';

  @override
  String get phone_country_code => '+૯૧';

  @override
  String get phone_hint_number => '૯૮૭૬૫ ૪૩૨૧૦';

  @override
  String get reports_title => 'મારા રિપોર્ટ્સ';

  @override
  String get reports_subtitle => 'તમારા સબમિટ કરેલા જોખમ રિપોર્ટ્સને ટ્રૅક કરો';

  @override
  String reports_count_label(Object count) {
    return '$count રિપોર્ટ્સ';
  }

  @override
  String get reports_filter_label => 'સ્થિતિ દ્વારા ફિલ્ટર કરો';

  @override
  String get status_pending => 'બાકી';

  @override
  String get status_verified => 'ચકાસાયેલ';

  @override
  String get status_dismissed => 'નકારી કાઢેલ';

  @override
  String get status_under_review => 'સમીક્ષા હેઠળ';

  @override
  String get reports_loading => 'તમારા રિપોર્ટ્સ લોડ થઈ રહ્યા છે...';

  @override
  String get reports_error_title => 'રિપોર્ટ્સ લોડ કરવામાં ભૂલ';

  @override
  String get reports_empty_all => 'હજી સુધી કોઈ રિપોર્ટ નથી';

  @override
  String reports_empty_filtered(Object status) {
    return 'કોઈ $status રિપોર્ટ નથી';
  }

  @override
  String get reports_empty_all_sub => 'આપણા જળને સુરક્ષિત રાખવામાં મદદ કરવા માટે દરિયાઈ જોખમોની જાણ કરવાનું શરૂ કરો';

  @override
  String get reports_empty_filtered_sub => 'રિપોર્ટ્સ જોવા માટે એક અલગ ફિલ્ટર પસંદ કરવાનો પ્રયાસ કરો';

  @override
  String get reports_stat_pending => 'બાકી';

  @override
  String get reports_stat_verified => 'ચકાસાયેલ';

  @override
  String get reports_stat_dismissed => 'નકારી કાઢેલ';

  @override
  String get time_just_now => 'હમણાં જ';

  @override
  String time_minutes_ago(Object minutes) {
    return '$minutes મિનિટ પહેલા';
  }

  @override
  String time_hours_ago(Object hours) {
    return '$hours કલાક પહેલા';
  }

  @override
  String time_days_ago(Object days) {
    return '$days દિવસ પહેલા';
  }

  @override
  String time_on_date(Object day, Object month, Object year) {
    return '$day/$month/$year';
  }

  @override
  String get report_menu_edit => 'રિપોર્ટ સંપાદિત કરો';

  @override
  String get report_menu_delete => 'રિપોર્ટ કાઢી નાખો';

  @override
  String get report_delete_title => 'રિપોર્ટ કાઢી નાખો';

  @override
  String report_delete_confirm(Object title) {
    return 'શું તમે ખરેખર \"$title\" કાઢી નાખવા માંગો છો? આ ક્રિયાને પૂર્વવત્ કરી શકાતી નથી.';
  }

  @override
  String get report_deleted_success => 'રિપોર્ટ સફળતાપૂર્વક કાઢી નાખવામાં આવ્યો છે';

  @override
  String report_delete_failed(Object error) {
    return 'રિપોર્ટ કાઢી નાખવામાં નિષ્ફળ: $error';
  }

  @override
  String get report_edit_coming => 'સંપાદન કાર્યક્ષમતા ટૂંક સમયમાં આવી રહી છે!';

  @override
  String get report_media_coming => 'મીડિયા વ્યૂઅર ટૂંક સમયમાં આવી રહ્યું છે!';

  @override
  String get report_section_description => 'વર્ણન';

  @override
  String get report_section_location => 'સ્થાન';

  @override
  String report_section_media(Object count) {
    return 'મીડિયા ($count)';
  }

  @override
  String get report_section_reputation => 'રિપોર્ટરની પ્રતિષ્ઠા';

  @override
  String get report_media_view_all => 'બધા જુઓ';

  @override
  String get report_lat_label => 'અક્ષાંશ:';

  @override
  String get report_lng_label => 'રેખાંશ:';

  @override
  String get report_action_edit => 'રિપોર્ટ સંપાદિત કરો';

  @override
  String get report_action_delete => 'કાઢી નાખો';

  @override
  String get report_details_title => 'રિપોર્ટની વિગતો';

  @override
  String get report_id_label => 'રિપોર્ટ ID';

  @override
  String report_attachments_label(Object count) {
    return 'જોડાણો ($count)';
  }

  @override
  String get report_media_files => 'મીડિયા ફાઇલો';

  @override
  String report_media_files_attached(Object count) {
    return 'આ રિપોર્ટ સાથે $count ફાઇલ(ઓ) જોડાયેલ છે';
  }

  @override
  String get report_media_view => 'જુઓ';

  @override
  String get nav_home => 'હોમ';

  @override
  String get nav_alerts => 'ચેતવણીઓ';

  @override
  String get nav_reports => 'રિપોર્ટ્સ';

  @override
  String get nav_profile => 'પ્રોફાઇલ';

  @override
  String get onboard_complete_your => 'તમારું';

  @override
  String get onboard_profile_setup => 'પ્રોફાઇલ સેટઅપ પૂર્ણ કરો';

  @override
  String get onboard_header_subtitle => 'તમારા અનુભવને વ્યક્તિગત કરવામાં અને તમને સુરક્ષિત રાખવામાં અમને મદદ કરો';

  @override
  String get onboard_full_name_label => 'પૂરું નામ';

  @override
  String get onboard_full_name_hint => 'તમારું પૂરું નામ દાખલ કરો';

  @override
  String get onboard_full_name_error => 'કૃપા કરીને તમારું નામ દાખલ કરો';

  @override
  String get onboard_email_label => 'ઇમેઇલ સરનામું';

  @override
  String get onboard_email_hint => 'તમારું ઇમેઇલ સરનામું દાખલ કરો';

  @override
  String get onboard_email_error_empty => 'કૃપા કરીને તમારું ઇમેઇલ દાખલ કરો';

  @override
  String get onboard_email_error_invalid => 'કૃપા કરીને માન્ય ઇમેઇલ સરનામું દાખલ કરો';

  @override
  String get onboard_trust_title => 'ટ્રસ્ટ સ્કોર સિસ્ટમ';

  @override
  String get onboard_trust_desc => 'તમારા રિપોર્ટ્સનું મૂલ્યાંકન રિપોર્ટની ગુણવત્તા, સ્થાનની ચોકસાઈ અને રિપોર્ટિંગ ઇતિહાસના આધારે કરવામાં આવશે. વિગતવાર, સચોટ રિપોર્ટ્સ સબમિટ કરીને તમારી પ્રતિષ્ઠા બનાવો.';

  @override
  String get onboard_continue => 'સેટઅપ પૂર્ણ કરો';

  @override
  String get onboard_footer_secure => 'તમારી માહિતી સુરક્ષિત અને એન્ક્રિપ્ટેડ છે';

  @override
  String get dashboard_live => 'લાઇવ';

  @override
  String get dashboard_title => 'મહાસાગર સુરક્ષા ડેશબોર્ડ';

  @override
  String get dashboard_stat_active_alerts => 'સક્રિય ચેતવણીઓ';

  @override
  String get dashboard_stat_verified => 'ચકાસાયેલ';

  @override
  String get dashboard_stat_this_week => 'આ અઠવાડિયે';

  @override
  String get dashboard_recent_reports => 'તાજેતરના જોખમ રિપોર્ટ્સ';

  @override
  String get profile_title => 'પ્રોફાઇલ';

  @override
  String get profile_subtitle => 'તમારું એકાઉન્ટ અને સેટિંગ્સ મેનેજ કરો';

  @override
  String get profile_user_not_logged_in => 'વપરાશકર્તા લૉગ ઇન નથી.';

  @override
  String get profile_could_not_load_data => 'વપરાશકર્તા ડેટા લોડ કરી શકાયો નથી.';

  @override
  String profile_something_wrong(Object error) {
    return 'કંઈક ખોટું થયું: $error';
  }

  @override
  String get profile_verified => 'ચકાસાયેલ';

  @override
  String profile_member_since(Object date) {
    return '$date થી સભ્ય';
  }

  @override
  String get profile_email => 'ઇમેઇલ';

  @override
  String get profile_phone => 'ફોન';

  @override
  String get profile_edit_profile => 'પ્રોફાઇલ સંપાદિત કરો';

  @override
  String get profile_statistics_title => 'આંકડા અને સારાંશ';

  @override
  String get profile_reports_submitted => 'સબમિટ કરેલા રિપોર્ટ્સ';

  @override
  String get profile_verified_reports => 'ચકાસાયેલ રિપોર્ટ્સ';

  @override
  String get profile_pending_reports => 'બાકી રિપોર્ટ્સ';

  @override
  String get profile_rejected_reports => 'નકારી કાઢેલ રિપોર્ટ્સ';

  @override
  String profile_could_not_load_stats(Object error) {
    return 'આંકડા લોડ કરી શકાયા નથી: $error';
  }

  @override
  String get profile_no_stats_available => 'કોઈ આંકડા ઉપલબ્ધ નથી.';

  @override
  String get profile_account_options => 'એકાઉન્ટ વિકલ્પો';

  @override
  String get profile_language_settings => 'ભાષા સેટિંગ્સ';

  @override
  String get profile_language_settings_desc => 'તમારી પસંદગીની ભાષા પસંદ કરો';

  @override
  String get profile_notification_settings => 'સૂચના સેટિંગ્સ';

  @override
  String get profile_notification_settings_desc => 'ચેતવણીઓ અને પુશ સૂચનાઓ મેનેજ કરો';

  @override
  String get profile_privacy_permissions => 'ગોપનીયતા અને પરવાનગીઓ';

  @override
  String get profile_privacy_permissions_desc => 'તમારા ડેટા અને એપ્લિકેશન પરવાનગીઓને નિયંત્રિત કરો';

  @override
  String get profile_help_support => 'મદદ અને સપોર્ટ';

  @override
  String get profile_help_support_desc => 'મદદ મેળવો અને સપોર્ટનો સંપર્ક કરો';

  @override
  String get profile_help_coming_soon => 'મદદ અને સપોર્ટ ટૂંક સમયમાં આવી રહ્યું છે!';

  @override
  String get profile_about_sentinel => 'સેન્ટિનલ વિશે';

  @override
  String get profile_about_sentinel_desc => 'એપ્લિકેશન સંસ્કરણ અને માહિતી';

  @override
  String get profile_app_name => 'સેન્ટિનલ';

  @override
  String get profile_app_version => '૧.૦.૦';

  @override
  String get profile_app_description => 'ક્રાઉડસોર્સ્ડ મહાસાગર જોખમ ચેતવણીઓ\n\nસમુદાય રિપોર્ટિંગ દ્વારા આપણા મહાસાગરોને સુરક્ષિત રાખવામાં મદદ કરે છે.';

  @override
  String get profile_logout => 'લૉગઆઉટ';

  @override
  String get profile_logout_desc => 'તમારા એકાઉન્ટમાંથી સાઇન આઉટ કરો';

  @override
  String get profile_logout_confirm => 'શું તમે ખરેખર સેન્ટિનલમાંથી લૉગઆઉટ કરવા માંગો છો?';

  @override
  String get profile_cancel => 'રદ કરો';

  @override
  String profile_logout_failed(Object error) {
    return 'લૉગઆઉટ નિષ્ફળ: $error';
  }

  @override
  String get profile_edit_profile_title => 'પ્રોફાઇલ સંપાદિત કરો';

  @override
  String get profile_full_name_label => 'પૂરું નામ';

  @override
  String get profile_full_name_hint => 'તમારું પૂરું નામ દાખલ કરો';

  @override
  String get profile_full_name_error => 'કૃપા કરીને તમારું નામ દાખલ કરો';

  @override
  String get profile_email_label => 'ઇમેઇલ સરનામું';

  @override
  String get profile_email_hint => 'તમારું ઇમેઇલ સરનામું દાખલ કરો';

  @override
  String get profile_email_error_empty => 'કૃપા કરીને તમારું ઇમેઇલ દાખલ કરો';

  @override
  String get profile_email_error_invalid => 'કૃપા કરીને માન્ય ઇમેઇલ સરનામું દાખલ કરો';

  @override
  String get profile_phone_label => 'ફોન નંબર';

  @override
  String get profile_save_changes => 'ફેરફારો સાચવો';

  @override
  String get profile_user_not_found => 'ભૂલ: વપરાશકર્તા મળ્યો નથી.';

  @override
  String get profile_updated_success => 'પ્રોફાઇલ સફળતાપૂર્વક અપડેટ થઈ!';

  @override
  String profile_update_failed(Object error) {
    return 'પ્રોફાઇલ અપડેટ કરવામાં નિષ્ફળ: $error';
  }

  @override
  String profile_language_update_failed(Object error) {
    return 'ભાષા અપડેટ કરવામાં નિષ્ફળ: $error';
  }

  @override
  String get profile_notification_title => 'સૂચના સેટિંગ્સ';

  @override
  String get profile_general_notifications => 'સામાન્ય સૂચનાઓ';

  @override
  String get profile_push_notifications => 'પુશ સૂચનાઓ';

  @override
  String get profile_push_notifications_desc => 'તમારા ઉપકરણ પર સૂચનાઓ મેળવો';

  @override
  String get profile_email_notifications => 'ઇમેઇલ સૂચનાઓ';

  @override
  String get profile_email_notifications_desc => 'ઇમેઇલ દ્વારા સૂચનાઓ મેળવો';

  @override
  String get profile_alert_types => 'ચેતવણીના પ્રકાર';

  @override
  String get profile_critical_safety_alerts => 'ગંભીર સુરક્ષા ચેતવણીઓ';

  @override
  String get profile_critical_safety_alerts_desc => 'તાત્કાલિક ભય અને કટોકટીની ચેતવણીઓ';

  @override
  String get profile_report_status_updates => 'રિપોર્ટ સ્થિતિ અપડેટ્સ';

  @override
  String get profile_report_status_updates_desc => 'તમારા સબમિટ કરેલા રિપોર્ટ્સ પર અપડેટ્સ';

  @override
  String get profile_news_updates => 'સમાચાર અને અપડેટ્સ';

  @override
  String get profile_news_updates_desc => 'મહાસાગર સુરક્ષા સમાચાર અને એપ્લિકેશન અપડેટ્સ';

  @override
  String get profile_critical_alerts_info => 'તમારી સુરક્ષા માટે ગંભીર સુરક્ષા ચેતવણીઓ અક્ષમ કરી શકાતી નથી.';

  @override
  String get profile_privacy_title => 'ગોપનીયતા અને પરવાનગીઓ';

  @override
  String get profile_location_data => 'સ્થાન અને ડેટા';

  @override
  String get profile_location_sharing => 'સ્થાન શેરિંગ';

  @override
  String get profile_location_sharing_desc => 'રિપોર્ટ્સ માટે એપ્લિકેશનને તમારું સ્થાન ઍક્સેસ કરવાની મંજૂરી આપો';

  @override
  String get profile_public_profile => 'જાહેર પ્રોફાઇલ';

  @override
  String get profile_public_profile_desc => 'તમારી પ્રોફાઇલ અન્ય વપરાશકર્તાઓને દૃશ્યમાન બનાવો';

  @override
  String get profile_app_analytics => 'એપ્લિકેશન વિશ્લેષણ';

  @override
  String get profile_usage_analytics => 'ઉપયોગ વિશ્લેષણ';

  @override
  String get profile_usage_analytics_desc => 'ઉપયોગ ડેટા શેર કરીને એપ્લિકેશનને સુધારવામાં મદદ કરો';

  @override
  String get profile_crash_reporting => 'ક્રેશ રિપોર્ટિંગ';

  @override
  String get profile_crash_reporting_desc => 'વિકાસકર્તાઓને આપમેળે ક્રેશ રિપોર્ટ્સ મોકલો';

  @override
  String get profile_view_privacy_policy => 'ગોપનીયતા નીતિ જુઓ';

  @override
  String get profile_opening_privacy_policy => 'ગોપનીયતા નીતિ ખોલી રહી છે...';

  @override
  String get profile_export_my_data => 'મારો ડેટા નિકાસ કરો';

  @override
  String get profile_data_export_submitted => 'ડેટા નિકાસ વિનંતી સબમિટ કરવામાં આવી છે';

  @override
  String get profile_delete_my_account => 'મારું એકાઉન્ટ કાઢી નાખો';

  @override
  String get profile_delete_account_title => 'એકાઉન્ટ કાઢી નાખો';

  @override
  String get profile_delete_account_confirm => 'આ ક્રિયાને પૂર્વવત્ કરી શકાતી નથી. તમારા બધા રિપોર્ટ્સ અને ડેટા કાયમ માટે કાઢી નાખવામાં આવશે. શું તમે ખરેખર આગળ વધવા માંગો છો?';

  @override
  String get profile_delete_account_submitted => 'એકાઉન્ટ કાઢી નાખવાની વિનંતી સબમિટ કરવામાં આવી છે';

  @override
  String get profile_no_name_provided => 'કોઈ નામ પ્રદાન નથી';

  @override
  String get profile_no_email_provided => 'કોઈ ઇમેઇલ પ્રદાન નથી';

  @override
  String get profile_no_phone_provided => 'કોઈ ફોન પ્રદાન નથી';

  @override
  String get profile_default_location => 'પુણે, મહારાષ્ટ્ર, ભારત';

  @override
  String get profile_default_language => 'gu';

  @override
  String get profile_months => 'જાન્યુ,ફેબ્રુ,માર્ચ,એપ્રિલ,મે,જૂન,જુલાઈ,ઑગ,સપ્ટે,ઑક્ટો,નવે,ડિસે';

  @override
  String get create_report_title => 'જોખમ રિપોર્ટ બનાવો';

  @override
  String get create_report_subtitle => 'આપણા મહાસાગરોને સુરક્ષિત રાખવામાં મદદ કરો';

  @override
  String get create_report_description_label => 'વર્ણન *';

  @override
  String get create_report_description_hint => 'તમે જોયેલા દરિયાઈ જોખમનું વર્ણન કરો...';

  @override
  String get create_report_description_error_empty => 'કૃપા કરીને વર્ણન પ્રદાન કરો';

  @override
  String get create_report_description_error_min_length => 'વર્ણન ઓછામાં ઓછું ૧૦ અક્ષરોનું હોવું જોઈએ';

  @override
  String get create_report_location_label => 'સ્થાન *';

  @override
  String get create_report_location_hint => 'સ્થાન દાખલ કરો અથવા નીચેના બટનોનો ઉપયોગ કરો';

  @override
  String get create_report_location_error => 'કૃપા કરીને સ્થાન ઉમેરો';

  @override
  String get create_report_current_location => 'વર્તમાન સ્થાન';

  @override
  String get create_report_getting_location => 'મેળવી રહ્યું છે...';

  @override
  String get create_report_pin_on_map => 'નકશા પર પિન કરો';

  @override
  String get create_report_location_selected => 'સ્થાન સફળતાપૂર્વક પસંદ થયું';

  @override
  String create_report_coordinates(Object lat, Object lng) {
    return 'કોઓર્ડિનેટ્સ: $lat, $lng';
  }

  @override
  String get create_report_attach_media => 'મીડિયા જોડો';

  @override
  String get create_report_attach_photos_videos => 'ફોટા/વિડિઓઝ જોડો';

  @override
  String get create_report_submit => 'રિપોર્ટ સબમિટ કરો';

  @override
  String get create_report_submitting => 'સબમિટ કરી રહ્યું છે...';

  @override
  String create_report_media_attached_success(Object count) {
    return '$count ફાઇલ(ઓ) સફળતાપૂર્વક જોડાઈ';
  }

  @override
  String create_report_media_attach_failed(Object error) {
    return 'મીડિયા જોડવામાં નિષ્ફળ: $error';
  }

  @override
  String get create_report_location_captured_success => 'વર્તમાન સ્થાન સફળતાપૂર્વક કેપ્ચર થયું!';

  @override
  String get create_report_location_permission_denied => 'વપરાશકર્તા દ્વારા સ્થાન પરવાનગી નકારવામાં આવી છે. આ સુવિધાનો ઉપયોગ કરવા માટે કૃપા કરીને સ્થાન ઍક્સેસ આપો.';

  @override
  String get create_report_location_permission_denied_forever => 'સ્થાન પરવાનગીઓ કાયમ માટે નકારવામાં આવી છે. કૃપા કરીને તમારા ઉપકરણ સેટિંગ્સમાં સ્થાન ઍક્સેસ સક્ષમ કરો.';

  @override
  String get create_report_location_services_disabled => 'સ્થાન સેવાઓ અક્ષમ છે. કૃપા કરીને તમારા ઉપકરણ સેટિંગ્સમાં સ્થાન સેવાઓ સક્ષમ કરો.';

  @override
  String get create_report_location_unable_determine => 'સ્થાન નક્કી કરી શકાતું નથી. કૃપા કરીને ફરી પ્રયાસ કરો અથવા નકશા પર જાતે સ્થાન પસંદ કરો.';

  @override
  String get create_report_location_current => 'વર્તમાન સ્થાન';

  @override
  String create_report_location_coordinates(Object lat, Object lng) {
    return 'સ્થાન: $lat, $lng';
  }

  @override
  String get create_report_submit_location_required => 'કૃપા કરીને રિપોર્ટ માટે સ્થાન ઉમેરો';

  @override
  String get create_report_submit_login_required => 'રિપોર્ટ સબમિટ કરવા માટે કૃપા કરીને લૉગ ઇન કરો';

  @override
  String create_report_submit_failed(Object error) {
    return 'રિપોર્ટ સબમિટ કરવામાં નિષ્ફળ: $error';
  }

  @override
  String get create_report_submit_retry => 'ફરી પ્રયાસ કરો';

  @override
  String get create_report_success_title => 'રિપોર્ટ સફળતાપૂર્વક સબમિટ થયો!';

  @override
  String get create_report_success_auto_approved => 'રિપોર્ટ સ્વચાલિત રીતે મંજૂર અને પ્રકાશિત થયો!';

  @override
  String create_report_success_auto_approved_sub(Object score) {
    return 'ઉચ્ચ ટ્રસ્ટ સ્કોર ($score%)';
  }

  @override
  String get create_report_success_review => 'રિપોર્ટ સમીક્ષા માટે સબમિટ કરવામાં આવ્યો છે';

  @override
  String get create_report_success_review_normal => 'સામાન્ય પ્રક્રિયા અપેક્ષિત છે';

  @override
  String get create_report_success_review_verification => 'વધારાની ચકાસણીની જરૂર પડી શકે છે';

  @override
  String get create_report_success_manual_review => 'રિપોર્ટ મેન્યુઅલ સમીક્ષા માટે સબમિટ કરવામાં આવ્યો છે';

  @override
  String get create_report_success_manual_review_sub => 'વિગતવાર ચકાસણી જરૂરી છે';

  @override
  String create_report_success_title_label(Object title) {
    return 'શીર્ષક: $title';
  }

  @override
  String get create_report_unknown_location => 'અજ્ઞાત સ્થાન';

  @override
  String get create_report_selected_location => 'પસંદ કરેલ સ્થાન';
}
