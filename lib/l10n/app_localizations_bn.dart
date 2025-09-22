// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Bengali Bangla (`bn`).
class AppLocalizationsBn extends AppLocalizations {
  AppLocalizationsBn([String locale = 'bn']) : super(locale);

  @override
  String get appTitle => 'সেন্টিনেল';

  @override
  String get common_cancel => 'বাতিল করুন';

  @override
  String get common_delete => 'মুছুন';

  @override
  String get common_edit => 'সম্পাদনা করুন';

  @override
  String get common_retry => 'আবার চেষ্টা করুন';

  @override
  String get common_default => 'ডিফল্ট';

  @override
  String get language_select_title => 'ভাষা নির্বাচন করুন';

  @override
  String get language_select_subtitle => 'সেন্টিনেলের জন্য আপনার পছন্দের ভাষা নির্বাচন করুন';

  @override
  String get language_section_primary => 'প্রধান ভাষা';

  @override
  String get language_section_west => 'পশ্চিম উপকূলের ভাষা';

  @override
  String get language_section_east => 'পূর্ব উপকূলের ভাষা';

  @override
  String get language_section_islands => 'দ্বীপ অঞ্চল';

  @override
  String language_selected_label(Object language) {
    return 'নির্বাচিত: $language';
  }

  @override
  String language_changed_snackbar(Object language) {
    return 'ভাষা $language এ পরিবর্তিত হয়েছে';
  }

  @override
  String get language_confirm_button => 'ভাষা নিশ্চিত করুন';

  @override
  String get login_welcome_to => 'স্বাগতম';

  @override
  String get login_title_caps => 'সেন্টিনেল';

  @override
  String get login_tagline => 'সামুদ্রিক বিপদ সতর্কতার জন্য আপনার নিরাপত্তা সঙ্গী';

  @override
  String get login_enter_phone => 'আপনার মোবাইল নম্বর লিখুন';

  @override
  String get login_phone_help => 'আমরা আপনাকে SMS এর মাধ্যমে একটি যাচাইকরণ কোড পাঠাবো';

  @override
  String get login_send_otp => 'OTP পাঠান';

  @override
  String get login_terms_prefix => 'চালিয়ে গেলে, আপনি আমাদের';

  @override
  String get login_terms => 'সার্ভিসের শর্তাবলী';

  @override
  String get login_and => ' এবং ';

  @override
  String get login_privacy => 'গোপনীয়তা নীতি';

  @override
  String get login_error_enter_phone => 'দয়া করে আপনার মোবাইল নম্বর লিখুন';

  @override
  String get login_error_valid_phone => 'দয়া করে বৈধ মোবাইল নম্বর লিখুন';

  @override
  String get otp_title => 'যাচাইকরণ কোড লিখুন';

  @override
  String otp_sent_to(Object phone) {
    return 'আমরা 6-সংখ্যার কোড পাঠিয়েছি\n$phone';
  }

  @override
  String get otp_hint => '000000';

  @override
  String get otp_verify_continue => 'যাচাই করুন & চালিয়ে যান';

  @override
  String get otp_error_incomplete => 'দয়া করে সম্পূর্ণ 6-সংখ্যার কোড লিখুন';

  @override
  String otp_resend_in(Object seconds) {
    return '$seconds সেকেন্ডে পুনরায় পাঠান';
  }

  @override
  String get otp_resend_cta => 'কোড পায়নি? পুনরায় পাঠান';

  @override
  String get otp_request_first => 'দয়া করে প্রথমে কোড অনুরোধ করুন।';

  @override
  String get otp_invalid_code => 'Invalid code';

  @override
  String get verification_failed => 'Verification failed';

  @override
  String get phone_country_code => '+91';

  @override
  String get phone_hint_number => '98765 43210';

  @override
  String get reports_title => 'আমার রিপোর্টসমূহ';

