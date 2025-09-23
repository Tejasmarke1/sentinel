// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Assamese (`as`).
class AppLocalizationsAs extends AppLocalizations {
  AppLocalizationsAs([String locale = 'as']) : super(locale);

  @override
  String get appTitle => 'চেন্টিনেল';

  @override
  String get common_cancel => 'বাতিল কৰক';

  @override
  String get common_delete => 'মচি পেলাওক';

  @override
  String get common_edit => 'সম্পাদনা কৰক';

  @override
  String get common_retry => 'পুনৰ চেষ্টা কৰক';

  @override
  String get common_default => 'ডিফল্ট';

  @override
  String get language_select_title => 'ভাষা বাছক';

  @override
  String get language_select_subtitle => 'চেন্টিনেলৰ বাবে আপোনাৰ পছন্দৰ ভাষা বাছক';

  @override
  String get language_section_primary => 'প্ৰাথমিক ভাষাসমূহ';

  @override
  String get language_section_west => 'পশ্চিম উপকূলীয় ভাষাসমূহ';

  @override
  String get language_section_east => 'পূব উপকূলীয় ভাষাসমূহ';

  @override
  String get language_section_islands => 'দ্বীপপুঞ্জৰ ভাষাসমূহ';

  @override
  String language_selected_label(Object language) {
    return 'বাছনি কৰা হৈছে: $language';
  }

  @override
  String language_changed_snackbar(Object language) {
    return 'ভাষা $language লৈ সলনি কৰা হৈছে';
  }

  @override
  String get language_confirm_button => 'ভাষা নিশ্চিত কৰক';

  @override
  String get login_welcome_to => 'লৈ স্বাগতম';

  @override
  String get login_title_caps => 'চেন্টিনেল';

  @override
  String get login_tagline => 'সাগৰীয় বিপদৰ সতৰ্কবাণীৰ বাবে আপোনাৰ সুৰক্ষা সংগী';

  @override
  String get login_enter_phone => 'আপোনাৰ মোবাইল নম্বৰ দিয়ক';

  @override
  String get login_phone_help => 'আমি আপোনাক SMS যোগে এটা সত্যাপন কোড পঠিয়াম';

  @override
  String get login_send_otp => 'OTP পঠাওক';

  @override
  String get login_terms_prefix => 'আগুৱাই গ\'লে, আপুনি আমাৰ';

  @override
  String get login_terms => 'সেৱাৰ চৰ্তাৱলী';

  @override
  String get login_and => ' আৰু ';

  @override
  String get login_privacy => 'গোপনীয়তা নীতিত সন্মত হৈছে';

  @override
  String get login_error_enter_phone => 'অনুগ্ৰহ কৰি আপোনাৰ মোবাইল নম্বৰ দিয়ক';

  @override
  String get login_error_valid_phone => 'অনুগ্ৰহ কৰি এটা বৈধ মোবাইল নম্বৰ দিয়ক';

  @override
  String get otp_title => 'সত্যাপন কোড দিয়ক';

  @override
  String otp_sent_to(Object phone) {
    return 'আমি $phone নম্বৰলৈ এটা ৬-অংকীয়া কোড পঠিয়াইছোঁ';
  }

  @override
  String get otp_hint => '০০০০০০';

  @override
  String get otp_verify_continue => 'সত্যাপন কৰক আৰু আগবাঢ়ক';

  @override
  String get otp_error_incomplete => 'অনুগ্ৰহ কৰি সম্পূৰ্ণ ৬-অংকীয়া কোড দিয়ক';

  @override
  String otp_resend_in(Object seconds) {
    return '$seconds ছেকেণ্ডত কোড পুনৰ পঠাওক';
  }

  @override
  String get otp_resend_cta => 'কোড পোৱা নাই? পুনৰ পঠাওক';

  @override
  String get otp_request_first => 'অনুগ্ৰহ কৰি প্ৰথমে কোডৰ বাবে অনুৰোধ কৰক।';

  @override
  String get otp_invalid_code => 'অবৈধ কোড';

  @override
  String get verification_failed => 'সত্যাপন বিফল হ\'ল';

  @override
  String get phone_country_code => '+৯১';

  @override
  String get phone_hint_number => '৯৮৭৬৫ ৪৩২১০';

