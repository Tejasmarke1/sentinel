// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Oriya (`or`).
class AppLocalizationsOr extends AppLocalizations {
  AppLocalizationsOr([String locale = 'or']) : super(locale);

  @override
  String get appTitle => 'ସେଣ୍ଟିନେଲ';

  @override
  String get common_cancel => 'ବାତିଲ କରନ୍ତୁ';

  @override
  String get common_delete => 'ଡିଲିଟ୍ କରନ୍ତୁ';

  @override
  String get common_edit => 'ସମ୍ପାଦନା କରନ୍ତୁ';

  @override
  String get common_retry => 'ପୁଣି ଚେଷ୍ଟା କରନ୍ତୁ';

  @override
  String get common_default => 'ଡିଫଲ୍ଟ';

  @override
  String get language_select_title => 'ଭାଷା ଚୟନ କରନ୍ତୁ';

  @override
  String get language_select_subtitle => 'ସେଣ୍ଟିନେଲ ପାଇଁ ଆପଣଙ୍କ ପସନ୍ଦର ଭାଷା ବାଛନ୍ତୁ';

  @override
  String get language_section_primary => 'ପ୍ରାଥମିକ ଭାଷାଗୁଡ଼ିକ';

  @override
  String get language_section_west => 'ପଶ୍ଚିମ ଉପକୂଳ ଭାଷାଗୁଡ଼ିକ';

  @override
  String get language_section_east => 'ପୂର୍ବ ଉପକୂଳ ଭାଷାଗୁଡ଼ିକ';

  @override
  String get language_section_islands => 'ଦ୍ଵୀପପୁଞ୍ଜ ଅଞ୍ଚଳ';

  @override
  String language_selected_label(Object language) {
    return 'ଚୟନ କରାଯାଇଛି: $language';
  }

  @override
  String language_changed_snackbar(Object language) {
    return 'ଭାଷା $language କୁ ପରିବର୍ତ୍ତନ କରାଗଲା';
  }

  @override
  String get language_confirm_button => 'ଭାଷା ନିଶ୍ଚିତ କରନ୍ତୁ';

  @override
  String get login_welcome_to => 'କୁ ସ୍ୱାଗତ';

  @override
  String get login_title_caps => 'ସେଣ୍ଟିନେଲ';

  @override
  String get login_tagline => 'ସାମୁଦ୍ରିକ ବିପଦ ସତର୍କତା ପାଇଁ ଆପଣଙ୍କ ସୁରକ୍ଷା ସାଥୀ';

  @override
  String get login_enter_phone => 'ଆପଣଙ୍କ ମୋବାଇଲ୍ ନମ୍ବର ଦିଅନ୍ତୁ';

  @override
  String get login_phone_help => 'ଆମେ ଆପଣଙ୍କୁ SMS ମାଧ୍ୟମରେ ଏକ ଯାଞ୍ଚ କୋଡ୍ ପଠାଇବୁ';

  @override
  String get login_send_otp => 'OTP ପଠାନ୍ତୁ';

  @override
  String get login_terms_prefix => 'ଆଗକୁ ବଢିବା ଦ୍ଵାରା, ଆପଣ ଆମର';

  @override
  String get login_terms => 'ସେବା ସର୍ତ୍ତାବଳୀ';

  @override
  String get login_and => ' ଏବଂ ';

  @override
  String get login_privacy => 'ଗୋପନୀୟତା ନୀତିରେ ସହମତ ଅଟନ୍ତି';

  @override
  String get login_error_enter_phone => 'ଦୟାକରି ଆପଣଙ୍କ ମୋବାଇଲ୍ ନମ୍ବର ଦିଅନ୍ତୁ';

  @override
  String get login_error_valid_phone => 'ଦୟାକରି ଏକ ବୈଧ ମୋବାଇଲ୍ ନମ୍ବର ଦିଅନ୍ତୁ';

  @override
  String get otp_title => 'ଯାଞ୍ଚ କୋଡ୍ ଦିଅନ୍ତୁ';

  @override
  String otp_sent_to(Object phone) {
    return 'ଆମେ $phone କୁ ଏକ ୬-ଅଙ୍କ ବିଶିଷ୍ଟ କୋଡ୍ ପଠାଇଛୁ';
  }

  @override
  String get otp_hint => '୦୦୦୦୦୦';

  @override
  String get otp_verify_continue => 'ଯାଞ୍ଚ କରନ୍ତୁ ଏବଂ ଆଗକୁ ବଢନ୍ତୁ';

  @override
  String get otp_error_incomplete => 'ଦୟାକରି ସମ୍ପୂର୍ଣ୍ଣ ୬-ଅଙ୍କ ବିଶିଷ୍ଟ କୋଡ୍ ଦିଅନ୍ତୁ';

  @override
  String otp_resend_in(Object seconds) {
    return '$seconds ସେକେଣ୍ଡରେ କୋଡ୍ ପୁଣି ପଠାନ୍ତୁ';
  }

