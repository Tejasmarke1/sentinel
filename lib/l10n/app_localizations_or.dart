// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Oriya (`or`).
class AppLocalizationsOr extends AppLocalizations {
  AppLocalizationsOr([String locale = 'or']) : super(locale);

  @override
  String get appTitle => 'ସେଣ୍ଟିନେଲ୍';

  @override
  String get common_cancel => 'ବାତିଲ୍ କରନ୍ତୁ';

  @override
  String get common_delete => 'ମଟାଇଦିଅ';

  @override
  String get common_edit => 'ସମ୍ପାଦନା କରନ୍ତୁ';

  @override
  String get common_retry => 'ପୁଣିଥରେ ଚେଷ୍ଟା କରନ୍ତୁ';

  @override
  String get common_default => 'ଡିଫଲ୍ଟ';

  @override
  String get language_select_title => 'ଭାଷା ବାଛନ୍ତୁ';

  @override
  String get language_select_subtitle => 'ସେଣ୍ଟିନେଲ୍ ପାଇଁ ଆପଣଙ୍କ ପସନ୍ଦର ଭାଷା ବାଛନ୍ତୁ';

  @override
  String get language_section_primary => 'ମୁଖ୍ୟ ଭାଷା';

  @override
  String get language_section_west => 'ପଶ୍ଚିମ କୂଳର ଭାଷା';

  @override
  String get language_section_east => 'ପୂର୍ବ କୂଳର ଭାଷା';

  @override
  String get language_section_islands => 'ଦ୍ୱୀପ ଅଞ୍ଚଳ';

  @override
  String language_selected_label(Object language) {
    return 'ବାଛାଗଲା: $language';
  }

  @override
  String language_changed_snackbar(Object language) {
    return 'ଭାଷା $language କୁ ବଦଳାଗଲା';
  }

  @override
  String get language_confirm_button => 'ଭାଷା ନିଶ୍ଚିତ କରନ୍ତୁ';

  @override
  String get login_welcome_to => 'ସ୍ୱାଗତ';

  @override
  String get login_title_caps => 'ସେଣ୍ଟିନେଲ୍';

  @override
  String get login_tagline => 'ସମୁଦ୍ର ଜନିତ ବିପଦ ସତର୍କତା ପାଇଁ ଆପଣଙ୍କ ସୁରକ୍ଷା ସହଚର';

  @override
  String get login_enter_phone => 'ଆପଣଙ୍କ ମୋବାଇଲ୍ ନମ୍ବର ଦିଅନ୍ତୁ';

  @override
  String get login_phone_help => 'ଆମେ ଆପଣଙ୍କୁ SMS ଦ୍ୱାରା ଏକ ସତ୍ୟାପନ କୋଡ୍ ପଠାଇବୁ';

  @override
  String get login_send_otp => 'OTP ପଠାନ୍ତୁ';

  @override
  String get login_terms_prefix => 'ଆଗକୁ ବଢିଲେ, ଆପଣ ଆମର';

  @override
  String get login_terms => 'ସେବାର ନିୟମ';

  @override
  String get login_and => ' ଏବଂ ';

  @override
  String get login_privacy => 'ଗୋପନୀୟତା ନୀତି';

  @override
  String get login_error_enter_phone => 'ଦୟାକରି ଆପଣଙ୍କ ମୋବାଇଲ୍ ନମ୍ବର ଦିଅନ୍ତୁ';

  @override
  String get login_error_valid_phone => 'ଦୟାକରି ବ validଳିକ ମୋବାଇଲ୍ ନମ୍ବର ଦିଅନ୍ତୁ';

  @override
  String get otp_title => 'ସତ୍ୟାପନ କୋଡ୍ ଦିଅନ୍ତୁ';

  @override
  String otp_sent_to(Object phone) {
    return 'ଆମେ 6-ଅଙ୍କର କୋଡ୍ ପଠାଇଛୁ\n$phone';
  }

  @override
  String get otp_hint => '000000';

  @override
  String get otp_verify_continue => 'ସତ୍ୟାପନ କରନ୍ତୁ ଏବଂ ଆଗକୁ ବଢନ୍ତୁ';

  @override
  String get otp_error_incomplete => 'ଦୟାକରି ସମ୍ପୂର୍ଣ୍ଣ 6-ଅଙ୍କର କୋଡ୍ ଦିଅନ୍ତୁ';

  @override
  String otp_resend_in(Object seconds) {
    return '$seconds ସେକେଣ୍ଡରେ ପୁଣିଥରେ ପଠାନ୍ତୁ';
  }

  @override
  String get otp_resend_cta => 'କୋଡ୍ ମିଳିଲା ନାହିଁ? ପୁଣିଥରେ ପଠାନ୍ତୁ';

  @override
  String get otp_request_first => 'ଦୟାକରି ପ୍ରଥମେ କୋଡ୍ ଅନୁରୋଧ କରନ୍ତୁ।';

  @override
  String get otp_invalid_code => 'Invalid code';

  @override
  String get verification_failed => 'Verification failed';

  @override
  String get phone_country_code => '+91';

  @override
  String get phone_hint_number => '98765 43210';

  @override
  String get reports_title => 'ମୋର ରିପୋର୍ଟଗୁଡିକ';