  @override
  String get reports_title => 'মোৰ প্ৰতিবেদন';

  @override
  String get reports_subtitle => 'আপোনাৰ দাখিল কৰা বিপদৰ প্ৰতিবেদনসমূহ চাওক';

  @override
  String reports_count_label(Object count) {
    return '$countটা প্ৰতিবেদন';
  }

  @override
  String get reports_filter_label => 'স্থিতি অনুসৰি ফিল্টাৰ কৰক';

  @override
  String get status_pending => 'অমীমাংসিত';

  @override
  String get status_verified => 'সত্যাপিত';

  @override
  String get status_dismissed => 'অগ্ৰাহ্য';

  @override
  String get status_under_review => 'পৰ্যালোচনাধীন';

  @override
  String get reports_loading => 'আপোনাৰ প্ৰতিবেদন লোড হৈ আছে...';

  @override
  String get reports_error_title => 'প্ৰতিবেদন লোড কৰাত ত্ৰুটি';

  @override
  String get reports_empty_all => 'এতিয়ালৈকে কোনো প্ৰতিবেদন নাই';

  @override
  String reports_empty_filtered(Object status) {
    return 'কোনো $status প্ৰতিবেদন নাই';
  }

  @override
  String get reports_empty_all_sub => 'আমাৰ জলৰাশি সুৰক্ষিত ৰাখিবলৈ সাগৰীয় বিপদৰ বিষয়ে প্ৰতিবেদন দিয়া আৰম্ভ কৰক';

  @override
  String get reports_empty_filtered_sub => 'প্ৰতিবেদন চাবলৈ এটা বেলেগ ফিল্টাৰ বাছি চেষ্টা কৰক';

  @override
  String get reports_stat_pending => 'অমীমাংসিত';

  @override
  String get reports_stat_verified => 'সত্যাপিত';

  @override
  String get reports_stat_dismissed => 'অগ্ৰাহ্য';

  @override
  String get time_just_now => 'এইমাত্ৰ';

  @override
  String time_minutes_ago(Object minutes) {
    return '$minutes মিনিট আগতে';
  }

  @override
  String time_hours_ago(Object hours) {
    return '$hours ঘণ্টা আগতে';
  }

  @override
  String time_days_ago(Object days) {
    return '$days দিন আগতে';
  }

  @override
  String time_on_date(Object day, Object month, Object year) {
    return '$day/$month/$year';
  }

  @override
  String get report_menu_edit => 'প্ৰতিবেদন সম্পাদনা কৰক';

  @override
  String get report_menu_delete => 'প্ৰতিবেদন মচি পেলাওক';

  @override
  String get report_delete_title => 'প্ৰতিবেদন মচি পেলাওক';

  @override
  String report_delete_confirm(Object title) {
    return 'আপুনি সঁচাকৈ \"$title\" মচিব বিচাৰে নেকি? এই কাৰ্যটো বাতিল কৰিব নোৱাৰি।';
  }

  @override
  String get report_deleted_success => 'প্ৰতিবেদন সফলতাৰে মচা হ\'ল';

  @override
  String report_delete_failed(Object error) {
    return 'প্ৰতিবেদন মচিবলৈ বিফল হ\'ল: $error';
  }

  @override
  String get report_edit_coming => 'সম্পাদনা সুবিধা সোনকালেই আহি আছে!';

  @override
  String get report_media_coming => 'মিডিয়া ভিউৱাৰ সোনকালেই আহি আছে!';

  @override
  String get report_section_description => 'বিৱৰণ';

  @override
  String get report_section_location => 'অৱস্থান';

  @override
  String report_section_media(Object count) {
    return 'মিডিয়া ($count)';
  }

  @override
  String get report_section_reputation => 'প্ৰতিবেদকৰ খ্যাতি';

  @override
  String get report_media_view_all => 'সকলো চাওক';

  @override
  String get report_lat_label => 'অক্ষাংশ:';

  @override
  String get report_lng_label => 'দ্ৰাঘিমাংশ:';

  @override
  String get report_action_edit => 'প্ৰতিবেদন সম্পাদনা কৰক';

  @override
  String get report_action_delete => 'মচি পেলাওক';

  @override
  String get report_details_title => 'প্ৰতিবেদনৰ বিৱৰণ';