  @override
  String get otp_resend_cta => 'କୋଡ୍ ପାଇନାହାନ୍ତି କି? ପୁଣି ପଠାନ୍ତୁ';

  @override
  String get otp_request_first => 'ଦୟାକରି ପ୍ରଥମେ କୋଡ୍ ପାଇଁ ଅନୁରୋଧ କରନ୍ତୁ।';

  @override
  String get otp_invalid_code => 'ଅବୈଧ କୋଡ୍';

  @override
  String get verification_failed => 'ଯାଞ୍ଚ ବିଫଳ ହେଲା';

  @override
  String get phone_country_code => '+୯୧';

  @override
  String get phone_hint_number => '୯୮୭୬୫ ୪୩୨୧୦';

  @override
  String get reports_title => 'ମୋର ରିପୋର୍ଟଗୁଡ଼ିକ';

  @override
  String get reports_subtitle => 'ଆପଣଙ୍କ ଦାଖଲ ହୋଇଥିବା ବିପଦ ରିପୋର୍ଟଗୁଡ଼ିକୁ ଟ୍ରାକ୍ କରନ୍ତୁ';

  @override
  String reports_count_label(Object count) {
    return '$count ରିପୋର୍ଟ';
  }

  @override
  String get reports_filter_label => 'ସ୍ଥିତି ଅନୁଯାୟୀ ଫିଲ୍ଟର୍ କରନ୍ତୁ';

  @override
  String get status_pending => 'ବିଚାରାଧୀନ';

  @override
  String get status_verified => 'ଯାଞ୍ଚ ହୋଇଛି';

  @override
  String get status_dismissed => 'ଖାରଜ ହୋଇଛି';

  @override
  String get status_under_review => 'ସମୀକ୍ଷାଧୀନ';

  @override
  String get reports_loading => 'ଆପଣଙ୍କ ରିପୋର୍ଟଗୁଡ଼ିକ ଲୋଡ୍ ହେଉଛି...';

  @override
  String get reports_error_title => 'ରିପୋର୍ଟ ଲୋଡ୍ କରିବାରେ ତ୍ରୁଟି';

  @override
  String get reports_empty_all => 'ଏପର୍ଯ୍ୟନ୍ତ କୌଣସି ରିପୋର୍ଟ ନାହିଁ';

  @override
  String reports_empty_filtered(Object status) {
    return 'କୌଣସି $status ରିପୋର୍ଟ ନାହିଁ';
  }

  @override
  String get reports_empty_all_sub => 'ଆମ ଜଳରାଶିକୁ ସୁରକ୍ଷିତ ରଖିବା ପାଇଁ ସାମୁଦ୍ରିକ ବିପଦଗୁଡ଼ିକର ରିପୋର୍ଟ ଦେବା ଆରମ୍ଭ କରନ୍ତୁ';

  @override
  String get reports_empty_filtered_sub => 'ରିପୋର୍ଟ ଦେଖିବା ପାଇଁ ଏକ ଭିନ୍ନ ଫିଲ୍ଟର୍ ଚୟନ କରିବାକୁ ଚେଷ୍ଟା କରନ୍ତୁ';

  @override
  String get reports_stat_pending => 'ବିଚାରାଧୀନ';

  @override
  String get reports_stat_verified => 'ଯାଞ୍ଚ ହୋଇଛି';

  @override
  String get reports_stat_dismissed => 'ଖାରଜ ହୋଇଛି';

  @override
  String get time_just_now => 'ଏହିକ୍ଷଣି';

  @override
  String time_minutes_ago(Object minutes) {
    return '$minutes ମିନିଟ୍ ପୂର୍ବେ';
  }

  @override
  String time_hours_ago(Object hours) {
    return '$hours ଘଣ୍ଟା ପୂର୍ବେ';
  }

  @override
  String time_days_ago(Object days) {
    return '$days ଦିନ ପୂର୍ବେ';
  }

  @override
  String time_on_date(Object day, Object month, Object year) {
    return '$day/$month/$year';
  }

  @override
  String get report_menu_edit => 'ରିପୋର୍ଟ ସମ୍ପାଦନା କରନ୍ତୁ';

  @override
  String get report_menu_delete => 'ରିପୋର୍ଟ ଡିଲିଟ୍ କରନ୍ତୁ';

  @override
  String get report_delete_title => 'ରିପୋର୍ଟ ଡିଲିଟ୍ କରନ୍ତୁ';

  @override
  String report_delete_confirm(Object title) {
    return 'ଆପଣ ନିଶ୍ଚିତ କି ଆପଣ \"$title\" ଡିଲିଟ୍ କରିବାକୁ ଚାହୁଁଛନ୍ତି? ଏହି କାର୍ଯ୍ୟକୁ ପୂର୍ବବତ୍ କରାଯାଇପାରିବ ନାହିଁ।';
  }

  @override
  String get report_deleted_success => 'ରିପୋର୍ଟ ସଫଳତାର ସହିତ ଡିଲିଟ୍ ହୋଇଗଲା';

