// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Malayalam (`ml`).
class AppLocalizationsMl extends AppLocalizations {
  AppLocalizationsMl([String locale = 'ml']) : super(locale);

  @override
  String get appTitle => 'സെന്റിനൽ';

  @override
  String get common_cancel => 'റദ്ദാക്കുക';

  @override
  String get common_delete => 'മായ്ക്കുക';

  @override
  String get common_edit => 'തിരുത്തുക';

  @override
  String get common_retry => 'വീണ്ടും ശ്രമിക്കുക';

  @override
  String get common_default => 'ഡീഫോൾട്ട്';

  @override
  String get language_select_title => 'ഭാഷ തിരഞ്ഞെടുക്കുക';

  @override
  String get language_select_subtitle => 'സെന്റിനലിനായി നിങ്ങളുടെ ഇഷ്ടഭാഷ തിരഞ്ഞെടുക്കുക';

  @override
  String get language_section_primary => 'പ്രാഥമിക ഭാഷകൾ';

  @override
  String get language_section_west => 'പശ്ചിമ തീരഭാഷകൾ';

  @override
  String get language_section_east => 'കിഴക്കൻ തീരഭാഷകൾ';

  @override
  String get language_section_islands => 'ദ്വീപ് പ്രദേശങ്ങൾ';

  @override
  String language_selected_label(Object language) {
    return 'തിരഞ്ഞെടുത്തത്: $language';
  }

  @override
  String language_changed_snackbar(Object language) {
    return 'ഭാഷ $language ആയി മാറ്റി';
  }

  @override
  String get language_confirm_button => 'ഭാഷ സ്ഥിരീകരിക്കുക';

  @override
  String get login_welcome_to => 'സ്വാഗതം';

  @override
  String get login_title_caps => 'സെന്റിനൽ';

  @override
  String get login_tagline => 'സമുദ്ര അപകട മുന്നറിയിപ്പുകൾക്കായുള്ള നിങ്ങളുടെ സുരക്ഷാ കൂട്ടുകാരൻ';

  @override
  String get login_enter_phone => 'നിങ്ങളുടെ മൊബൈൽ നമ്പർ നൽകുക';

  @override
  String get login_phone_help => 'നിങ്ങൾക്ക് SMS മുഖേന ഒരു പരിശോധന കോഡ് അയയ്ക്കും';

  @override
  String get login_send_otp => 'OTP അയയ്ക്കുക';

  @override
  String get login_terms_prefix => 'തുടരുന്നതിലൂടെ, നിങ്ങൾ ഞങ്ങളുടെ';

  @override
  String get login_terms => 'സേവന നിബന്ധനകൾ';

  @override
  String get login_and => ' കൂടാതെ ';

  @override
  String get login_privacy => 'സ്വകാര്യതാ നയം';

  @override
  String get login_error_enter_phone => 'ദയവായി നിങ്ങളുടെ മൊബൈൽ നമ്പർ നൽകുക';

  @override
  String get login_error_valid_phone => 'ദയവായി സാധുവായ മൊബൈൽ നമ്പർ നൽകുക';

  @override
  String get otp_title => 'പരിശോധന കോഡ് നൽകുക';

  @override
  String otp_sent_to(Object phone) {
    return 'ഞങ്ങൾ 6 അക്ക കോഡ് അയച്ചു\n$phone';
  }

  @override
  String get otp_hint => '000000';

  @override
  String get otp_verify_continue => 'പരിശോധിച്ച് തുടരുക';

  @override
  String get otp_error_incomplete => 'ദയവായി പൂർണ്ണമായ 6 അക്ക കോഡ് നൽകുക';

  @override
  String otp_resend_in(Object seconds) {
    return '$seconds സെക്കൻഡിനകം വീണ്ടും അയയ്ക്കുക';
  }

  @override
  String get otp_resend_cta => 'കോഡ് ലഭിച്ചില്ലേ? വീണ്ടും അയയ്ക്കുക';

  @override
  String get otp_request_first => 'ദയവായി ആദ്യം കോഡ് അഭ്യർത്ഥിക്കുക.';

  @override
  String get otp_invalid_code => 'Invalid code';

  @override
  String get verification_failed => 'Verification failed';

  @override
  String get phone_country_code => '+91';

  @override
  String get phone_hint_number => '98765 43210';

  @override
  String get reports_title => 'എന്റെ റിപ്പോർട്ടുകൾ';

  @override
  String get reports_subtitle => 'നിങ്ങൾ സമർപ്പിച്ച അപകട റിപ്പോർട്ടുകൾ ട്രാക്ക് ചെയ്യുക';

