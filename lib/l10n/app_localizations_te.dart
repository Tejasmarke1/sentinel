// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Telugu (`te`).
class AppLocalizationsTe extends AppLocalizations {
  AppLocalizationsTe([String locale = 'te']) : super(locale);

  @override
  String get appTitle => 'సెంటినెల్';

  @override
  String get common_cancel => 'రద్దు చేయండి';

  @override
  String get common_delete => 'తొలగించండి';

  @override
  String get common_edit => 'సవరించండి';

  @override
  String get common_retry => 'మళ్లీ ప్రయత్నించండి';

  @override
  String get common_default => 'డిఫాల్ట్';

  @override
  String get language_select_title => 'భాషను ఎంచుకోండి';

  @override
  String get language_select_subtitle => 'సెంటినెల్ కోసం మీ ఇష్టమైన భాషను ఎంచుకోండి';

  @override
  String get language_section_primary => 'ప్రధాన భాషలు';

  @override
  String get language_section_west => 'పడమటి తీరం భాషలు';

  @override
  String get language_section_east => 'కైటి తీరం భాషలు';

  @override
  String get language_section_islands => 'ద్వీప ప్రాంతాలు';

  @override
  String language_selected_label(Object language) {
    return 'ఎంచుకున్నది: $language';
  }

  @override
  String language_changed_snackbar(Object language) {
    return 'భాష $language కు మార్చబడింది';
  }

  @override
  String get language_confirm_button => 'భాషను ధృవీకరించండి';

  @override
  String get login_welcome_to => 'స్వాగతం';

  @override
  String get login_title_caps => 'సెంటినెల్';

  @override
  String get login_tagline => 'సముద్ర ప్రమాద హెచ్చరికల కోసం మీ భద్రతా తోటి వ్యక్తి';

  @override
  String get login_enter_phone => 'మీ మొబైల్ నంబర్ ను నమోదు చేయండి';

  @override
  String get login_phone_help => 'మేము SMS ద్వారా ఒక ధృవీకరణ కోడ్ పంపుతాము';

  @override
  String get login_send_otp => 'OTP పంపండి';

  @override
  String get login_terms_prefix => 'తదుపరి కొనసాగిస్తూ, మీరు మా';

  @override
  String get login_terms => 'సర్వీస్ నిబంధనలను';

  @override
  String get login_and => ' మరియు ';

  @override
  String get login_privacy => 'ప్రైవసీ పాలసీని అంగీకరిస్తున్నారు';

  @override
  String get login_error_enter_phone => 'దయచేసి మీ మొబైల్ నంబర్ నమోదు చేయండి';

  @override
  String get login_error_valid_phone => 'దయచేసి చెల్లుబాటు అయ్యే మొబైల్ నంబర్ నమోదు చేయండి';

  @override
  String get otp_title => 'ధృవీకరణ కోడ్ నమోదు చేయండి';

  @override
  String otp_sent_to(Object phone) {
    return 'మేము 6 అంకెల కోడ్‌ను పంపాము\n$phone';
  }

  @override
  String get otp_hint => '000000';

  @override
  String get otp_verify_continue => 'ధృవీకరించండి & కొనసాగించండి';

  @override
  String get otp_error_incomplete => 'దయచేసి పూర్తి 6 అంకెల కోడ్ నమోదు చేయండి';

  @override
  String otp_resend_in(Object seconds) {
    return '$seconds సెకన్లలో మళ్లీ పంపండి';
  }

  @override
  String get otp_resend_cta => 'కోడ్ అందలేదు? మళ్లీ పంపండి';

  @override
  String get otp_request_first => 'దయచేసి ముందుగా కోడ్ ను అభ్యర్థించండి.';

  @override
  String get otp_invalid_code => 'Invalid code';

  @override
  String get verification_failed => 'Verification failed';

  @override
  String get phone_country_code => '+91';

  @override
  String get phone_hint_number => '98765 43210';

  @override
  String get reports_title => 'నా రిపోర్టులు';