  @override
  String report_delete_failed(Object error) {
    return 'ରିପୋର୍ଟ ଡିଲିଟ୍ କରିବାରେ ବିଫଳ: $error';
  }

  @override
  String get report_edit_coming => 'ସମ୍ପାଦନା ସୁବିଧା ଶୀଘ୍ର ଆସୁଛି!';

  @override
  String get report_media_coming => 'ମିଡିଆ ଭିୟୁଅର୍ ଶୀଘ୍ର ଆସୁଛି!';

  @override
  String get report_section_description => 'ବିବରଣୀ';

  @override
  String get report_section_location => 'ସ୍ଥାନ';

  @override
  String report_section_media(Object count) {
    return 'ମିଡିଆ ($count)';
  }

  @override
  String get report_section_reputation => 'ରିପୋର୍ଟରଙ୍କ ପ୍ରତିଷ୍ଠା';

  @override
  String get report_media_view_all => 'ସବୁ ଦେଖନ୍ତୁ';

  @override
  String get report_lat_label => 'ଅକ୍ଷାଂଶ:';

  @override
  String get report_lng_label => 'ଦ୍ରାଘିମା:';

  @override
  String get report_action_edit => 'ରିପୋର୍ଟ ସମ୍ପାଦନା କରନ୍ତୁ';

  @override
  String get report_action_delete => 'ଡିଲିଟ୍ କରନ୍ତୁ';

  @override
  String get report_details_title => 'ରିପୋର୍ଟ ବିବରଣୀ';

  @override
  String get report_id_label => 'ରିପୋର୍ଟ ଆଇଡି';

  @override
  String report_attachments_label(Object count) {
    return 'ସଂଲଗ୍ନକ ($count)';
  }

  @override
  String get report_media_files => 'ମିଡିଆ ଫାଇଲଗୁଡ଼ିକ';

  @override
  String report_media_files_attached(Object count) {
    return 'ଏହି ରିପୋର୍ଟ ସହିତ $count ଫାଇଲ୍(ଗୁଡ଼ିକ) ସଂଲଗ୍ନ କରାଯାଇଛି';
  }

  @override
  String get report_media_view => 'ଦେଖନ୍ତୁ';

  @override
  String get nav_home => 'ହୋମ୍';

  @override
  String get nav_alerts => 'ସତର୍କତା';

  @override
  String get nav_reports => 'ରିପୋର୍ଟଗୁଡ଼ିକ';

  @override
  String get nav_profile => 'ପ୍ରୋଫାଇଲ୍';

  @override
  String get onboard_complete_your => 'ଆପଣଙ୍କର';

  @override
  String get onboard_profile_setup => 'ପ୍ରୋଫାଇଲ୍ ସେଟଅପ୍ ସମ୍ପୂର୍ଣ୍ଣ କରନ୍ତୁ';

  @override
  String get onboard_header_subtitle => 'ଆପଣଙ୍କ ଅନୁଭବକୁ ବ୍ୟକ୍ତିଗତ କରିବା ଏବଂ ଆପଣଙ୍କୁ ସୁରକ୍ଷିତ ରଖିବା ପାଇଁ ଆମକୁ ସାହାଯ୍ୟ କରନ୍ତୁ';

  @override
  String get onboard_full_name_label => 'ପୂରା ନାମ';

  @override
  String get onboard_full_name_hint => 'ଆପଣଙ୍କ ପୂରା ନାମ ଦିଅନ୍ତୁ';

  @override
  String get onboard_full_name_error => 'ଦୟାକରି ଆପଣଙ୍କ ନାମ ଦିଅନ୍ତୁ';

  @override
  String get onboard_email_label => 'ଇମେଲ୍ ଠିକଣା';

  @override
  String get onboard_email_hint => 'ଆପଣଙ୍କ ଇମେଲ୍ ଠିକଣା ଦିଅନ୍ତୁ';

  @override
  String get onboard_email_error_empty => 'ଦୟାକରି ଆପଣଙ୍କ ଇମେଲ୍ ଦିଅନ୍ତୁ';

  @override
  String get onboard_email_error_invalid => 'ଦୟାକରି ଏକ ବୈଧ ଇମେଲ୍ ଠିକଣା ଦିଅନ୍ତୁ';

  @override
  String get onboard_trust_title => 'ବିଶ୍ୱାସ ସ୍କୋର୍ ସିଷ୍ଟମ୍';

  @override
  String get onboard_trust_desc => 'ଆପଣଙ୍କ ରିପୋର୍ଟଗୁଡ଼ିକ ରିପୋର୍ଟର ଗୁଣବତ୍ତା, ସ୍ଥାନର ସଠିକତା, ଏବଂ ରିପୋର୍ଟିଂ ଇତିହାସ ଉପରେ ଆଧାର କରି ମୂଲ୍ୟାଙ୍କନ କରାଯିବ। ବିସ୍ତୃତ, ସଠିକ୍ ରିପୋର୍ଟ ଦାଖଲ କରି ନିଜର ପ୍ରତିଷ୍ଠା ଗଢନ୍ତୁ।';

