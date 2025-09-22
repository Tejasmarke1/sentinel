// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Gujarati (`gu`).
class AppLocalizationsGu extends AppLocalizations {
  AppLocalizationsGu([String locale = 'gu']) : super(locale);

  @override
  String get appTitle => 'સેન્ટિનેલ';

  @override
  String get common_cancel => 'રદ્દ કરો';

  @override
  String get common_delete => 'મટાવો';

  @override
  String get common_edit => 'સંપાદિત કરો';

  @override
  String get common_retry => 'ફરી પ્રયાસ કરો';

  @override
  String get common_default => 'ડિફોલ્ટ';

  @override
  String get language_select_title => 'ભાષા પસંદ કરો';

  @override
  String get language_select_subtitle => 'સેન્ટિનેલ માટે તમારી પસંદીदा ભાષા પસંદ કરો';

  @override
  String get language_section_primary => 'મુખ્ય ભાષાઓ';

  @override
  String get language_section_west => 'પશ્ચિમ તટની ભાષાઓ';

  @override
  String get language_section_east => 'પૂર્વ તટની ભાષાઓ';

  @override
  String get language_section_islands => 'દ્વીપ પ્રદેશો';

  @override
  String language_selected_label(Object language) {
    return 'પસંદ કરેલ: $language';
  }

  @override
  String language_changed_snackbar(Object language) {
    return 'ભાષા $language માં બદલાઈ ગઈ';
  }

  @override
  String get language_confirm_button => 'ભાષા પુષ્ટિ કરો';

  @override
  String get login_welcome_to => 'સ્વાગત છે';

  @override
  String get login_title_caps => 'સેન્ટિનેલ';

  @override
  String get login_tagline => 'સમુદ્ર જોખમ ચેતવણીઓ માટે તમારો સુરક્ષા સાથી';

  @override
  String get login_enter_phone => 'તમારો મોબાઇલ નંબર દાખલ કરો';

  @override
  String get login_phone_help => 'અમે SMS દ્વારા તમને ચકાસણી કોડ મોકલશું';

  @override
  String get login_send_otp => 'OTP મોકલો';

  @override
  String get login_terms_prefix => 'આગળ વધતાં, તમે અમારી';

  @override
  String get login_terms => 'સેવાઓની શરતો';

  @override
  String get login_and => ' અને ';

  @override
  String get login_privacy => 'ગોપનીયતા નીતિ';

  @override
  String get login_error_enter_phone => 'કૃપા કરીને તમારો મોબાઇલ નંબર દાખલ કરો';

  @override
  String get login_error_valid_phone => 'કૃપા કરીને માન્ય મોબાઇલ નંબર દાખલ કરો';

  @override
  String get otp_title => 'ચકાસણી કોડ દાખલ કરો';

  @override
  String otp_sent_to(Object phone) {
    return 'અમે 6-અંકનો કોડ મોકલ્યો છે\n$phone';
  }

  @override
  String get otp_hint => '000000';

  @override
  String get otp_verify_continue => 'ચકાસો & આગળ વધો';

  @override
  String get otp_error_incomplete => 'કૃપા કરીને પૂર્ણ 6-અંકનો કોડ દાખલ કરો';

  @override
  String otp_resend_in(Object seconds) {
    return '$seconds સેકંડમાં ફરી મોકલો';
  }

  @override
  String get otp_resend_cta => 'કોડ મળ્યો નથી? ફરી મોકલો';

  @override
  String get otp_request_first => 'કૃપા કરીને પહેલા કોડ વિનંતી કરો.';

  @override
  String get otp_invalid_code => 'Invalid code';

  @override
  String get verification_failed => 'Verification failed';

  @override
  String get phone_country_code => '+91';

  @override
  String get phone_hint_number => '98765 43210';

  @override
  String get reports_title => 'મારી રિપોર્ટ્સ';

  @override
  String get reports_subtitle => 'તમારા સબમિટ કરેલા જોખમ રિપોર્ટ્સને ટ્રેક કરો';

  @override
  String reports_count_label(Object count) {
    return '$count રિપોર્ટ્સ';
  }

  @override
  String get reports_filter_label => 'સ્થિતિ પ્રમાણે ફિલ્ટર કરો';

  @override
  String get status_pending => 'બાકી છે';

  @override
  String get status_verified => 'ચકાસાયેલું';

  @override
  String get status_dismissed => 'રદ્દ કર્યું';

  @override
  String get status_under_review => 'સમીક્ષામાં';

  @override
  String get reports_loading => 'તમારી રિપોર્ટ્સ લોડ થઈ રહી છે...';

  @override
  String get reports_error_title => 'રિપોર્ટ્સ લોડ કરવામાં ભૂલ';

  @override
  String get reports_empty_all => 'કોઈ રિપોર્ટ નથી';

  @override
  String reports_empty_filtered(Object status) {
    return 'કોઈ $status રિપોર્ટ નથી';
  }

  @override
  String get reports_empty_all_sub => 'અમારા સમુદ્રોને સુરક્ષિત રાખવા માટે સમુદ્રી જોખમોની રિપોર્ટિંગ શરૂ કરો';

  @override
  String get reports_empty_filtered_sub => 'રિપોર્ટ્સ જોવા માટે અન્ય ફિલ્ટર પસંદ કરો';

  @override
  String get reports_stat_pending => 'બાકી છે';

  @override
  String get reports_stat_verified => 'ચકાસાયેલું';

  @override
  String get reports_stat_dismissed => 'રદ્દ કર્યું';

  @override
  String get time_just_now => 'હમણાં';

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
  String get report_details_title => 'રિપોર્ટ વિગતો';

  @override
  String get report_menu_edit => 'રિપોર્ટ સંપાદિત કરો';

  @override
  String get report_menu_delete => 'રિપોર્ટ મટાવો';

  @override
  String report_reported_on(Object date) {
    return '$date ને રિપોર્ટ કર્યું';
  }

  @override
  String get report_section_description => 'વિવરણ';

  @override
  String get report_section_location => 'સ્થાન';

  @override
  String report_section_media(Object count) {
    return 'મીડિયા ($count)';
  }

  @override
  String get report_section_reputation => 'રિપોર્ટ કરનારની પ્રતિષ્ઠા';

  @override
  String get report_media_view_all => 'બધું જુઓ';

  @override
  String get report_lat_label => 'અક્ષાંશ:';

  @override
  String get report_lng_label => 'રેખાંશ:';

  @override
  String get report_action_edit => 'રિપોર્ટ સંપાદિત કરો';

  @override
  String get report_action_delete => 'રિપોર્ટ મટાવો';

  @override
  String get report_delete_title => 'રિપોર્ટ મટાવો';

  @override
  String report_delete_confirm(Object title) {
    return 'શું તમે \"$title\" ને મટાવા માંગો છો? આ ક્રિયાને પાછું લઈ нельзя.';
  }

  @override
  String get report_deleted_success => 'રિપોર્ટ સફળતાપૂર્વક મટાવી દેવામાં આવ્યું';

  @override
  String report_delete_failed(Object error) {
    return 'રિપોર્ટ મટાવવા નિષ્ફળ: $error';
  }

  @override
  String get report_edit_coming => 'સંપાદન સુવિધા ટૂંક સમયમાં આવી રહી છે!';

  @override
  String get report_media_coming => 'મીડિયા વિયવર ટૂંક સમયમાં આવી રહ્યું છે!';

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