  @override
  String get reports_subtitle => 'మీ సమర్పించిన ప్రమాద రిపోర్టులను ట్రాక్ చేయండి';

  @override
  String reports_count_label(Object count) {
    return '$count రిపోర్టులు';
  }

  @override
  String get reports_filter_label => 'స్థితి ప్రకారం ఫిల్టర్ చేయండి';

  @override
  String get status_pending => 'పెండింగ్';

  @override
  String get status_verified => 'ధృవీకరించబడింది';

  @override
  String get status_dismissed => 'రద్దు చేయబడింది';

  @override
  String get status_under_review => 'సమీక్షలో ఉంది';

  @override
  String get reports_loading => 'మీ రిపోర్టులు లోడ్ అవుతున్నాయి...';

  @override
  String get reports_error_title => 'రిపోర్టులు లోడ్ చేయడంలో లోపం';

  @override
  String get reports_empty_all => 'రిపోర్టులు లేవు';

  @override
  String reports_empty_filtered(Object status) {
    return 'ఏ $status రిపోర్టులు లేవు';
  }

  @override
  String get reports_empty_all_sub => 'మన సముద్రాలను సురక్షితం చేయడానికి సముద్ర ప్రమాదాలను రిపోర్ట్ చేయడం ప్రారంభించండి';

  @override
  String get reports_empty_filtered_sub => 'రిపోర్టులను చూడవలసిన విభిన్న ఫిల్టర్ ను ఎంచుకోండి';

  @override
  String get reports_stat_pending => 'పెండింగ్';

  @override
  String get reports_stat_verified => 'ధృవీకరించబడింది';

  @override
  String get reports_stat_dismissed => 'రద్దు చేయబడింది';

  @override
  String get time_just_now => 'ఇప్పుడే';

  @override
  String time_minutes_ago(Object minutes) {
    return '$minutes నిమిషాల క్రితం';
  }

  @override
  String time_hours_ago(Object hours) {
    return '$hours గంటల క్రితం';
  }

  @override
  String time_days_ago(Object days) {
    return '$days రోజుల క్రితం';
  }

  @override
  String time_on_date(Object day, Object month, Object year) {
    return '$day/$month/$year';
  }

  @override
  String get report_details_title => 'రిపోర్ట్ వివరాలు';

  @override
  String get report_menu_edit => 'రిపోర్ట్ సవరించండి';

  @override
  String get report_menu_delete => 'రిపోర్ట్ తొలగించండి';

  @override
  String report_reported_on(Object date) {
    return '$dateన రిపోర్ట్ చేయబడింది';
  }

  @override
  String get report_section_description => 'వివరణ';

  @override
  String get report_section_location => 'స్థానం';

  @override
  String report_section_media(Object count) {
    return 'మీడియా ($count)';
  }

  @override
  String get report_section_reputation => 'రిపోర్ట్ చేసిన వారి ప్రతిష్ట';

  @override
  String get report_media_view_all => 'అన్నీ చూడండి';

  @override
  String get report_lat_label => 'అక్షాంశం:';

  @override
  String get report_lng_label => 'రేఖాంశం:';

  @override
  String get report_action_edit => 'రిపోర్ట్ సవరించండి';

  @override
  String get report_action_delete => 'రిపోర్ట్ తొలగించండి';

  @override
  String get report_delete_title => 'రిపోర్ట్ తొలగించండి';

  @override
  String report_delete_confirm(Object title) {
    return 'మీరు \"$title\" తొలగించాలనుకుంటున్నారా? ఈ చర్యను తిరిగి రద్దు చేయలేరు.';
  }

  @override
  String get report_deleted_success => 'రిపోర్ట్ విజయవంతంగా తొలగించబడింది';

  @override
  String report_delete_failed(Object error) {
    return 'రిపోర్ట్ తొలగించడం విఫలమైంది: $error';
  }

  @override
  String get report_edit_coming => 'సవరింపు ఫీచర్ త్వరలో వస్తుంది!';

  @override
  String get report_media_coming => 'మీడియా వీయర్ త్వరలో వస్తుంది!';

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