  @override
  String get onboard_continue => 'ସେଟଅପ୍ ସମ୍ପୂର୍ଣ୍ଣ କରନ୍ତୁ';

  @override
  String get onboard_footer_secure => 'ଆପଣଙ୍କ ସୂଚନା ସୁରକ୍ଷିତ ଏବଂ ଏନକ୍ରିପ୍ଟ ହୋଇଛି';

  @override
  String get dashboard_live => 'ଲାଇଭ୍';

  @override
  String get dashboard_title => 'ସାମୁଦ୍ରିକ ସୁରକ୍ଷା ଡ୍ୟାସବୋର୍ଡ';

  @override
  String get dashboard_stat_active_alerts => 'ସକ୍ରିୟ ସତର୍କତା';

  @override
  String get dashboard_stat_verified => 'ଯାଞ୍ଚ ହୋଇଛି';

  @override
  String get dashboard_stat_this_week => 'ଏହି ସପ୍ତାହ';

  @override
  String get dashboard_recent_reports => 'ନିକଟ ଅତୀତର ବିପଦ ରିପୋର୍ଟ';

  @override
  String get profile_title => 'ପ୍ରୋଫାଇଲ୍';

  @override
  String get profile_subtitle => 'ଆପଣଙ୍କ ଆକାଉଣ୍ଟ୍ ଏବଂ ସେଟିଂସ ପରିଚାଳନା କରନ୍ତୁ';

  @override
  String get profile_user_not_logged_in => 'ଉପଭୋକ୍ତା ଲଗ୍ ଇନ୍ କରିନାହାନ୍ତି।';

  @override
  String get profile_could_not_load_data => 'ଉପଭୋକ୍ତା ଡାଟା ଲୋଡ୍ କରାଯାଇପାରିଲା ନାହିଁ।';

  @override
  String profile_something_wrong(Object error) {
    return 'କିଛି ତ୍ରୁଟି ହୋଇଛି: $error';
  }

  @override
  String get profile_verified => 'ଯାଞ୍ଚ ହୋଇଛି';

  @override
  String profile_member_since(Object date) {
    return '$date ରୁ ସଦସ୍ୟ';
  }

  @override
  String get profile_email => 'ଇମେଲ୍';

  @override
  String get profile_phone => 'ଫୋନ୍';

  @override
  String get profile_edit_profile => 'ପ୍ରୋଫାଇଲ୍ ସମ୍ପାଦନା କରନ୍ତୁ';

  @override
  String get profile_statistics_title => 'ପରିସଂଖ୍ୟାନ ଏବଂ ସାରାଂଶ';

  @override
  String get profile_reports_submitted => 'ଦାଖଲ ହୋଇଥିବା ରିପୋର୍ଟ';

  @override
  String get profile_verified_reports => 'ଯାଞ୍ଚ ହୋଇଥିବା ରିପୋର୍ଟ';

  @override
  String get profile_pending_reports => 'ବିଚାରାଧୀନ ରିପୋର୍ଟ';

  @override
  String get profile_rejected_reports => 'ଖାରଜ ହୋଇଥିବା ରିପୋର୍ଟ';

  @override
  String profile_could_not_load_stats(Object error) {
    return 'ପରିସଂଖ୍ୟାନ ଲୋଡ୍ କରାଯାଇପାରିଲା ନାହିଁ: $error';
  }

  @override
  String get profile_no_stats_available => 'କୌଣସି ପରିସଂଖ୍ୟାନ ଉପଲବ୍ଧ ନାହିଁ।';

  @override
  String get profile_account_options => 'ଆକାଉଣ୍ଟ୍ ବିକଳ୍ପ';

  @override
  String get profile_language_settings => 'ଭାଷା ସେଟିଂସ';

  @override
  String get profile_language_settings_desc => 'ଆପଣଙ୍କ ପସନ୍ଦର ଭାଷା ବାଛନ୍ତୁ';

  @override
  String get profile_notification_settings => 'ବିଜ୍ଞପ୍ତି ସେଟିଂସ';

  @override
  String get profile_notification_settings_desc => 'ସତର୍କତା ଏବଂ ପୁଶ୍ ବିଜ୍ଞପ୍ତି ପରିଚାଳନା କରନ୍ତୁ';

  @override
  String get profile_privacy_permissions => 'ଗୋପନୀୟତା ଏବଂ ଅନୁମତି';

  @override
  String get profile_privacy_permissions_desc => 'ଆପଣଙ୍କ ଡାଟା ଏବଂ ଆପ୍ ଅନୁମତି ନିୟନ୍ତ୍ରଣ କରନ୍ତୁ';

  @override
  String get profile_help_support => 'ସହାୟତା ଏବଂ ସମର୍ଥନ';

