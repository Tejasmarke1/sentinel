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
  String get common_cancel => 'రద్దు చేయి';

  @override
  String get common_delete => 'తొలగించు';

  @override
  String get common_edit => 'సవరించు';

  @override
  String get common_retry => 'మళ్లీ ప్రయత్నించు';

  @override
  String get common_default => 'డిఫాల్ట్';

  @override
  String get language_select_title => 'భాషను ఎంచుకోండి';

  @override
  String get language_select_subtitle => 'సెంటినెల్ కోసం మీకు ఇష్టమైన భాషను ఎంచుకోండి';

  @override
  String get language_section_primary => 'ప్రాథమిక భాషలు';

  @override
  String get language_section_west => 'పశ్చిమ తీర భాషలు';

  @override
  String get language_section_east => 'తూర్పు తీర భాషలు';

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
  String get language_confirm_button => 'భాషను నిర్ధారించండి';

  @override
  String get login_welcome_to => 'కు స్వాగతం';

  @override
  String get login_title_caps => 'సెంటినెల్';

  @override
  String get login_tagline => 'సముద్ర ప్రమాద హెచ్చరికల కోసం మీ భద్రతా సహచరుడు';

  @override
  String get login_enter_phone => 'మీ మొబైల్ నంబర్‌ను నమోదు చేయండి';

  @override
  String get login_phone_help => 'మేము మీకు SMS ద్వారా ధృవీకరణ కోడ్‌ను పంపుతాము';

  @override
  String get login_send_otp => 'OTP పంపండి';

  @override
  String get login_terms_prefix => 'కొనసాగించడం ద్వారా, మీరు మా';

  @override
  String get login_terms => 'సేవా నిబంధనలు';

  @override
  String get login_and => ' మరియు ';

  @override
  String get login_privacy => 'గోప్యతా విధానానికి అంగీకరిస్తున్నారు';

  @override
  String get login_error_enter_phone => 'దయచేసి మీ మొబైల్ నంబర్‌ను నమోదు చేయండి';

  @override
  String get login_error_valid_phone => 'దయచేసి చెల్లుబాటు అయ్యే మొబైల్ నంబర్‌ను నమోదు చేయండి';

  @override
  String get otp_title => 'ధృవీకరణ కోడ్‌ను నమోదు చేయండి';

  @override
  String otp_sent_to(Object phone) {
    return 'మేము $phone కు 6-అంకెల కోడ్‌ను పంపాము';
  }

  @override
  String get otp_hint => '౦౦౦౦౦౦';

  @override
  String get otp_verify_continue => 'ధృవీకరించి కొనసాగించండి';

  @override
  String get otp_error_incomplete => 'దయచేసి పూర్తి 6-అంకెల కోడ్‌ను నమోదు చేయండి';

  @override
  String otp_resend_in(Object seconds) {
    return '$seconds సెకన్లలో కోడ్‌ను మళ్లీ పంపండి';
  }

  @override
  String get otp_resend_cta => 'కోడ్ అందలేదా? మళ్లీ పంపండి';

  @override
  String get otp_request_first => 'దయచేసి మొదట కోడ్‌ను అభ్యర్థించండి.';

  @override
  String get otp_invalid_code => 'చెల్లని కోడ్';

  @override
  String get verification_failed => 'ధృవీకరణ విఫలమైంది';

  @override
  String get phone_country_code => '+౯౧';

  @override
  String get phone_hint_number => '౯౮౭౬౫ ౪౩౨౧౦';

  @override
  String get reports_title => 'నా నివేదికలు';

  @override
  String get reports_subtitle => 'మీరు సమర్పించిన ప్రమాద నివేదికలను ట్రాక్ చేయండి';

  @override
  String reports_count_label(Object count) {
    return '$count నివేదికలు';
  }

  @override
  String get reports_filter_label => 'స్థితి ఆధారంగా ఫిల్టర్ చేయండి';

  @override
  String get status_pending => 'పెండింగ్‌లో ఉంది';

  @override
  String get status_verified => 'ధృవీకరించబడింది';

  @override
  String get status_dismissed => 'తిరస్కరించబడింది';

  @override
  String get status_under_review => 'సమీక్షలో ఉంది';

  @override
  String get reports_loading => 'మీ నివేదికలు లోడ్ అవుతున్నాయి...';

  @override
  String get reports_error_title => 'నివేదికలను లోడ్ చేయడంలో లోపం';

  @override
  String get reports_empty_all => 'ఇంకా నివేదికలు లేవు';

  @override
  String reports_empty_filtered(Object status) {
    return '$status నివేదికలు లేవు';
  }

  @override
  String get reports_empty_all_sub => 'మన జలాలను సురక్షితంగా ఉంచడానికి సముద్ర ప్రమాదాలను నివేదించడం ప్రారంభించండి';

  @override
  String get reports_empty_filtered_sub => 'నివేదికలను వీక్షించడానికి వేరొక ఫిల్టర్‌ను ఎంచుకోవడానికి ప్రయత్నించండి';

  @override
  String get reports_stat_pending => 'పెండింగ్‌లో ఉంది';

  @override
  String get reports_stat_verified => 'ధృవీకరించబడింది';

  @override
  String get reports_stat_dismissed => 'తిరస్కరించబడింది';

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
  String get report_menu_edit => 'నివేదికను సవరించండి';

  @override
  String get report_menu_delete => 'నివేదికను తొలగించండి';

  @override
  String get report_delete_title => 'నివేదికను తొలగించండి';

  @override
  String report_delete_confirm(Object title) {
    return 'మీరు \"$title\"ను తొలగించాలనుకుంటున్నారని ఖచ్చితంగా ఉన్నారా? ఈ చర్యను రద్దు చేయడం సాధ్యం కాదు.';
  }

  @override
  String get report_deleted_success => 'నివేదిక విజయవంతంగా తొలగించబడింది';

  @override
  String report_delete_failed(Object error) {
    return 'నివేదికను తొలగించడంలో విఫలమైంది: $error';
  }

  @override
  String get report_edit_coming => 'సవరణ కార్యాచరణ త్వరలో వస్తుంది!';

  @override
  String get report_media_coming => 'మీడియా వ్యూయర్ త్వరలో వస్తుంది!';

  @override
  String get report_section_description => 'వివరణ';

  @override
  String get report_section_location => 'స్థానం';

  @override
  String report_section_media(Object count) {
    return 'మీడియా ($count)';
  }

  @override
  String get report_section_reputation => 'రిపోర్టర్ కీర్తి';

  @override
  String get report_media_view_all => 'అన్నీ చూడండి';

  @override
  String get report_lat_label => 'అక్షాంశం:';

  @override
  String get report_lng_label => 'రేఖాంశం:';

  @override
  String get report_action_edit => 'నివేదికను సవరించండి';

  @override
  String get report_action_delete => 'తొలగించు';

  @override
  String get report_details_title => 'నివేదిక వివరాలు';

  @override
  String get report_id_label => 'నివేదిక ఐడి';

  @override
  String report_attachments_label(Object count) {
    return 'జోడింపులు ($count)';
  }

  @override
  String get report_media_files => 'మీడియా ఫైళ్లు';

  @override
  String report_media_files_attached(Object count) {
    return 'ఈ నివేదికతో $count ఫైల్(లు) జోడించబడ్డాయి';
  }

  @override
  String get report_media_view => 'చూడండి';

  @override
  String get nav_home => 'హోమ్';

  @override
  String get nav_alerts => 'హెచ్చరికలు';

  @override
  String get nav_reports => 'నివేదికలు';

  @override
  String get nav_profile => 'ప్రొఫైల్';

  @override
  String get onboard_complete_your => 'మీ';

  @override
  String get onboard_profile_setup => 'ప్రొఫైల్ సెటప్‌ను పూర్తి చేయండి';

  @override
  String get onboard_header_subtitle => 'మీ అనుభవాన్ని వ్యక్తిగతీకరించడానికి మరియు మిమ్మల్ని సురక్షితంగా ఉంచడానికి మాకు సహాయపడండి';

  @override
  String get onboard_full_name_label => 'పూర్తి పేరు';

  @override
  String get onboard_full_name_hint => 'మీ పూర్తి పేరును నమోదు చేయండి';

  @override
  String get onboard_full_name_error => 'దయచేసి మీ పేరును నమోదు చేయండి';

  @override
  String get onboard_email_label => 'ఇమెయిల్ చిరునామా';

  @override
  String get onboard_email_hint => 'మీ ఇమెయిల్ చిరునామాను నమోదు చేయండి';

  @override
  String get onboard_email_error_empty => 'దయచేసి మీ ఇమెయిల్‌ను నమోదు చేయండి';

  @override
  String get onboard_email_error_invalid => 'దయచేసి చెల్లుబాటు అయ్యే ఇమెయిల్ చిరునామాను నమోదు చేయండి';

  @override
  String get onboard_trust_title => 'ట్రస్ట్ స్కోర్ సిస్టమ్';

  @override
  String get onboard_trust_desc => 'మీ నివేదికలు నివేదిక నాణ్యత, స్థాన ఖచ్చితత్వం మరియు నివేదన చరిత్ర ఆధారంగా మూల్యాంకనం చేయబడతాయి. వివరణాత్మక, ఖచ్చితమైన నివేదికలను సమర్పించడం ద్వారా మీ కీర్తిని పెంచుకోండి.';

  @override
  String get onboard_continue => 'సెటప్‌ను పూర్తి చేయండి';

  @override
  String get onboard_footer_secure => 'మీ సమాచారం సురక్షితంగా మరియు గుప్తీకరించబడింది';

  @override
  String get dashboard_live => 'లైవ్';

  @override
  String get dashboard_title => 'సముద్ర భద్రతా డాష్‌బోర్డ్';

  @override
  String get dashboard_stat_active_alerts => 'క్రియాశీల హెచ్చరికలు';

  @override
  String get dashboard_stat_verified => 'ధృవీకరించబడింది';

  @override
  String get dashboard_stat_this_week => 'ఈ వారం';

  @override
  String get dashboard_recent_reports => 'ఇటీవలి ప్రమాద నివేదికలు';

  @override
  String get profile_title => 'ప్రొఫైల్';

  @override
  String get profile_subtitle => 'మీ ఖాతా మరియు సెట్టింగ్‌లను నిర్వహించండి';

  @override
  String get profile_user_not_logged_in => 'వినియోగదారు లాగిన్ కాలేదు.';

  @override
  String get profile_could_not_load_data => 'వినియోగదారు డేటాను లోడ్ చేయడం సాధ్యం కాలేదు.';

  @override
  String profile_something_wrong(Object error) {
    return 'ఏదో పొరపాటు జరిగింది: $error';
  }

  @override
  String get profile_verified => 'ధృవీకరించబడింది';

  @override
  String profile_member_since(Object date) {
    return '$date నుండి సభ్యుడు';
  }

  @override
  String get profile_email => 'ఇమెయిల్';

  @override
  String get profile_phone => 'ఫోన్';

  @override
  String get profile_edit_profile => 'ప్రొఫైల్‌ను సవరించండి';

  @override
  String get profile_statistics_title => 'గణాంకాలు & సారాంశం';

  @override
  String get profile_reports_submitted => 'సమర్పించిన నివేదికలు';

  @override
  String get profile_verified_reports => 'ధృవీకరించబడిన నివేదికలు';

  @override
  String get profile_pending_reports => 'పెండింగ్‌లో ఉన్న నివేదికలు';

  @override
  String get profile_rejected_reports => 'తిరస్కరించబడిన నివేదికలు';

  @override
  String profile_could_not_load_stats(Object error) {
    return 'గణాంకాలను లోడ్ చేయడం సాధ్యం కాలేదు: $error';
  }

  @override
  String get profile_no_stats_available => 'గణాంకాలు అందుబాటులో లేవు.';

  @override
  String get profile_account_options => 'ఖాతా ఎంపికలు';

  @override
  String get profile_language_settings => 'భాషా సెట్టింగ్‌లు';

  @override
  String get profile_language_settings_desc => 'మీకు ఇష్టమైన భాషను ఎంచుకోండి';

  @override
  String get profile_notification_settings => 'నోటిఫికేషన్ సెట్టింగ్‌లు';

  @override
  String get profile_notification_settings_desc => 'హెచ్చరికలు మరియు పుష్ నోటిఫికేషన్‌లను నిర్వహించండి';

  @override
  String get profile_privacy_permissions => 'గోప్యత & అనుమతులు';

  @override
  String get profile_privacy_permissions_desc => 'మీ డేటా మరియు యాప్ అనుమతులను నియంత్రించండి';

  @override
  String get profile_help_support => 'సహాయం & మద్దతు';

  @override
  String get profile_help_support_desc => 'సహాయం పొందండి మరియు మద్దతును సంప్రదించండి';

  @override
  String get profile_help_coming_soon => 'సహాయం & మద్దతు త్వరలో వస్తుంది!';

  @override
  String get profile_about_sentinel => 'సెంటినెల్ గురించి';

  @override
  String get profile_about_sentinel_desc => 'యాప్ వెర్షన్ మరియు సమాచారం';

  @override
  String get profile_app_name => 'సెంటినెల్';

  @override
  String get profile_app_version => '౧.౦.౦';

  @override
  String get profile_app_description => 'క్రౌడ్‌సోర్స్డ్ సముద్ర ప్రమాద హెచ్చరికలు\n\nసంఘం నివేదన ద్వారా మన సముద్రాలను సురక్షితంగా ఉంచడంలో సహాయపడటం.';

  @override
  String get profile_logout => 'లాగ్ అవుట్';

  @override
  String get profile_logout_desc => 'మీ ఖాతా నుండి సైన్ అవుట్ చేయండి';

  @override
  String get profile_logout_confirm => 'మీరు సెంటినెల్ నుండి లాగ్ అవుట్ చేయాలనుకుంటున్నారని ఖచ్చితంగా ఉన్నారా?';

  @override
  String get profile_cancel => 'రద్దు చేయి';

  @override
  String profile_logout_failed(Object error) {
    return 'లాగ్ అవుట్ విఫలమైంది: $error';
  }

  @override
  String get profile_edit_profile_title => 'ప్రొఫైల్‌ను సవరించండి';

  @override
  String get profile_full_name_label => 'పూర్తి పేరు';

  @override
  String get profile_full_name_hint => 'మీ పూర్తి పేరును నమోదు చేయండి';

  @override
  String get profile_full_name_error => 'దయచేసి మీ పేరును నమోదు చేయండి';

  @override
  String get profile_email_label => 'ఇమెయిల్ చిరునామా';

  @override
  String get profile_email_hint => 'మీ ఇమెయిల్ చిరునామాను నమోదు చేయండి';

  @override
  String get profile_email_error_empty => 'దయచేసి మీ ఇమెయిల్‌ను నమోదు చేయండి';

  @override
  String get profile_email_error_invalid => 'దయచేసి చెల్లుబాటు అయ్యే ఇమెయిల్ చిరునామాను నమోదు చేయండి';

  @override
  String get profile_phone_label => 'ఫోన్ నంబర్';

  @override
  String get profile_save_changes => 'మార్పులను సేవ్ చేయండి';

  @override
  String get profile_user_not_found => 'లోపం: వినియోగదారు కనుగొనబడలేదు.';

  @override
  String get profile_updated_success => 'ప్రొఫైల్ విజయవంతంగా నవీకరించబడింది!';

  @override
  String profile_update_failed(Object error) {
    return 'ప్రొఫైల్‌ను నవీకరించడంలో విఫలమైంది: $error';
  }

  @override
  String profile_language_update_failed(Object error) {
    return 'భాషను నవీకరించడంలో విఫలమైంది: $error';
  }

  @override
  String get profile_notification_title => 'నోటిఫికేషన్ సెట్టింగ్‌లు';

  @override
  String get profile_general_notifications => 'సాధారణ నోటిఫికేషన్‌లు';

  @override
  String get profile_push_notifications => 'పుష్ నోటిఫికేషన్‌లు';

  @override
  String get profile_push_notifications_desc => 'మీ పరికరంలో నోటిఫికేషన్‌లను స్వీకరించండి';

  @override
  String get profile_email_notifications => 'ఇమెయిల్ నోటిఫికేషన్‌లు';

  @override
  String get profile_email_notifications_desc => 'ఇమెయిల్ ద్వారా నోటిఫికేషన్‌లను స్వీకరించండి';

  @override
  String get profile_alert_types => 'హెచ్చరిక రకాలు';

  @override
  String get profile_critical_safety_alerts => 'క్లిష్టమైన భద్రతా హెచ్చరికలు';

  @override
  String get profile_critical_safety_alerts_desc => 'తక్షణ ప్రమాదం మరియు అత్యవసర హెచ్చరికలు';

  @override
  String get profile_report_status_updates => 'నివేదిక స్థితి నవీకరణలు';

  @override
  String get profile_report_status_updates_desc => 'మీరు సమర్పించిన నివేదికలపై నవీకరణలు';

  @override
  String get profile_news_updates => 'వార్తలు & నవీకరణలు';

  @override
  String get profile_news_updates_desc => 'సముద్ర భద్రతా వార్తలు మరియు యాప్ నవీకరణలు';

  @override
  String get profile_critical_alerts_info => 'మీ రక్షణ కోసం క్లిష్టమైన భద్రతా హెచ్చరికలను నిలిపివేయడం సాధ్యం కాదు.';

  @override
  String get profile_privacy_title => 'గోప్యత & అనుమతులు';

  @override
  String get profile_location_data => 'స్థానం & డేటా';

  @override
  String get profile_location_sharing => 'స్థాన భాగస్వామ్యం';

  @override
  String get profile_location_sharing_desc => 'నివేదికల కోసం మీ స్థానాన్ని యాక్సెస్ చేయడానికి యాప్‌ను అనుమతించండి';

  @override
  String get profile_public_profile => 'ప్రజా ప్రొఫైల్';

  @override
  String get profile_public_profile_desc => 'మీ ప్రొఫైల్‌ను ఇతర వినియోగదారులకు కనిపించేలా చేయండి';

  @override
  String get profile_app_analytics => 'యాప్ విశ్లేషణలు';

  @override
  String get profile_usage_analytics => 'వినియోగ విశ్లేషణలు';

  @override
  String get profile_usage_analytics_desc => 'వినియోగ డేటాను పంచుకోవడం ద్వారా యాప్‌ను మెరుగుపరచడంలో సహాయపడండి';

  @override
  String get profile_crash_reporting => 'క్రాష్ రిపోర్టింగ్';

  @override
  String get profile_crash_reporting_desc => 'డెవలపర్‌లకు స్వయంచాలకంగా క్రాష్ నివేదికలను పంపండి';

  @override
  String get profile_view_privacy_policy => 'గోప్యతా విధానాన్ని వీక్షించండి';

  @override
  String get profile_opening_privacy_policy => 'గోప్యతా విధానం తెరవబడుతోంది...';

  @override
  String get profile_export_my_data => 'నా డేటాను ఎగుమతి చేయండి';

  @override
  String get profile_data_export_submitted => 'డేటా ఎగుమతి అభ్యర్థన సమర్పించబడింది';

  @override
  String get profile_delete_my_account => 'నా ఖాతాను తొలగించండి';

  @override
  String get profile_delete_account_title => 'ఖాతాను తొలగించండి';

  @override
  String get profile_delete_account_confirm => 'ఈ చర్యను రద్దు చేయడం సాధ్యం కాదు. మీ అన్ని నివేదికలు మరియు డేటా శాశ్వతంగా తొలగించబడతాయి. మీరు కొనసాగించాలనుకుంటున్నారని ఖచ్చితంగా ఉన్నారా?';

  @override
  String get profile_delete_account_submitted => 'ఖాతా తొలగింపు అభ్యర్థన సమర్పించబడింది';

  @override
  String get profile_no_name_provided => 'పేరు అందించబడలేదు';

  @override
  String get profile_no_email_provided => 'ఇమెయిల్ అందించబడలేదు';

  @override
  String get profile_no_phone_provided => 'ఫోన్ నంబర్ అందించబడలేదు';

  @override
  String get profile_default_location => 'పుణె, మహారాష్ట్ర, భారతదేశం';

  @override
  String get profile_default_language => 'te';

  @override
  String get profile_months => 'జన,ఫిబ్ర,మార్చి,ఏప్రి,మే,జూన్,జూలై,ఆగ,సెప్టెం,అక్టో,నవం,డిసెం';

  @override
  String get create_report_title => 'ప్రమాద నివేదికను సృష్టించండి';

  @override
  String get create_report_subtitle => 'మన సముద్రాలను సురక్షితంగా ఉంచడంలో సహాయపడండి';

  @override
  String get create_report_description_label => 'వివరణ *';

  @override
  String get create_report_description_hint => 'మీరు గమనించిన సముద్ర ప్రమాదాన్ని వివరించండి...';

  @override
  String get create_report_description_error_empty => 'దయచేసి వివరణను అందించండి';

  @override
  String get create_report_description_error_min_length => 'వివరణ కనీసం 10 అక్షరాలు ఉండాలి';

  @override
  String get create_report_location_label => 'స్థానం *';

  @override
  String get create_report_location_hint => 'స్థానాన్ని నమోదు చేయండి లేదా క్రింది బటన్‌లను ఉపయోగించండి';

  @override
  String get create_report_location_error => 'దయచేసి స్థానాన్ని జోడించండి';

  @override
  String get create_report_current_location => 'ప్రస్తుత స్థానం';

  @override
  String get create_report_getting_location => 'పొందుతోంది...';

  @override
  String get create_report_pin_on_map => 'మ్యాప్‌లో పిన్ చేయండి';

  @override
  String get create_report_location_selected => 'స్థానం విజయవంతంగా ఎంచుకోబడింది';

  @override
  String create_report_coordinates(Object lat, Object lng) {
    return 'నిరూపకాలు: $lat, $lng';
  }

  @override
  String get create_report_attach_media => 'మీడియాను జోడించండి';

  @override
  String get create_report_attach_photos_videos => 'ఫోటోలు/వీడియోలను జోడించండి';

  @override
  String get create_report_submit => 'నివేదికను సమర్పించండి';

  @override
  String get create_report_submitting => 'సమర్పిస్తోంది...';

  @override
  String create_report_media_attached_success(Object count) {
    return '$count ఫైల్(లు) విజయవంతంగా జోడించబడ్డాయి';
  }

  @override
  String create_report_media_attach_failed(Object error) {
    return 'మీడియాను జోడించడంలో విఫలమైంది: $error';
  }

  @override
  String get create_report_location_captured_success => 'ప్రస్తుత స్థానం విజయవంతంగా సంగ్రహించబడింది!';

  @override
  String get create_report_location_permission_denied => 'వినియోగదారు స్థాన అనుమతిని నిరాకరించారు. ఈ ఫీచర్‌ను ఉపయోగించడానికి దయచేసి స్థాన ప్రాప్యతను మంజూరు చేయండి.';

  @override
  String get create_report_location_permission_denied_forever => 'స్థాన అనుమతులు శాశ్వతంగా నిరాకరించబడ్డాయి. దయచేసి మీ పరికర సెట్టింగ్‌లలో స్థాన ప్రాప్యతను ప్రారంభించండి.';

  @override
  String get create_report_location_services_disabled => 'స్థాన సేవలు నిలిపివేయబడ్డాయి. దయచేసి మీ పరికర సెట్టింగ్‌లలో స్థాన సేవలను ప్రారంభించండి.';

  @override
  String get create_report_location_unable_determine => 'స్థానాన్ని గుర్తించడం సాధ్యం కాలేదు. దయచేసి మళ్లీ ప్రయత్నించండి లేదా మ్యాప్‌లో మానవీయంగా స్థానాన్ని ఎంచుకోండి.';

  @override
  String get create_report_location_current => 'ప్రస్తుత స్థానం';

  @override
  String create_report_location_coordinates(Object lat, Object lng) {
    return 'స్థానం: $lat, $lng';
  }

  @override
  String get create_report_submit_location_required => 'దయచేసి నివేదిక కోసం స్థానాన్ని జోడించండి';

  @override
  String get create_report_submit_login_required => 'నివేదికను సమర్పించడానికి దయచేసి లాగిన్ చేయండి';

  @override
  String create_report_submit_failed(Object error) {
    return 'నివేదికను సమర్పించడంలో విఫలమైంది: $error';
  }

  @override
  String get create_report_submit_retry => 'మళ్లీ ప్రయత్నించు';

  @override
  String get create_report_success_title => 'నివేదిక విజయవంతంగా సమర్పించబడింది!';

  @override
  String get create_report_success_auto_approved => 'నివేదిక స్వయంచాలకంగా ఆమోదించబడింది మరియు ప్రచురించబడింది!';

  @override
  String create_report_success_auto_approved_sub(Object score) {
    return 'అధిక విశ్వాస స్కోరు ($score%)';
  }

  @override
  String get create_report_success_review => 'నివేదిక సమీక్ష కోసం సమర్పించబడింది';

  @override
  String get create_report_success_review_normal => 'సాధారణ ప్రాసెసింగ్ ఆశించబడింది';

  @override
  String get create_report_success_review_verification => 'అదనపు ధృవీకరణ అవసరం కావచ్చు';

  @override
  String get create_report_success_manual_review => 'నివేదిక మానవీయ సమీక్ష కోసం సమర్పించబడింది';

  @override
  String get create_report_success_manual_review_sub => 'వివరణాత్మక ధృవీకరణ అవసరం';

  @override
  String create_report_success_title_label(Object title) {
    return 'శీర్షిక: $title';
  }

  @override
  String get create_report_unknown_location => 'తెలియని స్థానం';

  @override
  String get create_report_selected_location => 'ఎంచుకున్న స్థానం';
}