  @override
  String get report_id_label => 'প্ৰতিবেদন আইডি';

  @override
  String report_attachments_label(Object count) {
    return 'সংযুক্তি ($count)';
  }

  @override
  String get report_media_files => 'মিডিয়া ফাইল';

  @override
  String report_media_files_attached(Object count) {
    return 'এই প্ৰতিবেদনৰ সৈতে $countটা ফাইল সংলগ্ন কৰা হৈছে';
  }

  @override
  String get report_media_view => 'চাওক';

  @override
  String get nav_home => 'হোম';

  @override
  String get nav_alerts => 'সতৰ্কবাণী';

  @override
  String get nav_reports => 'প্ৰতিবেদন';

  @override
  String get nav_profile => 'প্ৰ\'ফাইল';

  @override
  String get onboard_complete_your => 'আপোনাৰ';

  @override
  String get onboard_profile_setup => 'প্ৰ\'ফাইল ছেটআপ সম্পূৰ্ণ কৰক';

  @override
  String get onboard_header_subtitle => 'আপোনাৰ অভিজ্ঞতা ব্যক্তিগতকৰণ কৰাত আৰু আপোনাক সুৰক্ষিত ৰখাত আমাক সহায় কৰক';

  @override
  String get onboard_full_name_label => 'সম্পূৰ্ণ নাম';

  @override
  String get onboard_full_name_hint => 'আপোনাৰ সম্পূৰ্ণ নাম দিয়ক';

  @override
  String get onboard_full_name_error => 'অনুগ্ৰহ কৰি আপোনাৰ নাম দিয়ক';

  @override
  String get onboard_email_label => 'ইমেইল ঠিকনা';

  @override
  String get onboard_email_hint => 'আপোনাৰ ইমেইল ঠিকনা দিয়ক';

  @override
  String get onboard_email_error_empty => 'অনুগ্ৰহ কৰি আপোনাৰ ইমেইল দিয়ক';

  @override
  String get onboard_email_error_invalid => 'অনুগ্ৰহ কৰি এটা বৈধ ইমেইল ঠিকনা দিয়ক';

  @override
  String get onboard_trust_title => 'বিশ্বাস স্ক\'ৰ প্ৰণালী';

  @override
  String get onboard_trust_desc => 'আপোনাৰ প্ৰতিবেদনসমূহৰ গুণগত মান, অৱস্থানৰ সঠিকতা, আৰু প্ৰতিবেদনৰ ইতিহাসৰ ওপৰত ভিত্তি কৰি মূল্যায়ন কৰা হ\'ব। বিতং আৰু সঠিক প্ৰতিবেদন দাখিল কৰি আপোনাৰ খ্যাতি বঢ়াওক।';

  @override
  String get onboard_continue => 'ছেটআপ সম্পূৰ্ণ কৰক';

  @override
  String get onboard_footer_secure => 'আপোনাৰ তথ্য সুৰক্ষিত আৰু এনক্ৰিপ্ট কৰা';

  @override
  String get dashboard_live => 'লাইভ';

  @override
  String get dashboard_title => 'সাগৰীয় সুৰক্ষা ডেশ্বব\'ৰ্ড';

  @override
  String get dashboard_stat_active_alerts => 'সক্ৰিয় সতৰ্কবাণী';

  @override
  String get dashboard_stat_verified => 'সত্যাপিত';

  @override
  String get dashboard_stat_this_week => 'এই সপ্তাহত';

  @override
  String get dashboard_recent_reports => 'শেহতীয়া বিপদৰ প্ৰতিবেদন';

  @override
  String get profile_title => 'প্ৰ\'ফাইল';

  @override
  String get profile_subtitle => 'আপোনাৰ একাউণ্ট আৰু ছেটিংছ পৰিচালনা কৰক';

  @override
  String get profile_user_not_logged_in => 'ব্যৱহাৰকাৰীয়ে লগ ইন কৰা নাই।';

  @override
  String get profile_could_not_load_data => 'ব্যৱহাৰকাৰীৰ ডেটা লোড কৰিব পৰা নগ\'ল।';

  @override
  String profile_something_wrong(Object error) {
    return 'কিবা এটা ভুল হ\'ল: $error';
  }