  @override
  String get profile_help_support_desc => 'ସହାୟତା ପାଆନ୍ତୁ ଏବଂ ସମର୍ଥନ ସହିତ ଯୋଗାଯୋଗ କରନ୍ତୁ';

  @override
  String get profile_help_coming_soon => 'ସହାୟତା ଏବଂ ସମର୍ଥନ ଶୀଘ୍ର ଆସୁଛି!';

  @override
  String get profile_about_sentinel => 'ସେଣ୍ଟିନେଲ ବିଷୟରେ';

  @override
  String get profile_about_sentinel_desc => 'ଆପ୍ ସଂସ୍କରଣ ଏବଂ ସୂଚନା';

  @override
  String get profile_app_name => 'ସେଣ୍ଟିନେଲ';

  @override
  String get profile_app_version => '୧.୦.୦';

  @override
  String get profile_app_description => 'ଜନସାଧାରଣଙ୍କ ଦ୍ୱାରା ସାମୁଦ୍ରିକ ବିପଦ ସତର୍କତା\n\nସମ୍ପ୍ରଦାୟ ରିପୋର୍ଟିଂ ମାଧ୍ୟମରେ ଆମର ମହାସାଗରଗୁଡ଼ିକୁ ସୁରକ୍ଷିତ ରଖିବାରେ ସାହାଯ୍ୟ କରିବା।';

  @override
  String get profile_logout => 'ଲଗ୍ଆଉଟ୍';

  @override
  String get profile_logout_desc => 'ଆପଣଙ୍କ ଆକାଉଣ୍ଟରୁ ସାଇନ୍ ଆଉଟ୍ କରନ୍ତୁ';

  @override
  String get profile_logout_confirm => 'ଆପଣ ସେଣ୍ଟିନେଲରୁ ଲଗ୍ଆଉଟ୍ କରିବାକୁ ନିଶ୍ଚିତ କି?';

  @override
  String get profile_cancel => 'ବାତିଲ କରନ୍ତୁ';

  @override
  String profile_logout_failed(Object error) {
    return 'ଲଗ୍ଆଉଟ୍ ବିଫଳ ହେଲା: $error';
  }

  @override
  String get profile_edit_profile_title => 'ପ୍ରୋଫାଇଲ୍ ସମ୍ପାଦନା କରନ୍ତୁ';

  @override
  String get profile_full_name_label => 'ପୂରା ନାମ';

  @override
  String get profile_full_name_hint => 'ଆପଣଙ୍କ ପୂରା ନାମ ଦିଅନ୍ତୁ';

  @override
  String get profile_full_name_error => 'ଦୟାକରି ଆପଣଙ୍କ ନାମ ଦିଅନ୍ତୁ';

  @override
  String get profile_email_label => 'ଇମେଲ୍ ଠିକଣା';

  @override
  String get profile_email_hint => 'ଆପଣଙ୍କ ଇମେଲ୍ ଠିକଣା ଦିଅନ୍ତୁ';

  @override
  String get profile_email_error_empty => 'ଦୟାକରି ଆପଣଙ୍କ ଇମେଲ୍ ଦିଅନ୍ତୁ';

  @override
  String get profile_email_error_invalid => 'ଦୟାକରି ଏକ ବୈଧ ଇମେଲ୍ ଠିକଣା ଦିଅନ୍ତୁ';

  @override
  String get profile_phone_label => 'ଫୋନ୍ ନମ୍ବର';

  @override
  String get profile_save_changes => 'ପରିବର୍ତ୍ତନଗୁଡ଼ିକ ସଞ୍ଚୟ କରନ୍ତୁ';

  @override
  String get profile_user_not_found => 'ତ୍ରୁଟି: ଉପଭୋକ୍ତା ମିଳିଲେ ନାହିଁ।';

  @override
  String get profile_updated_success => 'ପ୍ରୋଫାଇଲ୍ ସଫଳତାର ସହିତ ଅପଡେଟ୍ ହୋଇଛି!';

  @override
  String profile_update_failed(Object error) {
    return 'ପ୍ରୋଫାଇଲ୍ ଅପଡେଟ୍ କରିବାରେ ବିଫଳ: $error';
  }

  @override
  String profile_language_update_failed(Object error) {
    return 'ଭାଷା ଅପଡେଟ୍ କରିବାରେ ବିଫଳ: $error';
  }

  @override
  String get profile_notification_title => 'ବିଜ୍ଞପ୍ତି ସେଟିଂସ';

  @override
  String get profile_general_notifications => 'ସାଧାରଣ ବିଜ୍ଞପ୍ତି';

  @override
  String get profile_push_notifications => 'ପୁଶ୍ ବିଜ୍ଞପ୍ତି';

  @override
  String get profile_push_notifications_desc => 'ଆପଣଙ୍କ ଡିଭାଇସରେ ବିଜ୍ଞପ୍ତି ଗ୍ରହଣ କରନ୍ତୁ';

  @override
  String get profile_email_notifications => 'ଇମେଲ୍ ବିଜ୍ଞପ୍ତି';