  @override
  String get reports_subtitle => 'আপনার জমা দেওয়া বিপদ রিপোর্ট ট্র্যাক করুন';

  @override
  String reports_count_label(Object count) {
    return '$count রিপোর্ট';
  }

  @override
  String get reports_filter_label => 'অবস্থা অনুযায়ী ফিল্টার করুন';

  @override
  String get status_pending => 'মুলতুবি';

  @override
  String get status_verified => 'যাচাই করা হয়েছে';

  @override
  String get status_dismissed => 'বাতিল';

  @override
  String get status_under_review => 'পর্যালোচনার মধ্যে';

  @override
  String get reports_loading => 'আপনার রিপোর্টসমূহ লোড হচ্ছে...';

  @override
  String get reports_error_title => 'রিপোর্ট লোড করতে সমস্যা হয়েছে';

  @override
  String get reports_empty_all => 'কোনও রিপোর্ট নেই';

  @override
  String reports_empty_filtered(Object status) {
    return 'কোনও $status রিপোর্ট নেই';
  }

  @override
  String get reports_empty_all_sub => 'আমাদের সাগরকে নিরাপদ রাখার জন্য সামুদ্রিক বিপদ রিপোর্ট করা শুরু করুন';

  @override
  String get reports_empty_filtered_sub => 'রিপোর্ট দেখার জন্য অন্য একটি ফিল্টার নির্বাচন করুন';

  @override
  String get reports_stat_pending => 'মুলতুবি';

  @override
  String get reports_stat_verified => 'যাচাই করা হয়েছে';

  @override
  String get reports_stat_dismissed => 'বাতিল';

  @override
  String get time_just_now => 'ঠিক এখন';

  @override
  String time_minutes_ago(Object minutes) {
    return '$minutes মিনিট আগে';
  }

  @override
  String time_hours_ago(Object hours) {
    return '$hours ঘন্টা আগে';
  }

  @override
  String time_days_ago(Object days) {
    return '$days দিন আগে';
  }

  @override
  String time_on_date(Object day, Object month, Object year) {
    return '$day/$month/$year';
  }

  @override
  String get report_details_title => 'রিপোর্ট বিবরণ';

  @override
  String get report_menu_edit => 'রিপোর্ট সম্পাদনা করুন';

  @override
  String get report_menu_delete => 'রিপোর্ট মুছুন';

  @override
  String report_reported_on(Object date) {
    return '$date এ রিপোর্ট করা হয়েছে';
  }

  @override
  String get report_section_description => 'বিবরণ';

  @override
  String get report_section_location => 'অবস্থান';

  @override
  String report_section_media(Object count) {
    return 'মিডিয়া ($count)';
  }

  @override
  String get report_section_reputation => 'রিপোর্টকারীটির বিশ্বাসযোগ্যতা';

  @override
  String get report_media_view_all => 'সব দেখুন';

  @override
  String get report_lat_label => 'অক্ষাংশ:';

  @override
  String get report_lng_label => 'দ্রাঘিমাংশ:';

  @override
  String get report_action_edit => 'রিপোর্ট সম্পাদনা করুন';

  @override
  String get report_action_delete => 'রিপোর্ট মুছুন';

  @override
  String get report_delete_title => 'রিপোর্ট মুছুন';

  @override
  String report_delete_confirm(Object title) {
    return 'আপনি কি \"$title\" মুছতে চান? এই কার্যক্রম পূর্বাবস্থায় ফিরানো যাবে না।';
  }

  @override
  String get report_deleted_success => 'রিপোর্ট সফলভাবে মুছে ফেলা হয়েছে';

  @override
  String report_delete_failed(Object error) {
    return 'রিপোর্ট মুছে ফেলতে ব্যর্থ: $error';
  }

  @override
  String get report_edit_coming => 'সম্পাদনার ফিচার শীঘ্রই আসছে!';

  @override
  String get report_media_coming => 'মিডিয়া ভিউয়ার শীঘ্রই আসছে!';

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
