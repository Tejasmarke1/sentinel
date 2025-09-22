// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Assamese (`as`).
class AppLocalizationsAs extends AppLocalizations {
  AppLocalizationsAs([String locale = 'as']) : super(locale);

  @override
  String get appTitle => 'ছেণ্টিনেল';

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
  String get language_select_title => 'ভাষা বাছনি কৰক';

  @override
  String get language_select_subtitle => 'ছেণ্টিনেলৰ বাবে আপোনাৰ পছন্দৰ ভাষা বাছনি কৰক';

  @override
  String get language_section_primary => 'প্ৰধান ভাষাসমূহ';

  @override
  String get language_section_west => 'পশ্চিম উপকূলৰ ভাষাসমূহ';

  @override
  String get language_section_east => 'পূৰ্ব উপকূলৰ ভাষাসমূহ';

  @override
  String get language_section_islands => 'দ্বীপ অঞ্চলসমূহ';

  @override
  String language_selected_label(Object language) {
    return 'বাছনি কৰা হৈছে: $language';
  }

  @override
  String language_changed_snackbar(Object language) {
    return 'ভাষা $languageলৈ পৰিবৰ্তন কৰা হৈছে';
  }

  @override
  String get language_confirm_button => 'ভাষা নিশ্চিত কৰক';

  @override
  String get login_welcome_to => 'স্বাগতম';

  @override
  String get login_title_caps => 'ছেণ্টিনেল';

  @override
  String get login_tagline => 'সামুদ্ৰিক বিপদ সতর্কতাৰ বাবে আপোনাৰ সুৰক্ষাৰ সহযাত্ৰী';

  @override
  String get login_enter_phone => 'আপোনাৰ মোবাইল নম্বৰ প্ৰৱিষ্ট কৰক';

  @override
  String get login_phone_help => 'আমি SMSৰ জৰিয়তে আপোনালৈ এটা যাচাইকৰণ কোড পঠিয়াম';

  @override
  String get login_send_otp => 'OTP পঠাওক';

  @override
  String get login_terms_prefix => 'আগবাঢ়ি যোৱাৰ অৰ্থ, আপুনি আমাৰ';

  @override
  String get login_terms => 'সেৱাৰ নিয়মাৱলী';

  @override
  String get login_and => ' আৰু ';

  @override
  String get login_privacy => 'গোপনীয়তা নীতি';

  @override
  String get login_error_enter_phone => 'অনুগ্ৰহ কৰি আপোনাৰ মোবাইল নম্বৰ প্ৰৱিষ্ট কৰক';

  @override
  String get login_error_valid_phone => 'অনুগ্ৰহ কৰি বৈধ মোবাইল নম্বৰ প্ৰৱিষ্ট কৰক';

  @override
  String get otp_title => 'যাচাইকৰণ কোড প্ৰৱিষ্ট কৰক';

  @override
  String otp_sent_to(Object phone) {
    return 'আমি ৬-অংকৰ কোড পঠিয়েছি\n$phone';
  }

  @override
  String get otp_hint => '000000';

  @override
  String get otp_verify_continue => 'যাচাই কৰক & আগবাঢ়ক';

  @override
  String get otp_error_incomplete => 'অনুগ্ৰহ কৰি সম্পূৰ্ণ ৬-অংকৰ কোড প্ৰৱিষ্ট কৰক';

  @override
  String otp_resend_in(Object seconds) {
    return '$seconds ছেকেণ্ডত পুনৰ পঠিয়াওক';
  }

  @override
  String get otp_resend_cta => 'কোড পোৱা নগল? পুনৰ পঠিয়াওক';

  @override
  String get otp_request_first => 'অনুগ্ৰহ কৰি প্ৰথমে কোড অনুৰোধ কৰক।';

  @override
  String get otp_invalid_code => 'Invalid code';

  @override
  String get verification_failed => 'Verification failed';

  @override
  String get phone_country_code => '+91';

  @override
  String get phone_hint_number => '98765 43210';

  @override
  String get reports_title => 'মোৰ ৰিপ’ৰ্টসমূহ';

  @override
  String get reports_subtitle => 'আপোনাৰ দাখিল কৰা বিপদ ৰিপ’ৰ্টসমূহ অনুসৰণ কৰক';