  @override
  String get profile_verified => 'সত্যাপিত';

  @override
  String profile_member_since(Object date) {
    return '$dateৰ পৰা সদস্য';
  }

  @override
  String get profile_email => 'ইমেইল';

  @override
  String get profile_phone => 'ফোন';

  @override
  String get profile_edit_profile => 'প্ৰ\'ফাইল সম্পাদনা কৰক';

  @override
  String get profile_statistics_title => 'পৰিসংখ্যা আৰু সাৰাংশ';

  @override
  String get profile_reports_submitted => 'দাখিল কৰা প্ৰতিবেদন';

  @override
  String get profile_verified_reports => 'সত্যাপিত প্ৰতিবেদন';

  @override
  String get profile_pending_reports => 'অমীমাংসিত প্ৰতিবেদন';

  @override
  String get profile_rejected_reports => 'অগ্ৰাহ্য কৰা প্ৰতিবেদন';

  @override
  String profile_could_not_load_stats(Object error) {
    return 'পৰিসংখ্যা লোড কৰিব পৰা নগ\'ল: $error';
  }

  @override
  String get profile_no_stats_available => 'কোনো পৰিসংখ্যা উপলব্ধ নহয়।';

  @override
  String get profile_account_options => 'একাউণ্ট বিকল্প';

  @override
  String get profile_language_settings => 'ভাষা ছেটিংছ';

  @override
  String get profile_language_settings_desc => 'আপোনাৰ পছন্দৰ ভাষা বাছক';

  @override
  String get profile_notification_settings => 'অধিসূচনা ছেটিংছ';

  @override
  String get profile_notification_settings_desc => 'সতৰ্কবাণী আৰু পুশ্ব অধিসূচনা পৰিচালনা কৰক';

  @override
  String get profile_privacy_permissions => 'গোপনীয়তা আৰু অনুমতি';

  @override
  String get profile_privacy_permissions_desc => 'আপোনাৰ ডেটা আৰু এপৰ অনুমতি নিয়ন্ত্ৰণ কৰক';

  @override
  String get profile_help_support => 'সহায় আৰু সমৰ্থন';

  @override
  String get profile_help_support_desc => 'সহায় লাভ কৰক আৰু সমৰ্থনৰ সৈতে যোগাযোগ কৰক';

  @override
  String get profile_help_coming_soon => 'সহায় আৰু সমৰ্থন সোনকালেই আহি আছে!';

  @override
  String get profile_about_sentinel => 'চেন্টিনেলৰ বিষয়ে';

  @override
  String get profile_about_sentinel_desc => 'এপৰ সংস্কৰণ আৰু তথ্য';

  @override
  String get profile_app_name => 'চেন্টিনেল';

  @override
  String get profile_app_version => '১.০.০';

  @override
  String get profile_app_description => 'জনসাধাৰণৰ দ্বাৰা সাগৰীয় বিপদৰ সতৰ্কবাণী\n\nসামূহিক প্ৰতিবেদনৰ জৰিয়তে আমাৰ সাগৰসমূহক সুৰক্ষিত ৰখাত সহায় কৰা।';

  @override
  String get profile_logout => 'লগআউট';

  @override
  String get profile_logout_desc => 'আপোনাৰ একাউণ্টৰ পৰা চাইন আউট কৰক';

  @override
  String get profile_logout_confirm => 'আপুনি সঁচাকৈ চেন্টিনেলৰ পৰা লগআউট কৰিব বিচাৰে নেকি?';

  @override
  String get profile_cancel => 'বাতিল কৰক';

  @override
  String profile_logout_failed(Object error) {
    return 'লগআউট বিফল হ\'ল: $error';
  }

  @override
  String get profile_edit_profile_title => 'প্ৰ\'ফাইল সম্পাদনা কৰক';

  @override
  String get profile_full_name_label => 'সম্পূৰ্ণ নাম';

  @override
  String get profile_full_name_hint => 'আপোনাৰ সম্পূৰ্ণ নাম দিয়ক';

  @override
  String get profile_full_name_error => 'অনুগ্ৰহ কৰি আপোনাৰ নাম দিয়ক';

  @override
  String get profile_email_label => 'ইমেইল ঠিকনা';

  @override
  String get profile_email_hint => 'আপোনাৰ ইমেইল ঠিকনা দিয়ক';

