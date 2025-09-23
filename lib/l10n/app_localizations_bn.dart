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
  String get common_delete => 'মুছে ফেলুন';

  @override
  String get common_edit => 'সম্পাদনা করুন';

  @override
  String get common_retry => 'পুনরায় চেষ্টা করুন';

  @override
  String get common_default => 'ডিফল্ট';

  @override
  String get language_select_title => 'ভাষা নির্বাচন করুন';

  @override
  String get language_select_subtitle => 'সেন্টিনেলের জন্য আপনার পছন্দের ভাষা বেছে নিন';

  @override
  String get language_section_primary => 'প্রাথমিক ভাষাসমূহ';

  @override
  String get language_section_west => 'পশ্চিম উপকূলীয় ভাষাসমূহ';

  @override
  String get language_section_east => 'পূর্ব উপকূলীয় ভাষাসমূহ';

  @override
  String get language_section_islands => 'দ্বীপ অঞ্চলের ভাষাসমূহ';

  @override
  String language_selected_label(Object language) {
    return 'নির্বাচিত: $language';
  }

  @override
  String language_changed_snackbar(Object language) {
    return 'ভাষা $language তে পরিবর্তন করা হয়েছে';
  }

  @override
  String get language_confirm_button => 'ভাষা নিশ্চিত করুন';

  @override
  String get login_welcome_to => '-এ স্বাগতম';

  @override
  String get login_title_caps => 'সেন্টিনেল';

  @override
  String get login_tagline => 'সামুদ্রিক বিপদের সতর্কতার জন্য আপনার সুরক্ষা সঙ্গী';

  @override
  String get login_enter_phone => 'আপনার মোবাইল নম্বর লিখুন';

  @override
  String get login_phone_help => 'আমরা আপনাকে SMS এর মাধ্যমে একটি যাচাইকরণ কোড পাঠাব';

  @override
  String get login_send_otp => 'OTP পাঠান';

  @override
  String get login_terms_prefix => 'চালিয়ে যাওয়ার মাধ্যমে, আপনি আমাদের';

  @override
  String get login_terms => 'পরিষেবার শর্তাবলী';

  @override
  String get login_and => ' এবং ';

  @override
  String get login_privacy => 'গোপনীয়তা নীতিতে সম্মত হচ্ছেন';

  @override
  String get login_error_enter_phone => 'অনুগ্রহ করে আপনার মোবাইল নম্বর লিখুন';

  @override
  String get login_error_valid_phone => 'অনুগ্রহ করে একটি বৈধ মোবাইল নম্বর লিখুন';

  @override
  String get otp_title => 'যাচাইকরণ কোড লিখুন';

  @override
  String otp_sent_to(Object phone) {
    return 'আমরা $phone নম্বরে একটি ৬-সংখ্যার কোড পাঠিয়েছি';
  }

  @override
  String get otp_hint => '০০০০০০';

  @override
  String get otp_verify_continue => 'যাচাই করুন এবং চালিয়ে যান';

  @override
  String get otp_error_incomplete => 'অনুগ্রহ করে সম্পূর্ণ ৬-সংখ্যার কোডটি লিখুন';

  @override
  String otp_resend_in(Object seconds) {
    return '$seconds সেকেন্ডের মধ্যে কোড আবার পাঠান';
  }

  @override
  String get otp_resend_cta => 'কোড পাননি? পুনরায় পাঠান';

  @override
  String get otp_request_first => 'অনুগ্রহ করে প্রথমে কোডের জন্য অনুরোধ করুন।';

  @override
  String get otp_invalid_code => 'অবৈধ কোড';

  @override
  String get verification_failed => 'যাচাইকরণ ব্যর্থ হয়েছে';

  @override
  String get phone_country_code => '+৯১';

  @override
  String get phone_hint_number => '৯৮৭৬৫ ৪৩২১০';

  @override
  String get reports_title => 'আমার রিপোর্ট';

  @override
  String get reports_subtitle => 'আপনার জমা দেওয়া বিপদের রিপোর্টগুলি ট্র্যাক করুন';

  @override
  String reports_count_label(Object count) {
    return '$countটি রিপোর্ট';
  }

  @override
  String get reports_filter_label => 'স্ট্যাটাস অনুযায়ী ফিল্টার করুন';

  @override
  String get status_pending => 'বিচারাধীন';

  @override
  String get status_verified => 'যাচাইকৃত';

  @override
  String get status_dismissed => 'খারিজ';

  @override
  String get status_under_review => 'পর্যালোচনা অধীনে';

  @override
  String get reports_loading => 'আপনার রিপোর্ট লোড হচ্ছে...';

  @override
  String get reports_error_title => 'রিপোর্ট লোড করতে ত্রুটি';

  @override
  String get reports_empty_all => 'এখনও কোনো রিপোর্ট নেই';

  @override
  String reports_empty_filtered(Object status) {
    return 'কোনো $status রিপোর্ট নেই';
  }

  @override
  String get reports_empty_all_sub => 'আমাদের জলকে নিরাপদ রাখতে সামুদ্রিক বিপদ সম্পর্কে রিপোর্ট করা শুরু করুন';

  @override
  String get reports_empty_filtered_sub => 'রিপোর্ট দেখার জন্য একটি ভিন্ন ফিল্টার নির্বাচন করে চেষ্টা করুন';

  @override
  String get reports_stat_pending => 'বিচারাধীন';

  @override
  String get reports_stat_verified => 'যাচাইকৃত';

  @override
  String get reports_stat_dismissed => 'খারিজ';

  @override
  String get time_just_now => 'এইমাত্র';

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
  String get report_menu_edit => 'রিপোর্ট সম্পাদনা করুন';

  @override
  String get report_menu_delete => 'রিপোর্ট মুছে ফেলুন';

  @override
  String get report_delete_title => 'রিপোর্ট মুছে ফেলুন';

  @override
  String report_delete_confirm(Object title) {
    return 'আপনি কি নিশ্চিত যে আপনি \"$title\" মুছে ফেলতে চান? এই কাজটি আর ফেরানো যাবে না।';
  }

  @override
  String get report_deleted_success => 'রিপোর্ট সফলভাবে মুছে ফেলা হয়েছে';

  @override
  String report_delete_failed(Object error) {
    return 'রিপোর্ট মুছতে ব্যর্থ: $error';
  }

  @override
  String get report_edit_coming => 'সম্পাদনা করার সুবিধা শীঘ্রই আসছে!';

  @override
  String get report_media_coming => 'মিডিয়া ভিউয়ার শীঘ্রই আসছে!';

  @override
  String get report_section_description => 'বিবরণ';

  @override
  String get report_section_location => 'অবস্থান';

  @override
  String report_section_media(Object count) {
    return 'মিডিয়া ($count)';
  }

  @override
  String get report_section_reputation => 'রিপোর্টারের খ্যাতি';

  @override
  String get report_media_view_all => 'সব দেখুন';

  @override
  String get report_lat_label => 'অক্ষাংশ:';

  @override
  String get report_lng_label => 'দ্রাঘিমাংশ:';

  @override
  String get report_action_edit => 'রিপোর্ট সম্পাদনা করুন';

  @override
  String get report_action_delete => 'মুছে ফেলুন';

  @override
  String get report_details_title => 'রিপোর্টের বিবরণ';

  @override
  String get report_id_label => 'রিপোর্ট আইডি';

  @override
  String report_attachments_label(Object count) {
    return 'সংযুক্তি ($count)';
  }

  @override
  String get report_media_files => 'মিডিয়া ফাইল';

  @override
  String report_media_files_attached(Object count) {
    return 'এই রিপোর্টের সাথে $countটি ফাইল সংযুক্ত করা হয়েছে';
  }

  @override
  String get report_media_view => 'দেখুন';

  @override
  String get nav_home => 'হোম';

  @override
  String get nav_alerts => 'সতর্কতা';

  @override
  String get nav_reports => 'রিপোর্ট';

  @override
  String get nav_profile => 'প্রোফাইল';

  @override
  String get onboard_complete_your => 'আপনার';

  @override
  String get onboard_profile_setup => 'প্রোফাইল সেটআপ সম্পূর্ণ করুন';

  @override
  String get onboard_header_subtitle => 'আপনার অভিজ্ঞতা ব্যক্তিগত করতে এবং আপনাকে নিরাপদ রাখতে আমাদের সাহায্য করুন';

  @override
  String get onboard_full_name_label => 'পুরো নাম';

  @override
  String get onboard_full_name_hint => 'আপনার পুরো নাম লিখুন';

  @override
  String get onboard_full_name_error => 'অনুগ্রহ করে আপনার নাম লিখুন';

  @override
  String get onboard_email_label => 'ইমেল ঠিকানা';

  @override
  String get onboard_email_hint => 'আপনার ইমেল ঠিকানা লিখুন';

  @override
  String get onboard_email_error_empty => 'অনুগ্রহ করে আপনার ইমেল লিখুন';

  @override
  String get onboard_email_error_invalid => 'অনুগ্রহ করে একটি বৈধ ইমেল ঠিকানা লিখুন';

  @override
  String get onboard_trust_title => 'বিশ্বাস স্কোর সিস্টেম';

  @override
  String get onboard_trust_desc => 'আপনার রিপোর্টগুলির গুণমান, অবস্থানের নির্ভুলতা এবং রিপোর্টিং ইতিহাসের উপর ভিত্তি করে মূল্যায়ন করা হবে। বিস্তারিত ও নির্ভুল রিপোর্ট জমা দিয়ে আপনার খ্যাতি তৈরি করুন।';

  @override
  String get onboard_continue => 'সেটআপ সম্পূর্ণ করুন';

  @override
  String get onboard_footer_secure => 'আপনার তথ্য সুরক্ষিত এবং এনক্রিপ্ট করা';

  @override
  String get dashboard_live => 'লাইভ';

  @override
  String get dashboard_title => 'সামুদ্রিক সুরক্ষা ড্যাশবোর্ড';

  @override
  String get dashboard_stat_active_alerts => 'সক্রিয় সতর্কতা';

  @override
  String get dashboard_stat_verified => 'যাচাইকৃত';

  @override
  String get dashboard_stat_this_week => 'এই সপ্তাহে';

  @override
  String get dashboard_recent_reports => 'সাম্প্রতিক বিপদের রিপোর্ট';

  @override
  String get profile_title => 'প্রোফাইল';

  @override
  String get profile_subtitle => 'আপনার অ্যাকাউন্ট এবং সেটিংস পরিচালনা করুন';

  @override
  String get profile_user_not_logged_in => 'ব্যবহারকারী লগ ইন করেননি।';

  @override
  String get profile_could_not_load_data => 'ব্যবহারকারীর ডেটা লোড করা যায়নি।';

  @override
  String profile_something_wrong(Object error) {
    return 'কিছু ভুল হয়েছে: $error';
  }

  @override
  String get profile_verified => 'যাচাইকৃত';

  @override
  String profile_member_since(Object date) {
    return '$date থেকে সদস্য';
  }

  @override
  String get profile_email => 'ইমেল';

  @override
  String get profile_phone => 'ফোন';

  @override
  String get profile_edit_profile => 'প্রোফাইল সম্পাদনা করুন';

  @override
  String get profile_statistics_title => 'পরিসংখ্যান এবং সারাংশ';

  @override
  String get profile_reports_submitted => 'জমা দেওয়া রিপোর্ট';

  @override
  String get profile_verified_reports => 'যাচাইকৃত রিপোর্ট';

  @override
  String get profile_pending_reports => 'বিচারাধীন রিপোর্ট';

  @override
  String get profile_rejected_reports => 'খারিজ করা রিপোর্ট';

  @override
  String profile_could_not_load_stats(Object error) {
    return 'পরিসংখ্যান লোড করা যায়নি: $error';
  }

  @override
  String get profile_no_stats_available => 'কোনো পরিসংখ্যান উপলব্ধ নেই।';

  @override
  String get profile_account_options => 'অ্যাকাউন্ট বিকল্প';

  @override
  String get profile_language_settings => 'ভাষা সেটিংস';

  @override
  String get profile_language_settings_desc => 'আপনার পছন্দের ভাষা বেছে নিন';

  @override
  String get profile_notification_settings => 'বিজ্ঞপ্তি সেটিংস';

  @override
  String get profile_notification_settings_desc => 'সতর্কতা এবং পুশ বিজ্ঞপ্তি পরিচালনা করুন';

  @override
  String get profile_privacy_permissions => 'গোপনীয়তা এবং অনুমতি';

  @override
  String get profile_privacy_permissions_desc => 'আপনার ডেটা এবং অ্যাপের অনুমতি নিয়ন্ত্রণ করুন';

  @override
  String get profile_help_support => 'সহায়তা এবং সমর্থন';

  @override
  String get profile_help_support_desc => 'সহায়তা পান এবং সাপোর্টের সাথে যোগাযোগ করুন';

  @override
  String get profile_help_coming_soon => 'সহায়তা এবং সমর্থন শীঘ্রই আসছে!';

  @override
  String get profile_about_sentinel => 'সেন্টিনেল সম্পর্কে';

  @override
  String get profile_about_sentinel_desc => 'অ্যাপের সংস্করণ এবং তথ্য';

  @override
  String get profile_app_name => 'সেন্টিনেল';

  @override
  String get profile_app_version => '১.০.০';

  @override
  String get profile_app_description => 'ক্রাউডসোর্সড সামুদ্রিক বিপদের সতর্কতা\n\nসম্প্রদায়ের রিপোর্টিংয়ের মাধ্যমে আমাদের সমুদ্রকে নিরাপদ রাখতে সাহায্য করা।';

  @override
  String get profile_logout => 'লগআউট';

  @override
  String get profile_logout_desc => 'আপনার অ্যাকাউন্ট থেকে সাইন আউট করুন';

  @override
  String get profile_logout_confirm => 'আপনি কি সেন্টিনেল থেকে লগআউট করতে চান?';

  @override
  String get profile_cancel => 'বাতিল করুন';

  @override
  String profile_logout_failed(Object error) {
    return 'লগআউট ব্যর্থ হয়েছে: $error';
  }

  @override
  String get profile_edit_profile_title => 'প্রোফাইল সম্পাদনা করুন';

  @override
  String get profile_full_name_label => 'পুরো নাম';

  @override
  String get profile_full_name_hint => 'আপনার পুরো নাম লিখুন';

  @override
  String get profile_full_name_error => 'অনুগ্রহ করে আপনার নাম লিখুন';

  @override
  String get profile_email_label => 'ইমেল ঠিকানা';

  @override
  String get profile_email_hint => 'আপনার ইমেল ঠিকানা লিখুন';

  @override
  String get profile_email_error_empty => 'অনুগ্রহ করে আপনার ইমেল লিখুন';

  @override
  String get profile_email_error_invalid => 'অনুগ্রহ করে একটি বৈধ ইমেল ঠিকানা লিখুন';

  @override
  String get profile_phone_label => 'ফোন নম্বর';

  @override
  String get profile_save_changes => 'পরিবর্তনগুলি সংরক্ষণ করুন';

  @override
  String get profile_user_not_found => 'ত্রুটি: ব্যবহারকারীকে পাওয়া যায়নি।';

  @override
  String get profile_updated_success => 'প্রোফাইল সফলভাবে আপডেট করা হয়েছে!';

  @override
  String profile_update_failed(Object error) {
    return 'প্রোফাইল আপডেট করতে ব্যর্থ: $error';
  }

  @override
  String profile_language_update_failed(Object error) {
    return 'ভাষা আপডেট করতে ব্যর্থ: $error';
  }

  @override
  String get profile_notification_title => 'বিজ্ঞপ্তি সেটিংস';

  @override
  String get profile_general_notifications => 'সাধারণ বিজ্ঞপ্তি';

  @override
  String get profile_push_notifications => 'পুশ বিজ্ঞপ্তি';

  @override
  String get profile_push_notifications_desc => 'আপনার ডিভাইসে বিজ্ঞপ্তি পান';

  @override
  String get profile_email_notifications => 'ইমেল বিজ্ঞপ্তি';

  @override
  String get profile_email_notifications_desc => 'ইমেলের মাধ্যমে বিজ্ঞপ্তি পান';

  @override
  String get profile_alert_types => 'সতর্কতার প্রকার';

  @override
  String get profile_critical_safety_alerts => 'গুরুতর সুরক্ষা সতর্কতা';

  @override
  String get profile_critical_safety_alerts_desc => 'অবিলম্বে বিপদ এবং জরুরি সতর্কতা';

  @override
  String get profile_report_status_updates => 'রিপোর্টের স্ট্যাটাস আপডেট';

  @override
  String get profile_report_status_updates_desc => 'আপনার জমা দেওয়া রিপোর্টগুলির আপডেট';

  @override
  String get profile_news_updates => 'খবর ও আপডেট';

  @override
  String get profile_news_updates_desc => 'সামুদ্রিক নিরাপত্তার খবর এবং অ্যাপের আপডেট';

  @override
  String get profile_critical_alerts_info => 'আপনার সুরক্ষার জন্য গুরুতর সুরক্ষা সতর্কতাগুলি নিষ্ক্রিয় করা যাবে না।';

  @override
  String get profile_privacy_title => 'গোপনীয়তা এবং অনুমতি';

  @override
  String get profile_location_data => 'অবস্থান এবং ডেটা';

  @override
  String get profile_location_sharing => 'অবস্থান শেয়ারিং';

  @override
  String get profile_location_sharing_desc => 'রিপোর্টের জন্য অ্যাপকে আপনার অবস্থান অ্যাক্সেস করার অনুমতি দিন';

  @override
  String get profile_public_profile => 'সর্বজনীন প্রোফাইল';

  @override
  String get profile_public_profile_desc => 'আপনার প্রোফাইল অন্য ব্যবহারকারীদের কাছে দৃশ্যমান করুন';

  @override
  String get profile_app_analytics => 'অ্যাপ অ্যানালিটিক্স';

  @override
  String get profile_usage_analytics => 'ব্যবহারের অ্যানালিটিক্স';

  @override
  String get profile_usage_analytics_desc => 'ব্যবহারের ডেটা শেয়ার করে অ্যাপটিকে উন্নত করতে সাহায্য করুন';

  @override
  String get profile_crash_reporting => 'ক্র্যাশ রিপোর্টিং';

  @override
  String get profile_crash_reporting_desc => 'স্বয়ংক্রিয়ভাবে ডেভেলপারদের কাছে ক্র্যাশ রিপোর্ট পাঠান';

  @override
  String get profile_view_privacy_policy => 'গোপনীয়তা নীতি দেখুন';

  @override
  String get profile_opening_privacy_policy => 'গোপনীয়তা নীতি খোলা হচ্ছে...';

  @override
  String get profile_export_my_data => 'আমার ডেটা এক্সপোর্ট করুন';

  @override
  String get profile_data_export_submitted => 'ডেটা এক্সপোর্টের অনুরোধ জমা দেওয়া হয়েছে';

  @override
  String get profile_delete_my_account => 'আমার অ্যাকাউন্ট মুছে ফেলুন';

  @override
  String get profile_delete_account_title => 'অ্যাকাউন্ট মুছে ফেলুন';

  @override
  String get profile_delete_account_confirm => 'এই কাজটি আর ফেরানো যাবে না। আপনার সমস্ত রিপোর্ট এবং ডেটা স্থায়ীভাবে মুছে ফেলা হবে। আপনি কি নিশ্চিতভাবে এগিয়ে যেতে চান?';

  @override
  String get profile_delete_account_submitted => 'অ্যাকাউন্ট মোছার অনুরোধ জমা দেওয়া হয়েছে';

  @override
  String get profile_no_name_provided => 'কোনো নাম দেওয়া হয়নি';

  @override
  String get profile_no_email_provided => 'কোনো ইমেল দেওয়া হয়নি';

  @override
  String get profile_no_phone_provided => 'কোনো ফোন নম্বর দেওয়া হয়নি';

  @override
  String get profile_default_location => 'পুনে, মহারাষ্ট্র, ভারত';

  @override
  String get profile_default_language => 'bn';

  @override
  String get profile_months => 'জানু,ফেব্রু,মার্চ,এপ্রিল,মে,জুন,জুলাই,আগস্ট,সেপ্ট,অক্টো,নভে,ডিসে';

  @override
  String get create_report_title => 'বিপদের রিপোর্ট তৈরি করুন';

  @override
  String get create_report_subtitle => 'আমাদের সমুদ্রকে নিরাপদ রাখতে সাহায্য করুন';

  @override
  String get create_report_description_label => 'বিবরণ *';

  @override
  String get create_report_description_hint => 'আপনি যে সামুদ্রিক বিপদটি দেখেছেন তার বর্ণনা দিন...';

  @override
  String get create_report_description_error_empty => 'অনুগ্রহ করে একটি বিবরণ দিন';

  @override
  String get create_report_description_error_min_length => 'বিবরণটি কমপক্ষে ১০ অক্ষরের হতে হবে';

  @override
  String get create_report_location_label => 'অবস্থান *';

  @override
  String get create_report_location_hint => 'অবস্থান লিখুন বা নীচের বোতামগুলি ব্যবহার করুন';

  @override
  String get create_report_location_error => 'অনুগ্রহ করে একটি অবস্থান যোগ করুন';

  @override
  String get create_report_current_location => 'বর্তমান অবস্থান';

  @override
  String get create_report_getting_location => 'নির্ধারণ করা হচ্ছে...';

  @override
  String get create_report_pin_on_map => 'মানচিত্রে পিন করুন';

  @override
  String get create_report_location_selected => 'অবস্থান সফলভাবে নির্বাচিত হয়েছে';

  @override
  String create_report_coordinates(Object lat, Object lng) {
    return 'স্থানাঙ্ক: $lat, $lng';
  }

  @override
  String get create_report_attach_media => 'মিডিয়া সংযুক্ত করুন';

  @override
  String get create_report_attach_photos_videos => 'ছবি/ভিডিও সংযুক্ত করুন';

  @override
  String get create_report_submit => 'রিপোর্ট জমা দিন';

  @override
  String get create_report_submitting => 'জমা দেওয়া হচ্ছে...';

  @override
  String create_report_media_attached_success(Object count) {
    return '$countটি ফাইল সফলভাবে সংযুক্ত করা হয়েছে';
  }

  @override
  String create_report_media_attach_failed(Object error) {
    return 'মিডিয়া সংযুক্ত করতে ব্যর্থ: $error';
  }

  @override
  String get create_report_location_captured_success => 'বর্তমান অবস্থান সফলভাবে ক্যাপচার করা হয়েছে!';

  @override
  String get create_report_location_permission_denied => 'ব্যবহারকারী অবস্থানের অনুমতি অস্বীকার করেছেন। এই বৈশিষ্ট্যটি ব্যবহার করতে অনুগ্রহ করে অবস্থান অ্যাক্সেসের অনুমতি দিন।';

  @override
  String get create_report_location_permission_denied_forever => 'অবস্থানের অনুমতি স্থায়ীভাবে অস্বীকার করা হয়েছে। অনুগ্রহ করে আপনার ডিভাইস সেটিংসে অবস্থান অ্যাক্সেস সক্ষম করুন।';

  @override
  String get create_report_location_services_disabled => 'অবস্থান পরিষেবা নিষ্ক্রিয় করা আছে। অনুগ্রহ করে আপনার ডিভাইস সেটিংসে অবস্থান পরিষেবা সক্ষম করুন।';

  @override
  String get create_report_location_unable_determine => 'অবস্থান নির্ধারণ করা যাচ্ছে না। অনুগ্রহ করে আবার চেষ্টা করুন বা মানচিত্রে ম্যানুয়ালি অবস্থান নির্বাচন করুন।';

  @override
  String get create_report_location_current => 'বর্তমান অবস্থান';

  @override
  String create_report_location_coordinates(Object lat, Object lng) {
    return 'অবস্থান: $lat, $lng';
  }

  @override
  String get create_report_submit_location_required => 'রিপোর্টের জন্য অনুগ্রহ করে একটি অবস্থান যোগ করুন';

  @override
  String get create_report_submit_login_required => 'একটি রিপোর্ট জমা দেওয়ার জন্য অনুগ্রহ করে লগ ইন করুন';

  @override
  String create_report_submit_failed(Object error) {
    return 'রিপোর্ট জমা দিতে ব্যর্থ: $error';
  }

  @override
  String get create_report_submit_retry => 'পুনরায় চেষ্টা করুন';

  @override
  String get create_report_success_title => 'রিপোর্ট সফলভাবে জমা দেওয়া হয়েছে!';

  @override
  String get create_report_success_auto_approved => 'রিপোর্ট স্বয়ংক্রিয়ভাবে অনুমোদিত এবং প্রকাশিত হয়েছে!';

  @override
  String create_report_success_auto_approved_sub(Object score) {
    return 'উচ্চ বিশ্বাস স্কোর ($score%)';
  }

  @override
  String get create_report_success_review => 'রিপোর্ট পর্যালোচনার জন্য জমা দেওয়া হয়েছে';

  @override
  String get create_report_success_review_normal => 'সাধারণ প্রক্রিয়াকরণ প্রত্যাশিত';

  @override
  String get create_report_success_review_verification => 'অতিরিক্ত যাচাইকরণের প্রয়োজন হতে পারে';

  @override
  String get create_report_success_manual_review => 'রিপোর্ট ম্যানুয়াল পর্যালোচনার জন্য জমা দেওয়া হয়েছে';

  @override
  String get create_report_success_manual_review_sub => 'বিস্তারিত যাচাইকরণ প্রয়োজন';

  @override
  String create_report_success_title_label(Object title) {
    return 'শিরোনাম: $title';
  }

  @override
  String get create_report_unknown_location => 'অজানা অবস্থান';

  @override
  String get create_report_selected_location => 'নির্বাচিত অবস্থান';
}