  @override
  String reports_count_label(Object count) {
    return '$count ৰিপ’ৰ্টসমূহ';
  }

  @override
  String get reports_filter_label => 'অৱস্থাৰ দ্বাৰা ফিল্টাৰ কৰক';

  @override
  String get status_pending => 'অপেক্ষামান';

  @override
  String get status_verified => 'যাচাই কৰা হৈছে';

  @override
  String get status_dismissed => 'বাতিল';

  @override
  String get status_under_review => 'সমীক্ষাৰ অধীন';

  @override
  String get reports_loading => 'আপোনাৰ ৰিপ’ৰ্টসমূহ লোড হৈছে...';

  @override
  String get reports_error_title => 'ৰিপ’ৰ্টসমূহ লোড কৰোঁতে সমস্যা';

  @override
  String get reports_empty_all => 'কোনো ৰিপ’ৰ্ট নাই';

  @override
  String reports_empty_filtered(Object status) {
    return 'কোনো $status ৰিপ’ৰ্ট নাই';
  }

  @override
  String get reports_empty_all_sub => 'আমাৰ সমুদ্ৰক নিৰাপদ ৰাখিবলৈ সামুদ্ৰিক বিপদসমূহ ৰিপ’ৰ্ট কৰা আৰম্ভ কৰক';

  @override
  String get reports_empty_filtered_sub => 'ৰিপ’ৰ্ট চাবলৈ এটা ভিন্ন ফিল্টাৰ বাছনি কৰক';

  @override
  String get reports_stat_pending => 'অপেক্ষামান';

  @override
  String get reports_stat_verified => 'যাচাই কৰা হৈছে';

  @override
  String get reports_stat_dismissed => 'বাতিল';

  @override
  String get time_just_now => 'এতিয়াই';

  @override
  String time_minutes_ago(Object minutes) {
    return '$minutes মিনিট পূৰ্বে';
  }

  @override
  String time_hours_ago(Object hours) {
    return '$hours ঘণ্টা পূৰ্বে';
  }

  @override
  String time_days_ago(Object days) {
    return '$days দিন পূৰ্বে';
  }

  @override
  String time_on_date(Object day, Object month, Object year) {
    return '$day/$month/$year';
  }

  @override
  String get report_details_title => 'ৰিপ’ৰ্ট বিৱৰণ';

  @override
  String get report_menu_edit => 'ৰিপ’ৰ্ট সম্পাদনা কৰক';

  @override
  String get report_menu_delete => 'ৰিপ’ৰ্ট মচি পেলাওক';

  @override
  String report_reported_on(Object date) {
    return '$date তাৰিখে ৰিপ’ৰ্ট কৰা হৈছে';
  }

  @override
  String get report_section_description => 'বিৱৰণ';

  @override
  String get report_section_location => 'অৱস্থান';

  @override
  String report_section_media(Object count) {
    return 'মিডিয়া ($count)';
  }

  @override
  String get report_section_reputation => 'ৰিপ’ৰ্টকাৰীৰ প্ৰতিষ্ঠা';

  @override
  String get report_media_view_all => 'সকলো চাওক';

  @override
  String get report_lat_label => 'অক্ষাংশ:';

  @override
  String get report_lng_label => 'দ্ৰাঘিমাংশ:';

  @override
  String get report_action_edit => 'ৰিপ’ৰ্ট সম্পাদনা কৰক';

  @override
  String get report_action_delete => 'ৰিপ’ৰ্ট মচি পেলাওক';

  @override
  String get report_delete_title => 'ৰিপ’ৰ্ট মচি পেলাওক';

  @override
  String report_delete_confirm(Object title) {
    return 'আপুনি \"$title\" মচিব খুজিছে নেকি? এই কাৰ্যৰ কোনো উলটা উপায় নাই।';
  }

  @override
  String get report_deleted_success => 'ৰিপ’ৰ্ট সফলতাৰে মচি পেলোৱা হৈছে';

  @override
  String report_delete_failed(Object error) {
    return 'ৰিপ’ৰ্ট মচাত ব্যৰ্থ: $error';
  }

  @override
  String get report_edit_coming => 'সম্পাদনা বৈশিষ্ট্য শীঘ্ৰে আহিব!';

  @override
  String get report_media_coming => 'মিডিয়া ভিউৱাৰ শীঘ্ৰে আহিব!';

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