  @override
  String get profile_email_notifications_desc => 'ଇମେଲ୍ ମାଧ୍ୟମରେ ବିଜ୍ଞପ୍ତି ଗ୍ରହଣ କରନ୍ତୁ';

  @override
  String get profile_alert_types => 'ସତର୍କତା ପ୍ରକାର';

  @override
  String get profile_critical_safety_alerts => 'ଗୁରୁତ୍ୱପୂର୍ଣ୍ଣ ସୁରକ୍ଷା ସତର୍କତା';

  @override
  String get profile_critical_safety_alerts_desc => 'ତୁରନ୍ତ ବିପଦ ଏବଂ ଜରୁରୀକାଳୀନ ସତର୍କତା';

  @override
  String get profile_report_status_updates => 'ରିପୋର୍ଟ ସ୍ଥିତି ଅପଡେଟ୍';

  @override
  String get profile_report_status_updates_desc => 'ଆପଣଙ୍କ ଦାଖଲ ହୋଇଥିବା ରିପୋର୍ଟଗୁଡ଼ିକ ଉପରେ ଅପଡେଟ୍';

  @override
  String get profile_news_updates => 'ଖବର ଏବଂ ଅପଡେଟ୍';

  @override
  String get profile_news_updates_desc => 'ସାମୁଦ୍ରିକ ସୁରକ୍ଷା ଖବର ଏବଂ ଆପ୍ ଅପଡେଟ୍';

  @override
  String get profile_critical_alerts_info => 'ଆପଣଙ୍କ ସୁରକ୍ଷା ପାଇଁ ଗୁରୁତ୍ୱପୂର୍ଣ୍ଣ ସୁରକ୍ଷା ସତର୍କତାକୁ ଅକ୍ଷମ କରାଯାଇପାରିବ ନାହିଁ।';

  @override
  String get profile_privacy_title => 'ଗୋପନୀୟତା ଏବଂ ଅନୁମତି';

  @override
  String get profile_location_data => 'ସ୍ଥାନ ଏବଂ ଡାଟା';

  @override
  String get profile_location_sharing => 'ସ୍ଥାନ ସେୟାରିଂ';

  @override
  String get profile_location_sharing_desc => 'ରିପୋର୍ଟ ପାଇଁ ଆପ୍‌କୁ ଆପଣଙ୍କ ସ୍ଥାନ ଆକ୍ସେସ୍ କରିବାକୁ ଅନୁମତି ଦିଅନ୍ତୁ';

  @override
  String get profile_public_profile => 'ସାର୍ବଜନୀନ ପ୍ରୋଫାଇଲ୍';

  @override
  String get profile_public_profile_desc => 'ଆପଣଙ୍କ ପ୍ରୋଫାଇଲକୁ ଅନ୍ୟ ଉପଭୋକ୍ତାମାନଙ୍କ ପାଇଁ ଦୃଶ୍ୟମାନ କରନ୍ତୁ';

  @override
  String get profile_app_analytics => 'ଆପ୍ ବିଶ୍ଳେଷଣ';

  @override
  String get profile_usage_analytics => 'ବ୍ୟବହାର ବିଶ୍ଳେଷଣ';

  @override
  String get profile_usage_analytics_desc => 'ବ୍ୟବହାର ଡାଟା ସେୟାର୍ କରି ଆପ୍‌କୁ ଉନ୍ନତ କରିବାରେ ସାହାଯ୍ୟ କରନ୍ତୁ';

  @override
  String get profile_crash_reporting => 'କ୍ରାଶ୍ ରିପୋର୍ଟିଂ';

  @override
  String get profile_crash_reporting_desc => 'ଡେଭଲପର୍ମାନଙ୍କୁ ସ୍ୱୟଂଚାଳିତ ଭାବରେ କ୍ରାଶ୍ ରିପୋର୍ଟ ପଠାନ୍ତୁ';

  @override
  String get profile_view_privacy_policy => 'ଗୋପନୀୟତା ନୀତି ଦେଖନ୍ତୁ';

  @override
  String get profile_opening_privacy_policy => 'ଗୋପନୀୟତା ନୀତି ଖୋଲୁଛି...';

  @override
  String get profile_export_my_data => 'ମୋ ଡାଟା ରପ୍ତାନି କରନ୍ତୁ';

  @override
  String get profile_data_export_submitted => 'ଡାଟା ରପ୍ତାନି ଅନୁରୋଧ ଦାଖଲ କରାଯାଇଛି';

  @override
  String get profile_delete_my_account => 'ମୋ ଆକାଉଣ୍ଟ୍ ଡିଲିଟ୍ କରନ୍ତୁ';

  @override
  String get profile_delete_account_title => 'ଆକାଉଣ୍ଟ୍ ଡିଲିଟ୍ କରନ୍ତୁ';