  @override
  String get profile_email_error_empty => 'অনুগ্ৰহ কৰি আপোনাৰ ইমেইল দিয়ক';

  @override
  String get profile_email_error_invalid => 'অনুগ্ৰহ কৰি এটা বৈধ ইমেইল ঠিকনা দিয়ক';

  @override
  String get profile_phone_label => 'ফোন নম্বৰ';

  @override
  String get profile_save_changes => 'পৰিৱৰ্তন সংৰক্ষণ কৰক';

  @override
  String get profile_user_not_found => 'ত্ৰুটি: ব্যৱহাৰকাৰী পোৱা নগ\'ল।';

  @override
  String get profile_updated_success => 'প্ৰ\'ফাইল সফলতাৰে আপডেট কৰা হ\'ল!';

  @override
  String profile_update_failed(Object error) {
    return 'প্ৰ\'ফাইল আপডেট কৰাত বিফল হ\'ল: $error';
  }

  @override
  String profile_language_update_failed(Object error) {
    return 'ভাষা আপডেট কৰাত বিফল হ\'ল: $error';
  }

  @override
  String get profile_notification_title => 'অধিসূচনা ছেটিংছ';

  @override
  String get profile_general_notifications => 'সাধাৰণ অধিসূচনা';

  @override
  String get profile_push_notifications => 'পুশ্ব অধিসূচনা';

  @override
  String get profile_push_notifications_desc => 'আপোনাৰ ডিভাইচত অধিসূচনা পাওক';

  @override
  String get profile_email_notifications => 'ইমেইল অধিসূচনা';

  @override
  String get profile_email_notifications_desc => 'ইমেইলৰ জৰিয়তে অধিসূচনা পাওক';

  @override
  String get profile_alert_types => 'সতৰ্কবাণীৰ প্ৰকাৰ';

  @override
  String get profile_critical_safety_alerts => 'গুৰুত্বপূৰ্ণ সুৰক্ষা সতৰ্কবাণী';

  @override
  String get profile_critical_safety_alerts_desc => 'তৎকালীন বিপদ আৰু জৰুৰী সতৰ্কবাণী';

  @override
  String get profile_report_status_updates => 'প্ৰতিবেদনৰ স্থিতিৰ আপডেট';

  @override
  String get profile_report_status_updates_desc => 'আপোনাৰ দাখিল কৰা প্ৰতিবেদনৰ আপডেট';

  @override
  String get profile_news_updates => 'বাতৰি আৰু আপডেট';

  @override
  String get profile_news_updates_desc => 'সাগৰীয় সুৰক্ষাৰ বাতৰি আৰু এপৰ আপডেট';

  @override
  String get profile_critical_alerts_info => 'আপোনাৰ সুৰক্ষাৰ বাবে গুৰুত্বপূৰ্ণ সুৰক্ষা সতৰ্কবাণী নিষ্ক্ৰিয় কৰিব নোৱাৰি।';

  @override
  String get profile_privacy_title => 'গোপনীয়তা আৰু অনুমতি';

  @override
  String get profile_location_data => 'অৱস্থান আৰু ডেটা';

  @override
  String get profile_location_sharing => 'অৱস্থান শ্বেয়াৰিং';

  @override
  String get profile_location_sharing_desc => 'প্ৰতিবেদনৰ বাবে এপক আপোনাৰ অৱস্থান ব্যৱহাৰ কৰাৰ অনুমতি দিয়ক';

  @override
  String get profile_public_profile => 'ৰাজহুৱা প্ৰ\'ফাইল';

  @override
  String get profile_public_profile_desc => 'আপোনাৰ প্ৰ\'ফাইল অন্য ব্যৱহাৰকাৰীৰ বাবে দৃশ্যমান কৰক';

  @override
  String get profile_app_analytics => 'এপ বিশ্লেষণ';

  @override
  String get profile_usage_analytics => 'ব্যৱহাৰ বিশ্লেষণ';

  @override
  String get profile_usage_analytics_desc => 'ব্যৱহাৰৰ ডেটা শ্বেয়াৰ কৰি এপটো উন্নত কৰাত সহায় কৰক';

  @override
  String get profile_crash_reporting => 'ক্ৰেছ ৰিপৰ্টিং';