  @override
  String reports_count_label(Object count) {
    return '$count റിപ്പോർട്ടുകൾ';
  }

  @override
  String get reports_filter_label => 'സ്ഥിതി പ്രകാരം ഫിൽട്ടർ ചെയ്യുക';

  @override
  String get status_pending => 'പെൻഡിംഗ്';

  @override
  String get status_verified => 'പരിശോധിച്ചത്';

  @override
  String get status_dismissed => 'റദ്ദാക്കി';

  @override
  String get status_under_review => 'പരിശോധനയിൽ';

  @override
  String get reports_loading => 'നിങ്ങളുടെ റിപ്പോർട്ടുകൾ ലോഡ് ചെയ്യുന്നു...';

  @override
  String get reports_error_title => 'റിപ്പോർട്ടുകൾ ലോഡ് ചെയ്യുന്നതിൽ പിശക്';

  @override
  String get reports_empty_all => 'റിപ്പോർട്ടുകളൊന്നുമില്ല';

  @override
  String reports_empty_filtered(Object status) {
    return 'ഏതെങ്കിലും $status റിപ്പോർട്ടുകളില്ല';
  }

  @override
  String get reports_empty_all_sub => 'സമുദ്രങ്ങളെ സുരക്ഷിതമാക്കാൻ സമുദ്ര അപകടങ്ങൾ റിപ്പോർട്ട് ചെയ്യാൻ തുടങ്ങുക';

  @override
  String get reports_empty_filtered_sub => 'റിപ്പോർട്ടുകൾ കാണാൻ മറ്റൊരു ഫിൽട്ടർ തിരഞ്ഞെടുക്കുക';

  @override
  String get reports_stat_pending => 'പെൻഡിംഗ്';

  @override
  String get reports_stat_verified => 'പരിശോധിച്ചത്';

  @override
  String get reports_stat_dismissed => 'റദ്ദാക്കി';

  @override
  String get time_just_now => 'ഇപ്പോൾ തന്നെ';

  @override
  String time_minutes_ago(Object minutes) {
    return '$minutes മിനിറ്റുകൾ മുമ്പ്';
  }

  @override
  String time_hours_ago(Object hours) {
    return '$hours മണിക്കൂർ മുമ്പ്';
  }

  @override
  String time_days_ago(Object days) {
    return '$days ദിവസം മുമ്പ്';
  }

  @override
  String time_on_date(Object day, Object month, Object year) {
    return '$day/$month/$year';
  }

  @override
  String get report_details_title => 'റിപ്പോർട്ട് വിശദാംശങ്ങൾ';

  @override
  String get report_menu_edit => 'റിപ്പോർട്ട് തിരുത്തുക';

  @override
  String get report_menu_delete => 'റിപ്പോർട്ട് മായ്ക്കുക';

  @override
  String report_reported_on(Object date) {
    return '$date ന് റിപ്പോർട്ട് ചെയ്തു';
  }

  @override
  String get report_section_description => 'വിവരണം';

  @override
  String get report_section_location => 'സ്ഥലം';

  @override
  String report_section_media(Object count) {
    return 'മീഡിയ ($count)';
  }

  @override
  String get report_section_reputation => 'റിപ്പോർട്ട് ചെയ്യുന്നവരുടെ വിശ്വാസ്യത';

  @override
  String get report_media_view_all => 'എല്ലാം കാണുക';

  @override
  String get report_lat_label => 'അക്ഷാംശം:';

  @override
  String get report_lng_label => 'രേഖാംശം:';

  @override
  String get report_action_edit => 'റിപ്പോർട്ട് തിരുത്തുക';

  @override
  String get report_action_delete => 'റിപ്പോർട്ട് മായ്ക്കുക';

  @override
  String get report_delete_title => 'റിപ്പോർട്ട് മായ്ക്കുക';

  @override
  String report_delete_confirm(Object title) {
    return '\"$title\" മായ്ക്കണോ? ഈ നടപടി തിരികെ വാങ്ങാൻ കഴിയില്ല.';
  }

  @override
  String get report_deleted_success => 'റിപ്പോർട്ട് വിജയകരമായി മായ്ച്ചു';

  @override
  String report_delete_failed(Object error) {
    return 'റിപ്പോർട്ട് മായ്ക്കുന്നതിൽ പരാജയപ്പെട്ടു: $error';
  }

  @override
  String get report_edit_coming => 'തിരുത്തൽ സൗകര്യം ഉടൻ വരുന്നു!';

  @override
  String get report_media_coming => 'മീഡിയ കാണിക്കുന്ന സൗകര്യം ഉടൻ വരുന്നു!';

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