  @override
  String get profile_delete_account_confirm => 'ଏହି କାର୍ଯ୍ୟକୁ ପୂର୍ବବତ୍ କରାଯାଇପାରିବ ନାହିଁ। ଆପଣଙ୍କର ସମସ୍ତ ରିପୋର୍ଟ ଏବଂ ଡାଟା ସବୁଦିନ ପାଇଁ ଡିଲିଟ୍ ହୋଇଯିବ। ଆପଣ ଆଗକୁ ବଢିବାକୁ ନିଶ୍ଚିତ କି?';

  @override
  String get profile_delete_account_submitted => 'ଆକାଉଣ୍ଟ୍ ଡିଲିଟ୍ ଅନୁରୋଧ ଦାଖଲ କରାଯାଇଛି';

  @override
  String get profile_no_name_provided => 'କୌଣସି ନାମ ଦିଆଯାଇନାହିଁ';

  @override
  String get profile_no_email_provided => 'କୌଣସି ଇମେଲ୍ ଦିଆଯାଇନାହିଁ';

  @override
  String get profile_no_phone_provided => 'କୌଣସି ଫୋନ୍ ଦିଆଯାଇନାହିଁ';

  @override
  String get profile_default_location => 'ପୁଣେ, ମହାରାଷ୍ଟ୍ର, ଭାରତ';

  @override
  String get profile_default_language => 'or';

  @override
  String get profile_months => 'ଜାନୁ,ଫେବୃ,ମାର୍ଚ୍ଚ,ଏପ୍ରି,ମେ,ଜୁନ୍,ଜୁଲାଇ,ଅଗ,ସେପ୍ଟେ,ଅକ୍ଟୋ,ନଭେ,ଡିସେ';

  @override
  String get create_report_title => 'ବିପଦ ରିପୋର୍ଟ ତିଆରି କରନ୍ତୁ';

  @override
  String get create_report_subtitle => 'ଆମ ମହାସାଗରଗୁଡ଼ିକୁ ସୁରକ୍ଷିତ ରଖିବାରେ ସାହାଯ୍ୟ କରନ୍ତୁ';

  @override
  String get create_report_description_label => 'ବିବରଣୀ *';

  @override
  String get create_report_description_hint => 'ଆପଣ ଦେଖିଥିବା ସାମୁଦ୍ରିକ ବିପଦ ବିଷୟରେ ବର୍ଣ୍ଣନା କରନ୍ତୁ...';

  @override
  String get create_report_description_error_empty => 'ଦୟାକରି ଏକ ବିବରଣୀ ପ୍ରଦାନ କରନ୍ତୁ';

  @override
  String get create_report_description_error_min_length => 'ବିବରଣୀ ଅତିକମରେ ୧୦ଟି ଅକ୍ଷର ହେବା ଆବଶ୍ୟକ';

  @override
  String get create_report_location_label => 'ସ୍ଥାନ *';

  @override
  String get create_report_location_hint => 'ସ୍ଥାନ ଦିଅନ୍ତୁ କିମ୍ବା ନିମ୍ନରେ ଥିବା ବଟନ୍ ବ୍ୟବହାର କରନ୍ତୁ';

  @override
  String get create_report_location_error => 'ଦୟାକରି ଏକ ସ୍ଥାନ ଯୋଡନ୍ତୁ';

  @override
  String get create_report_current_location => 'ବର୍ତ୍ତମାନର ସ୍ଥାନ';

  @override
  String get create_report_getting_location => 'ପ୍ରାପ୍ତ କରୁଛି...';

  @override
  String get create_report_pin_on_map => 'ମାନଚିତ୍ରରେ ପିନ୍ କରନ୍ତୁ';

  @override
  String get create_report_location_selected => 'ସ୍ଥାନ ସଫଳତାର ସହିତ ଚୟନ କରାଗଲା';

  @override
  String create_report_coordinates(Object lat, Object lng) {
    return 'ନିର୍ଦ୍ଦେଶାଙ୍କ: $lat, $lng';
  }

  @override
  String get create_report_attach_media => 'ମିଡିଆ ସଂଲଗ୍ନ କରନ୍ତୁ';

  @override
  String get create_report_attach_photos_videos => 'ଫଟୋ/ଭିଡିଓ ସଂଲଗ୍ନ କରନ୍ତୁ';

  @override
  String get create_report_submit => 'ରିପୋର୍ଟ ଦାଖଲ କରନ୍ତୁ';

  @override
  String get create_report_submitting => 'ଦାଖଲ କରୁଛି...';

  @override
  String create_report_media_attached_success(Object count) {
    return '$count ଫାଇଲ୍(ଗୁଡ଼ିକ) ସଫଳତାର ସହିତ ସଂଲଗ୍ନ ହୋଇଛି';
  }

  @override
  String create_report_media_attach_failed(Object error) {
    return 'ମିଡିଆ ସଂଲଗ୍ନ କରିବାରେ ବିଫଳ: $error';
  }