  @override
  String get profile_crash_reporting_desc => 'ডেভেলপাৰসকললৈ স্বয়ংক্ৰিয়ভাৱে ক্ৰেছ ৰিপ\'ৰ্ট পঠাওক';

  @override
  String get profile_view_privacy_policy => 'গোপনীয়তা নীতি চাওক';

  @override
  String get profile_opening_privacy_policy => 'গোপনীয়তা নীতি খোলা হৈছে...';

  @override
  String get profile_export_my_data => 'মোৰ ডেটা ৰপ্তানি কৰক';

  @override
  String get profile_data_export_submitted => 'ডেটা ৰপ্তানিৰ অনুৰোধ দাখিল কৰা হৈছে';

  @override
  String get profile_delete_my_account => 'মোৰ একাউণ্ট মচি পেলাওক';

  @override
  String get profile_delete_account_title => 'একাউণ্ট মচি পেলাওক';

  @override
  String get profile_delete_account_confirm => 'এই কাৰ্যটো বাতিল কৰিব নোৱাৰি। আপোনাৰ সকলো প্ৰতিবেদন আৰু ডেটা স্থায়ীভাৱে মচি পেলোৱা হ\'ব। আপুনি সঁচাকৈ আগবাঢ়িব বিচাৰে নেকি?';

  @override
  String get profile_delete_account_submitted => 'একাউণ্ট মচাৰ অনুৰোধ দাখিল কৰা হৈছে';

  @override
  String get profile_no_name_provided => 'কোনো নাম দিয়া হোৱা নাই';

  @override
  String get profile_no_email_provided => 'কোনো ইমেইল দিয়া হোৱা নাই';

  @override
  String get profile_no_phone_provided => 'কোনো ফোন নম্বৰ দিয়া হোৱা নাই';

  @override
  String get profile_default_location => 'পুনে, মহাৰাষ্ট্ৰ, ভাৰত';

  @override
  String get profile_default_language => 'as';

  @override
  String get profile_months => 'জানু,ফেব্ৰু,মাৰ্চ,এপ্ৰিল,মে,জুন,জুলাই,আগষ্ট,ছেপ্ট,অক্টো,নৱে,ডিছে';

  @override
  String get create_report_title => 'বিপদৰ প্ৰতিবেদন সৃষ্টি কৰক';

  @override
  String get create_report_subtitle => 'আমাৰ সাগৰসমূহক সুৰক্ষিত ৰখাত সহায় কৰক';

  @override
  String get create_report_description_label => 'বিৱৰণ *';

  @override
  String get create_report_description_hint => 'আপুনি দেখা সাগৰীয় বিপদৰ বৰ্ণনা দিয়ক...';

  @override
  String get create_report_description_error_empty => 'অনুগ্ৰহ কৰি এটা বিৱৰণ দিয়ক';

  @override
  String get create_report_description_error_min_length => 'বিৱৰণত কমেও ১০টা আখৰ থাকিব লাগিব';

  @override
  String get create_report_location_label => 'অৱস্থান *';

  @override
  String get create_report_location_hint => 'অৱস্থান দিয়ক বা তলৰ বুটামবোৰ ব্যৱহাৰ কৰক';

  @override
  String get create_report_location_error => 'অনুগ্ৰহ কৰি এটা অৱস্থান যোগ দিয়ক';

  @override
  String get create_report_current_location => 'বৰ্তমানৰ অৱস্থান';

  @override
  String get create_report_getting_location => 'অনা হৈ আছে...';

  @override
  String get create_report_pin_on_map => 'মানচিত্ৰত পিন কৰক';

  @override
  String get create_report_location_selected => 'অৱস্থান সফলতাৰে বাছনি কৰা হ\'ল';

  @override
  String create_report_coordinates(Object lat, Object lng) {
    return 'স্থানাংক: $lat, $lng';
  }

  @override
  String get create_report_attach_media => 'মিডিয়া সংলগ্ন কৰক';

  @override
  String get create_report_attach_photos_videos => 'ফটো/ভিডিঅ\' সংলগ্ন কৰক';

  @override
  String get create_report_submit => 'প্ৰতিবেদন দাখিল কৰক';

  @override
  String get create_report_submitting => 'দাখিল কৰা হৈছে...';