  @override
  String get reports_subtitle => 'ଆପଣ ପ୍ରଦାନ କରିଥିବା ବିପଦ ରିପୋର୍ଟଗୁଡିକୁ ଟ୍ରାକ୍ କରନ୍ତୁ';

  @override
  String reports_count_label(Object count) {
    return '$count ରିପୋର୍ଟ';
  }

  @override
  String get reports_filter_label => 'ସ୍ଥିତି ଅନୁଯାୟୀ ଫିଲ୍ଟର କରନ୍ତୁ';

  @override
  String get status_pending => 'ପେଣ୍ଡିଂ';

  @override
  String get status_verified => 'ସତ୍ୟାପିତ';

  @override
  String get status_dismissed => 'ବାତିଲ୍';

  @override
  String get status_under_review => 'ପରୀକ୍ଷାଧୀନ';

  @override
  String get reports_loading => 'ଆପଣଙ୍କ ରିପୋର୍ଟଗୁଡିକ ଲୋଡ୍ ହେଉଛି...';

  @override
  String get reports_error_title => 'ରିପୋର୍ଟ ଲୋଡ୍ କରିବାରେ ତ୍ରୁଟି';

  @override
  String get reports_empty_all => 'କୌଣସି ରିପୋର୍ଟ ନାହିଁ';

  @override
  String reports_empty_filtered(Object status) {
    return 'କୌଣସି $status ରିପୋର୍ଟ ନାହିଁ';
  }

  @override
  String get reports_empty_all_sub => 'ଆମ ସମୁଦ୍ରକୁ ସୁରକ୍ଷିତ ରଖିବା ପାଇଁ ସମୁଦ୍ର ବିପଦ ରିପୋର୍ଟ କରନ୍ତୁ';

  @override
  String get reports_empty_filtered_sub => 'ରିପୋର୍ଟ ଦେଖିବା ପାଇଁ ଅନ୍ୟ ଏକ ଫିଲ୍ଟର ବାଛନ୍ତୁ';

  @override
  String get reports_stat_pending => 'ପେଣ୍ଡିଂ';

  @override
  String get reports_stat_verified => 'ସତ୍ୟାପିତ';

  @override
  String get reports_stat_dismissed => 'ବାତିଲ୍';

  @override
  String get time_just_now => 'ଏମିତିକି';

  @override
  String time_minutes_ago(Object minutes) {
    return '$minutes ମିନିଟ୍ ପୂର୍ବରୁ';
  }

  @override
  String time_hours_ago(Object hours) {
    return '$hours ଘଣ୍ଟା ପୂର୍ବରୁ';
  }

  @override
  String time_days_ago(Object days) {
    return '$days ଦିନ ପୂର୍ବରୁ';
  }

  @override
  String time_on_date(Object day, Object month, Object year) {
    return '$day/$month/$year';
  }

  @override
  String get report_details_title => 'ରିପୋର୍ଟ ବିବରଣୀ';

  @override
  String get report_menu_edit => 'ରିପୋର୍ଟ ସମ୍ପାଦନା କରନ୍ତୁ';

  @override
  String get report_menu_delete => 'ରିପୋର୍ଟ ମଟାଇଦିଅ';

  @override
  String report_reported_on(Object date) {
    return '$date ରେ ରିପୋର୍ଟ କରାଗଲା';
  }

  @override
  String get report_section_description => 'ବିବରଣୀ';

  @override
  String get report_section_location => 'ସ୍ଥାନ';

  @override
  String report_section_media(Object count) {
    return 'ମିଡିଆ ($count)';
  }

  @override
  String get report_section_reputation => 'ରିପୋର୍ଟ କରୁଥିବାଙ୍କର ବିଶ୍ୱାସଯୋଗ୍ୟତା';

  @override
  String get report_media_view_all => 'ସମସ୍ତଙ୍କୁ ଦେଖନ୍ତୁ';

  @override
  String get report_lat_label => 'ଲାଟ୍:';

  @override
  String get report_lng_label => 'ଲଙ୍ଗ୍:';

  @override
  String get report_action_edit => 'ରିପୋର୍ଟ ସମ୍ପାଦନା କରନ୍ତୁ';

  @override
  String get report_action_delete => 'ରିପୋର୍ଟ ମଟାଇଦିଅ';

  @override
  String get report_delete_title => 'ରିପୋର୍ଟ ମଟାଇଦିଅ';

  @override
  String report_delete_confirm(Object title) {
    return 'ଆପଣ \"$title\" ମଟାଇବାକୁ ନିଶ୍ଚିତ କି? ଏହି କାର୍ଯ୍ୟ ପୁଣିଥରେ ଫେରାଇ ପାରିବ ନାହିଁ।';
  }

  @override
  String get report_deleted_success => 'ରିପୋର୍ଟ ସଫଳତାର ସହିତ ମଟାଇଦିଆଗଲା';

  @override
  String report_delete_failed(Object error) {
    return 'ରିପୋର୍ଟ ମଟାଇବାରେ ବିଫଳ: $error';
  }

  @override
  String get report_edit_coming => 'ସମ୍ପାଦନା ସୁବିଧା ଶୀଘ୍ର ଆସୁଛି!';

  @override
  String get report_media_coming => 'ମିଡିଆ ଦର୍ଶକ ସୁବିଧା ଶୀଘ୍ର ଆସୁଛି!';

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