  @override
  String get create_report_location_captured_success => 'ବର୍ତ୍ତମାନର ସ୍ଥାନ ସଫଳତାର ସହିତ କ୍ୟାପଚର୍ ହେଲା!';

  @override
  String get create_report_location_permission_denied => 'ଉପଭୋକ୍ତାଙ୍କ ଦ୍ୱାରା ସ୍ଥାନ ଅନୁମତି ଅଗ୍ରାହ୍ୟ କରାଯାଇଛି। ଏହି ସୁବିଧା ବ୍ୟବହାର କରିବାକୁ ଦୟାକରି ସ୍ଥାନ ଆକ୍ସେସ୍ ପ୍ରଦାନ କରନ୍ତୁ।';

  @override
  String get create_report_location_permission_denied_forever => 'ସ୍ଥାନ ଅନୁମତିଗୁଡ଼ିକ ସ୍ଥାୟୀ ଭାବରେ ଅଗ୍ରାହ୍ୟ କରାଯାଇଛି। ଦୟାକରି ଆପଣଙ୍କ ଡିଭାଇସ୍ ସେଟିଂସରେ ସ୍ଥାନ ଆକ୍ସେସ୍ ସକ୍ଷମ କରନ୍ତୁ।';

  @override
  String get create_report_location_services_disabled => 'ସ୍ଥାନ ସେବାଗୁଡ଼ିକ ଅକ୍ଷମ ହୋଇଛି। ଦୟାକରି ଆପଣଙ୍କ ଡିଭାଇସ୍ ସେଟିଂସରେ ସ୍ଥାନ ସେବାଗୁଡ଼ିକ ସକ୍ଷମ କରନ୍ତୁ।';

  @override
  String get create_report_location_unable_determine => 'ସ୍ଥାନ ନିର୍ଣ୍ଣୟ କରିବାରେ ଅସମର୍ଥ। ଦୟାକରି ପୁଣି ଚେଷ୍ଟା କରନ୍ତୁ କିମ୍ବା ମାନଚିତ୍ରରେ ନିଜେ ସ୍ଥାନ ଚୟନ କରନ୍ତୁ।';

  @override
  String get create_report_location_current => 'ବର୍ତ୍ତମାନର ସ୍ଥାନ';

  @override
  String create_report_location_coordinates(Object lat, Object lng) {
    return 'ସ୍ଥାନ: $lat, $lng';
  }

  @override
  String get create_report_submit_location_required => 'ଦୟାକରି ରିପୋର୍ଟ ପାଇଁ ଏକ ସ୍ଥାନ ଯୋଡନ୍ତୁ';

  @override
  String get create_report_submit_login_required => 'ଏକ ରିପୋର୍ଟ ଦାଖଲ କରିବାକୁ ଦୟାକରି ଲଗ୍ ଇନ୍ କରନ୍ତୁ';

  @override
  String create_report_submit_failed(Object error) {
    return 'ରିପୋର୍ଟ ଦାଖଲ କରିବାରେ ବିଫଳ: $error';
  }

  @override
  String get create_report_submit_retry => 'ପୁଣି ଚେଷ୍ଟା କରନ୍ତୁ';

  @override
  String get create_report_success_title => 'ରିପୋର୍ଟ ସଫଳତାର ସହିତ ଦାଖଲ ହୋଇଛି!';

  @override
  String get create_report_success_auto_approved => 'ରିପୋର୍ଟ ସ୍ୱୟଂଚାଳିତ ଭାବରେ ଅନୁମୋଦିତ ଏବଂ ପ୍ରକାଶିତ ହୋଇଛି!';

  @override
  String create_report_success_auto_approved_sub(Object score) {
    return 'ଉଚ୍ଚ ବିଶ୍ୱାସ ସ୍କୋର୍ ($score%)';
  }

  @override
  String get create_report_success_review => 'ସମୀକ୍ଷା ପାଇଁ ରିପୋର୍ଟ ଦାଖଲ କରାଯାଇଛି';

  @override
  String get create_report_success_review_normal => 'ସାଧାରଣ ପ୍ରକ୍ରିୟାକରଣ ଆଶା କରାଯାଏ';

  @override
  String get create_report_success_review_verification => 'ଅତିରିକ୍ତ ଯାଞ୍ଚ ଆବଶ୍ୟକ ହୋଇପାରେ';

  @override
  String get create_report_success_manual_review => 'ମାନୁଆଲ୍ ସମୀକ୍ଷା ପାଇଁ ରିପୋର୍ଟ ଦାଖଲ କରାଯାଇଛି';

  @override
  String get create_report_success_manual_review_sub => 'ବିସ୍ତୃତ ଯାଞ୍ଚ ଆବଶ୍ୟକ';

  @override
  String create_report_success_title_label(Object title) {
    return 'ଶୀର୍ଷକ: $title';
  }

  @override
  String get create_report_unknown_location => 'ଅଜ୍ଞାତ ସ୍ଥାନ';

  @override
  String get create_report_selected_location => 'ଚୟନିତ ସ୍ଥାନ';
}