  @override
  String create_report_media_attached_success(Object count) {
    return '$countটা ফাইল সফলতাৰে সংলগ্ন কৰা হ\'ল';
  }

  @override
  String create_report_media_attach_failed(Object error) {
    return 'মিডিয়া সংলগ্ন কৰাত বিফল হ\'ল: $error';
  }

  @override
  String get create_report_location_captured_success => 'বৰ্তমানৰ অৱস্থান সফলতাৰে সংগ্ৰহ কৰা হ\'ল!';

  @override
  String get create_report_location_permission_denied => 'ব্যৱহাৰকাৰীয়ে অৱস্থানৰ অনুমতি অস্বীকাৰ কৰিছে। এই সুবিধা ব্যৱহাৰ কৰিবলৈ অনুগ্ৰহ কৰি অৱস্থানৰ অনুমতি দিয়ক।';

  @override
  String get create_report_location_permission_denied_forever => 'অৱস্থানৰ অনুমতি স্থায়ীভাৱে অস্বীকাৰ কৰা হৈছে। অনুগ্ৰহ কৰি আপোনাৰ ডিভাইচ ছেটিংছত অৱস্থানৰ অনুমতি সক্ষম কৰক।';

  @override
  String get create_report_location_services_disabled => 'অৱস্থান সেৱা নিষ্ক্ৰিয় কৰা আছে। অনুগ্ৰহ কৰি আপোনাৰ ডিভাইচ ছেটিংছত অৱস্থান সেৱা সক্ষম কৰক।';

  @override
  String get create_report_location_unable_determine => 'অৱস্থান নিৰ্ধাৰণ কৰিব পৰা নাই। অনুগ্ৰহ কৰি পুনৰ চেষ্টা কৰক বা মানচিত্ৰত নিজে অৱস্থান বাছক।';

  @override
  String get create_report_location_current => 'বৰ্তমানৰ অৱস্থান';

  @override
  String create_report_location_coordinates(Object lat, Object lng) {
    return 'অৱস্থান: $lat, $lng';
  }

  @override
  String get create_report_submit_location_required => 'অনুগ্ৰহ কৰি প্ৰতিবেদনৰ বাবে এটা অৱস্থান যোগ দিয়ক';

  @override
  String get create_report_submit_login_required => 'প্ৰতিবেদন দাখিল কৰিবলৈ অনুগ্ৰহ কৰি লগ ইন কৰক';

  @override
  String create_report_submit_failed(Object error) {
    return 'প্ৰতিবেদন দাখিল কৰাত বিফল হ\'ল: $error';
  }

  @override
  String get create_report_submit_retry => 'পুনৰ চেষ্টা কৰক';

  @override
  String get create_report_success_title => 'প্ৰতিবেদন সফলতাৰে দাখিল কৰা হ\'ল!';

  @override
  String get create_report_success_auto_approved => 'প্ৰতিবেদন স্বয়ংক্ৰিয়ভাৱে অনুমোদিত আৰু প্ৰকাশিত হ\'ল!';

  @override
  String create_report_success_auto_approved_sub(Object score) {
    return 'উচ্চ বিশ্বাস স্ক\'ৰ ($score%)';
  }

  @override
  String get create_report_success_review => 'প্ৰতিবেদন পৰ্যালোচনাৰ বাবে দাখিল কৰা হৈছে';

  @override
  String get create_report_success_review_normal => 'সাধাৰণ প্ৰক্ৰিয়াকৰণ আশা কৰা হৈছে';

  @override
  String get create_report_success_review_verification => 'অতিৰিক্ত সত্যাপনৰ প্ৰয়োজন হ\'ব পাৰে';

  @override
  String get create_report_success_manual_review => 'প্ৰতিবেদন নিজে পৰ্যালোচনাৰ বাবে দাখিল কৰা হৈছে';

  @override
  String get create_report_success_manual_review_sub => 'বিতং সত্যাপনৰ প্ৰয়োজন';

  @override
  String create_report_success_title_label(Object title) {
    return 'শিৰোনাম: $title';
  }

  @override
  String get create_report_unknown_location => 'অজ্ঞাত অৱস্থান';

  @override
  String get create_report_selected_location => 'বাছনি কৰা অৱস্থান';
}
