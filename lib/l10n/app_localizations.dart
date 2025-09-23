import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_as.dart';
import 'app_localizations_bn.dart';
import 'app_localizations_en.dart';
import 'app_localizations_gu.dart';
import 'app_localizations_hi.dart';
import 'app_localizations_kn.dart';
import 'app_localizations_ml.dart';
import 'app_localizations_mr.dart';
import 'app_localizations_or.dart';
import 'app_localizations_ta.dart';
import 'app_localizations_te.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale) : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate = _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates = <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('as'),
    Locale('bn'),
    Locale('en'),
    Locale('gu'),
    Locale('hi'),
    Locale('kn'),
    Locale('ml'),
    Locale('mr'),
    Locale('or'),
    Locale('ta'),
    Locale('te')
  ];

  /// No description provided for @appTitle.
  ///
  /// In en, this message translates to:
  /// **'Sentinel'**
  String get appTitle;

  /// No description provided for @common_cancel.
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get common_cancel;

  /// No description provided for @common_delete.
  ///
  /// In en, this message translates to:
  /// **'Delete'**
  String get common_delete;

  /// No description provided for @common_edit.
  ///
  /// In en, this message translates to:
  /// **'Edit'**
  String get common_edit;

  /// No description provided for @common_retry.
  ///
  /// In en, this message translates to:
  /// **'Retry'**
  String get common_retry;

  /// No description provided for @common_default.
  ///
  /// In en, this message translates to:
  /// **'DEFAULT'**
  String get common_default;

  /// No description provided for @language_select_title.
  ///
  /// In en, this message translates to:
  /// **'Select Language'**
  String get language_select_title;

  /// No description provided for @language_select_subtitle.
  ///
  /// In en, this message translates to:
  /// **'Choose your preferred language for Sentinel'**
  String get language_select_subtitle;

  /// No description provided for @language_section_primary.
  ///
  /// In en, this message translates to:
  /// **'Primary Languages'**
  String get language_section_primary;

  /// No description provided for @language_section_west.
  ///
  /// In en, this message translates to:
  /// **'West Coast Languages'**
  String get language_section_west;

  /// No description provided for @language_section_east.
  ///
  /// In en, this message translates to:
  /// **'East Coast Languages'**
  String get language_section_east;

  /// No description provided for @language_section_islands.
  ///
  /// In en, this message translates to:
  /// **'Island Territories'**
  String get language_section_islands;

  /// No description provided for @language_selected_label.
  ///
  /// In en, this message translates to:
  /// **'Selected: {language}'**
  String language_selected_label(Object language);

  /// No description provided for @language_changed_snackbar.
  ///
  /// In en, this message translates to:
  /// **'Language changed to {language}'**
  String language_changed_snackbar(Object language);

  /// No description provided for @language_confirm_button.
  ///
  /// In en, this message translates to:
  /// **'Confirm Language'**
  String get language_confirm_button;

  /// No description provided for @login_welcome_to.
  ///
  /// In en, this message translates to:
  /// **'Welcome to'**
  String get login_welcome_to;

  /// No description provided for @login_title_caps.
  ///
  /// In en, this message translates to:
  /// **'SENTINEL'**
  String get login_title_caps;

  /// No description provided for @login_tagline.
  ///
  /// In en, this message translates to:
  /// **'Your safety companion for ocean hazard alerts'**
  String get login_tagline;

  /// No description provided for @login_enter_phone.
  ///
  /// In en, this message translates to:
  /// **'Enter your mobile number'**
  String get login_enter_phone;

  /// No description provided for @login_phone_help.
  ///
  /// In en, this message translates to:
  /// **'We\'ll send you a verification code via SMS'**
  String get login_phone_help;

  /// No description provided for @login_send_otp.
  ///
  /// In en, this message translates to:
  /// **'Send OTP'**
  String get login_send_otp;

  /// No description provided for @login_terms_prefix.
  ///
  /// In en, this message translates to:
  /// **'By continuing, you agree to our'**
  String get login_terms_prefix;

  /// No description provided for @login_terms.
  ///
  /// In en, this message translates to:
  /// **'Terms of Service'**
  String get login_terms;

  /// No description provided for @login_and.
  ///
  /// In en, this message translates to:
  /// **' and '**
  String get login_and;

  /// No description provided for @login_privacy.
  ///
  /// In en, this message translates to:
  /// **'Privacy Policy'**
  String get login_privacy;

  /// No description provided for @login_error_enter_phone.
  ///
  /// In en, this message translates to:
  /// **'Please enter your mobile number'**
  String get login_error_enter_phone;

  /// No description provided for @login_error_valid_phone.
  ///
  /// In en, this message translates to:
  /// **'Please enter a valid mobile number'**
  String get login_error_valid_phone;

  /// No description provided for @otp_title.
  ///
  /// In en, this message translates to:
  /// **'Enter Verification Code'**
  String get otp_title;

  /// No description provided for @otp_sent_to.
  ///
  /// In en, this message translates to:
  /// **'We sent a 6-digit code to\n{phone}'**
  String otp_sent_to(Object phone);

  /// No description provided for @otp_hint.
  ///
  /// In en, this message translates to:
  /// **'000000'**
  String get otp_hint;

  /// No description provided for @otp_verify_continue.
  ///
  /// In en, this message translates to:
  /// **'Verify & Continue'**
  String get otp_verify_continue;

  /// No description provided for @otp_error_incomplete.
  ///
  /// In en, this message translates to:
  /// **'Please enter complete 6-digit code'**
  String get otp_error_incomplete;

  /// No description provided for @otp_resend_in.
  ///
  /// In en, this message translates to:
  /// **'Resend code in {seconds}s'**
  String otp_resend_in(Object seconds);

  /// No description provided for @otp_resend_cta.
  ///
  /// In en, this message translates to:
  /// **'Didn\'t receive code? Resend'**
  String get otp_resend_cta;

  /// No description provided for @otp_request_first.
  ///
  /// In en, this message translates to:
  /// **'Please request the code first.'**
  String get otp_request_first;

  /// No description provided for @otp_invalid_code.
  ///
  /// In en, this message translates to:
  /// **'Invalid code'**
  String get otp_invalid_code;

  /// No description provided for @verification_failed.
  ///
  /// In en, this message translates to:
  /// **'Verification failed'**
  String get verification_failed;

  /// No description provided for @phone_country_code.
  ///
  /// In en, this message translates to:
  /// **'+91'**
  String get phone_country_code;

  /// No description provided for @phone_hint_number.
  ///
  /// In en, this message translates to:
  /// **'98765 43210'**
  String get phone_hint_number;

  /// No description provided for @reports_title.
  ///
  /// In en, this message translates to:
  /// **'My Reports'**
  String get reports_title;

  /// No description provided for @reports_subtitle.
  ///
  /// In en, this message translates to:
  /// **'Track your submitted hazard reports'**
  String get reports_subtitle;

  /// No description provided for @reports_count_label.
  ///
  /// In en, this message translates to:
  /// **'{count} Reports'**
  String reports_count_label(Object count);

  /// No description provided for @reports_filter_label.
  ///
  /// In en, this message translates to:
  /// **'Filter by Status'**
  String get reports_filter_label;

  /// No description provided for @status_pending.
  ///
  /// In en, this message translates to:
  /// **'Pending'**
  String get status_pending;

  /// No description provided for @status_verified.
  ///
  /// In en, this message translates to:
  /// **'Verified'**
  String get status_verified;

  /// No description provided for @status_dismissed.
  ///
  /// In en, this message translates to:
  /// **'Dismissed'**
  String get status_dismissed;

  /// No description provided for @status_under_review.
  ///
  /// In en, this message translates to:
  /// **'Under Review'**
  String get status_under_review;

  /// No description provided for @reports_loading.
  ///
  /// In en, this message translates to:
  /// **'Loading your reports...'**
  String get reports_loading;

  /// No description provided for @reports_error_title.
  ///
  /// In en, this message translates to:
  /// **'Error Loading Reports'**
  String get reports_error_title;

  /// No description provided for @reports_empty_all.
  ///
  /// In en, this message translates to:
  /// **'No Reports Yet'**
  String get reports_empty_all;

  /// No description provided for @reports_empty_filtered.
  ///
  /// In en, this message translates to:
  /// **'No {status} Reports'**
  String reports_empty_filtered(Object status);

  /// No description provided for @reports_empty_all_sub.
  ///
  /// In en, this message translates to:
  /// **'Start reporting ocean hazards to help keep our waters safe'**
  String get reports_empty_all_sub;

  /// No description provided for @reports_empty_filtered_sub.
  ///
  /// In en, this message translates to:
  /// **'Try selecting a different filter to view reports'**
  String get reports_empty_filtered_sub;

  /// No description provided for @reports_stat_pending.
  ///
  /// In en, this message translates to:
  /// **'Pending'**
  String get reports_stat_pending;

  /// No description provided for @reports_stat_verified.
  ///
  /// In en, this message translates to:
  /// **'Verified'**
  String get reports_stat_verified;

  /// No description provided for @reports_stat_dismissed.
  ///
  /// In en, this message translates to:
  /// **'Dismissed'**
  String get reports_stat_dismissed;

  /// No description provided for @time_just_now.
  ///
  /// In en, this message translates to:
  /// **'Just now'**
  String get time_just_now;

  /// No description provided for @time_minutes_ago.
  ///
  /// In en, this message translates to:
  /// **'{minutes}m ago'**
  String time_minutes_ago(Object minutes);

  /// No description provided for @time_hours_ago.
  ///
  /// In en, this message translates to:
  /// **'{hours}h ago'**
  String time_hours_ago(Object hours);

  /// No description provided for @time_days_ago.
  ///
  /// In en, this message translates to:
  /// **'{days}d ago'**
  String time_days_ago(Object days);

  /// No description provided for @time_on_date.
  ///
  /// In en, this message translates to:
  /// **'{day}/{month}/{year}'**
  String time_on_date(Object day, Object month, Object year);

  /// No description provided for @report_menu_edit.
  ///
  /// In en, this message translates to:
  /// **'Edit Report'**
  String get report_menu_edit;

  /// No description provided for @report_menu_delete.
  ///
  /// In en, this message translates to:
  /// **'Delete Report'**
  String get report_menu_delete;

  /// No description provided for @report_delete_title.
  ///
  /// In en, this message translates to:
  /// **'Delete Report'**
  String get report_delete_title;

  /// No description provided for @report_delete_confirm.
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to delete \"{title}\"? This action cannot be undone.'**
  String report_delete_confirm(Object title);

  /// No description provided for @report_deleted_success.
  ///
  /// In en, this message translates to:
  /// **'Report deleted successfully'**
  String get report_deleted_success;

  /// No description provided for @report_delete_failed.
  ///
  /// In en, this message translates to:
  /// **'Failed to delete report: {error}'**
  String report_delete_failed(Object error);

  /// No description provided for @report_edit_coming.
  ///
  /// In en, this message translates to:
  /// **'Edit functionality coming soon!'**
  String get report_edit_coming;

  /// No description provided for @report_media_coming.
  ///
  /// In en, this message translates to:
  /// **'Media viewer coming soon!'**
  String get report_media_coming;

  /// No description provided for @report_section_description.
  ///
  /// In en, this message translates to:
  /// **'Description'**
  String get report_section_description;

  /// No description provided for @report_section_location.
  ///
  /// In en, this message translates to:
  /// **'Location'**
  String get report_section_location;

  /// No description provided for @report_section_media.
  ///
  /// In en, this message translates to:
  /// **'Media ({count})'**
  String report_section_media(Object count);

  /// No description provided for @report_section_reputation.
  ///
  /// In en, this message translates to:
  /// **'Reporter Reputation'**
  String get report_section_reputation;

  /// No description provided for @report_media_view_all.
  ///
  /// In en, this message translates to:
  /// **'View All'**
  String get report_media_view_all;

  /// No description provided for @report_lat_label.
  ///
  /// In en, this message translates to:
  /// **'Lat:'**
  String get report_lat_label;

  /// No description provided for @report_lng_label.
  ///
  /// In en, this message translates to:
  /// **'Lng:'**
  String get report_lng_label;

  /// No description provided for @report_action_edit.
  ///
  /// In en, this message translates to:
  /// **'Edit Report'**
  String get report_action_edit;

  /// No description provided for @report_action_delete.
  ///
  /// In en, this message translates to:
  /// **'Delete'**
  String get report_action_delete;

  /// No description provided for @report_details_title.
  ///
  /// In en, this message translates to:
  /// **'Report Details'**
  String get report_details_title;

  /// No description provided for @report_id_label.
  ///
  /// In en, this message translates to:
  /// **'Report ID'**
  String get report_id_label;

  /// No description provided for @report_attachments_label.
  ///
  /// In en, this message translates to:
  /// **'Attachments ({count})'**
  String report_attachments_label(Object count);

  /// No description provided for @report_media_files.
  ///
  /// In en, this message translates to:
  /// **'Media Files'**
  String get report_media_files;

  /// No description provided for @report_media_files_attached.
  ///
  /// In en, this message translates to:
  /// **'{count} file(s) attached to this report'**
  String report_media_files_attached(Object count);

  /// No description provided for @report_media_view.
  ///
  /// In en, this message translates to:
  /// **'View'**
  String get report_media_view;

  /// No description provided for @nav_home.
  ///
  /// In en, this message translates to:
  /// **'Home'**
  String get nav_home;

  /// No description provided for @nav_alerts.
  ///
  /// In en, this message translates to:
  /// **'Alerts'**
  String get nav_alerts;

  /// No description provided for @nav_reports.
  ///
  /// In en, this message translates to:
  /// **'Reports'**
  String get nav_reports;

  /// No description provided for @nav_profile.
  ///
  /// In en, this message translates to:
  /// **'Profile'**
  String get nav_profile;

  /// No description provided for @onboard_complete_your.
  ///
  /// In en, this message translates to:
  /// **'Complete Your'**
  String get onboard_complete_your;

  /// No description provided for @onboard_profile_setup.
  ///
  /// In en, this message translates to:
  /// **'Profile Setup'**
  String get onboard_profile_setup;

  /// No description provided for @onboard_header_subtitle.
  ///
  /// In en, this message translates to:
  /// **'Help us personalize your experience and keep you safe'**
  String get onboard_header_subtitle;

  /// No description provided for @onboard_full_name_label.
  ///
  /// In en, this message translates to:
  /// **'Full Name'**
  String get onboard_full_name_label;

  /// No description provided for @onboard_full_name_hint.
  ///
  /// In en, this message translates to:
  /// **'Enter your full name'**
  String get onboard_full_name_hint;

  /// No description provided for @onboard_full_name_error.
  ///
  /// In en, this message translates to:
  /// **'Please enter your name'**
  String get onboard_full_name_error;

  /// No description provided for @onboard_email_label.
  ///
  /// In en, this message translates to:
  /// **'Email Address'**
  String get onboard_email_label;

  /// No description provided for @onboard_email_hint.
  ///
  /// In en, this message translates to:
  /// **'Enter your email address'**
  String get onboard_email_hint;

  /// No description provided for @onboard_email_error_empty.
  ///
  /// In en, this message translates to:
  /// **'Please enter your email'**
  String get onboard_email_error_empty;

  /// No description provided for @onboard_email_error_invalid.
  ///
  /// In en, this message translates to:
  /// **'Please enter a valid email address'**
  String get onboard_email_error_invalid;

  /// No description provided for @onboard_trust_title.
  ///
  /// In en, this message translates to:
  /// **'Trust Score System'**
  String get onboard_trust_title;

  /// No description provided for @onboard_trust_desc.
  ///
  /// In en, this message translates to:
  /// **'Your reports will be evaluated based on report quality, location accuracy, and reporting history. Build your reputation by submitting detailed, accurate reports.'**
  String get onboard_trust_desc;

  /// No description provided for @onboard_continue.
  ///
  /// In en, this message translates to:
  /// **'Complete Setup'**
  String get onboard_continue;

  /// No description provided for @onboard_footer_secure.
  ///
  /// In en, this message translates to:
  /// **'Your information is secure and encrypted'**
  String get onboard_footer_secure;

  /// No description provided for @dashboard_live.
  ///
  /// In en, this message translates to:
  /// **'Live'**
  String get dashboard_live;

  /// No description provided for @dashboard_title.
  ///
  /// In en, this message translates to:
  /// **'Ocean Safety Dashboard'**
  String get dashboard_title;

  /// No description provided for @dashboard_stat_active_alerts.
  ///
  /// In en, this message translates to:
  /// **'Active Alerts'**
  String get dashboard_stat_active_alerts;

  /// No description provided for @dashboard_stat_verified.
  ///
  /// In en, this message translates to:
  /// **'Verified'**
  String get dashboard_stat_verified;

  /// No description provided for @dashboard_stat_this_week.
  ///
  /// In en, this message translates to:
  /// **'This Week'**
  String get dashboard_stat_this_week;

  /// No description provided for @dashboard_recent_reports.
  ///
  /// In en, this message translates to:
  /// **'Recent Hazard Reports'**
  String get dashboard_recent_reports;

  /// No description provided for @profile_title.
  ///
  /// In en, this message translates to:
  /// **'Profile'**
  String get profile_title;

  /// No description provided for @profile_subtitle.
  ///
  /// In en, this message translates to:
  /// **'Manage your account and settings'**
  String get profile_subtitle;

  /// No description provided for @profile_user_not_logged_in.
  ///
  /// In en, this message translates to:
  /// **'User not logged in.'**
  String get profile_user_not_logged_in;

  /// No description provided for @profile_could_not_load_data.
  ///
  /// In en, this message translates to:
  /// **'Could not load user data.'**
  String get profile_could_not_load_data;

  /// No description provided for @profile_something_wrong.
  ///
  /// In en, this message translates to:
  /// **'Something went wrong: {error}'**
  String profile_something_wrong(Object error);

  /// No description provided for @profile_verified.
  ///
  /// In en, this message translates to:
  /// **'VERIFIED'**
  String get profile_verified;

  /// No description provided for @profile_member_since.
  ///
  /// In en, this message translates to:
  /// **'Member since {date}'**
  String profile_member_since(Object date);

  /// No description provided for @profile_email.
  ///
  /// In en, this message translates to:
  /// **'Email'**
  String get profile_email;

  /// No description provided for @profile_phone.
  ///
  /// In en, this message translates to:
  /// **'Phone'**
  String get profile_phone;

  /// No description provided for @profile_edit_profile.
  ///
  /// In en, this message translates to:
  /// **'Edit Profile'**
  String get profile_edit_profile;

  /// No description provided for @profile_statistics_title.
  ///
  /// In en, this message translates to:
  /// **'Statistics & Summary'**
  String get profile_statistics_title;

  /// No description provided for @profile_reports_submitted.
  ///
  /// In en, this message translates to:
  /// **'Reports Submitted'**
  String get profile_reports_submitted;

  /// No description provided for @profile_verified_reports.
  ///
  /// In en, this message translates to:
  /// **'Verified Reports'**
  String get profile_verified_reports;

  /// No description provided for @profile_pending_reports.
  ///
  /// In en, this message translates to:
  /// **'Pending Reports'**
  String get profile_pending_reports;

  /// No description provided for @profile_rejected_reports.
  ///
  /// In en, this message translates to:
  /// **'Rejected Reports'**
  String get profile_rejected_reports;

  /// No description provided for @profile_could_not_load_stats.
  ///
  /// In en, this message translates to:
  /// **'Could not load statistics: {error}'**
  String profile_could_not_load_stats(Object error);

  /// No description provided for @profile_no_stats_available.
  ///
  /// In en, this message translates to:
  /// **'No statistics available.'**
  String get profile_no_stats_available;

  /// No description provided for @profile_account_options.
  ///
  /// In en, this message translates to:
  /// **'Account Options'**
  String get profile_account_options;

  /// No description provided for @profile_language_settings.
  ///
  /// In en, this message translates to:
  /// **'Language Settings'**
  String get profile_language_settings;

  /// No description provided for @profile_language_settings_desc.
  ///
  /// In en, this message translates to:
  /// **'Choose your preferred language'**
  String get profile_language_settings_desc;

  /// No description provided for @profile_notification_settings.
  ///
  /// In en, this message translates to:
  /// **'Notification Settings'**
  String get profile_notification_settings;

  /// No description provided for @profile_notification_settings_desc.
  ///
  /// In en, this message translates to:
  /// **'Manage alerts and push notifications'**
  String get profile_notification_settings_desc;

  /// No description provided for @profile_privacy_permissions.
  ///
  /// In en, this message translates to:
  /// **'Privacy & Permissions'**
  String get profile_privacy_permissions;

  /// No description provided for @profile_privacy_permissions_desc.
  ///
  /// In en, this message translates to:
  /// **'Control your data and app permissions'**
  String get profile_privacy_permissions_desc;

  /// No description provided for @profile_help_support.
  ///
  /// In en, this message translates to:
  /// **'Help & Support'**
  String get profile_help_support;

  /// No description provided for @profile_help_support_desc.
  ///
  /// In en, this message translates to:
  /// **'Get help and contact support'**
  String get profile_help_support_desc;

  /// No description provided for @profile_help_coming_soon.
  ///
  /// In en, this message translates to:
  /// **'Help & Support coming soon!'**
  String get profile_help_coming_soon;

  /// No description provided for @profile_about_sentinel.
  ///
  /// In en, this message translates to:
  /// **'About Sentinel'**
  String get profile_about_sentinel;

  /// No description provided for @profile_about_sentinel_desc.
  ///
  /// In en, this message translates to:
  /// **'App version and information'**
  String get profile_about_sentinel_desc;

  /// No description provided for @profile_app_name.
  ///
  /// In en, this message translates to:
  /// **'Sentinel'**
  String get profile_app_name;

  /// No description provided for @profile_app_version.
  ///
  /// In en, this message translates to:
  /// **'1.0.0'**
  String get profile_app_version;

  /// No description provided for @profile_app_description.
  ///
  /// In en, this message translates to:
  /// **'Crowdsourced Ocean Hazard Alerts\n\nHelping keep our oceans safe through community reporting.'**
  String get profile_app_description;

  /// No description provided for @profile_logout.
  ///
  /// In en, this message translates to:
  /// **'Logout'**
  String get profile_logout;

  /// No description provided for @profile_logout_desc.
  ///
  /// In en, this message translates to:
  /// **'Sign out from your account'**
  String get profile_logout_desc;

  /// No description provided for @profile_logout_confirm.
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to logout from Sentinel?'**
  String get profile_logout_confirm;

  /// No description provided for @profile_cancel.
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get profile_cancel;

  /// No description provided for @profile_logout_failed.
  ///
  /// In en, this message translates to:
  /// **'Logout failed: {error}'**
  String profile_logout_failed(Object error);

  /// No description provided for @profile_edit_profile_title.
  ///
  /// In en, this message translates to:
  /// **'Edit Profile'**
  String get profile_edit_profile_title;

  /// No description provided for @profile_full_name_label.
  ///
  /// In en, this message translates to:
  /// **'Full Name'**
  String get profile_full_name_label;

  /// No description provided for @profile_full_name_hint.
  ///
  /// In en, this message translates to:
  /// **'Enter your full name'**
  String get profile_full_name_hint;

  /// No description provided for @profile_full_name_error.
  ///
  /// In en, this message translates to:
  /// **'Please enter your name'**
  String get profile_full_name_error;

  /// No description provided for @profile_email_label.
  ///
  /// In en, this message translates to:
  /// **'Email Address'**
  String get profile_email_label;

  /// No description provided for @profile_email_hint.
  ///
  /// In en, this message translates to:
  /// **'Enter your email address'**
  String get profile_email_hint;

  /// No description provided for @profile_email_error_empty.
  ///
  /// In en, this message translates to:
  /// **'Please enter your email'**
  String get profile_email_error_empty;

  /// No description provided for @profile_email_error_invalid.
  ///
  /// In en, this message translates to:
  /// **'Please enter a valid email address'**
  String get profile_email_error_invalid;

  /// No description provided for @profile_phone_label.
  ///
  /// In en, this message translates to:
  /// **'Phone Number'**
  String get profile_phone_label;

  /// No description provided for @profile_save_changes.
  ///
  /// In en, this message translates to:
  /// **'Save Changes'**
  String get profile_save_changes;

  /// No description provided for @profile_user_not_found.
  ///
  /// In en, this message translates to:
  /// **'Error: User not found.'**
  String get profile_user_not_found;

  /// No description provided for @profile_updated_success.
  ///
  /// In en, this message translates to:
  /// **'Profile updated successfully!'**
  String get profile_updated_success;

  /// No description provided for @profile_update_failed.
  ///
  /// In en, this message translates to:
  /// **'Failed to update profile: {error}'**
  String profile_update_failed(Object error);

  /// No description provided for @profile_language_update_failed.
  ///
  /// In en, this message translates to:
  /// **'Failed to update language: {error}'**
  String profile_language_update_failed(Object error);

  /// No description provided for @profile_notification_title.
  ///
  /// In en, this message translates to:
  /// **'Notification Settings'**
  String get profile_notification_title;

  /// No description provided for @profile_general_notifications.
  ///
  /// In en, this message translates to:
  /// **'General Notifications'**
  String get profile_general_notifications;

  /// No description provided for @profile_push_notifications.
  ///
  /// In en, this message translates to:
  /// **'Push Notifications'**
  String get profile_push_notifications;

  /// No description provided for @profile_push_notifications_desc.
  ///
  /// In en, this message translates to:
  /// **'Receive notifications on your device'**
  String get profile_push_notifications_desc;

  /// No description provided for @profile_email_notifications.
  ///
  /// In en, this message translates to:
  /// **'Email Notifications'**
  String get profile_email_notifications;

  /// No description provided for @profile_email_notifications_desc.
  ///
  /// In en, this message translates to:
  /// **'Receive notifications via email'**
  String get profile_email_notifications_desc;

  /// No description provided for @profile_alert_types.
  ///
  /// In en, this message translates to:
  /// **'Alert Types'**
  String get profile_alert_types;

  /// No description provided for @profile_critical_safety_alerts.
  ///
  /// In en, this message translates to:
  /// **'Critical Safety Alerts'**
  String get profile_critical_safety_alerts;

  /// No description provided for @profile_critical_safety_alerts_desc.
  ///
  /// In en, this message translates to:
  /// **'Immediate danger and emergency alerts'**
  String get profile_critical_safety_alerts_desc;

  /// No description provided for @profile_report_status_updates.
  ///
  /// In en, this message translates to:
  /// **'Report Status Updates'**
  String get profile_report_status_updates;

  /// No description provided for @profile_report_status_updates_desc.
  ///
  /// In en, this message translates to:
  /// **'Updates on your submitted reports'**
  String get profile_report_status_updates_desc;

  /// No description provided for @profile_news_updates.
  ///
  /// In en, this message translates to:
  /// **'News & Updates'**
  String get profile_news_updates;

  /// No description provided for @profile_news_updates_desc.
  ///
  /// In en, this message translates to:
  /// **'Ocean safety news and app updates'**
  String get profile_news_updates_desc;

  /// No description provided for @profile_critical_alerts_info.
  ///
  /// In en, this message translates to:
  /// **'Critical safety alerts cannot be disabled for your protection.'**
  String get profile_critical_alerts_info;

  /// No description provided for @profile_privacy_title.
  ///
  /// In en, this message translates to:
  /// **'Privacy & Permissions'**
  String get profile_privacy_title;

  /// No description provided for @profile_location_data.
  ///
  /// In en, this message translates to:
  /// **'Location & Data'**
  String get profile_location_data;

  /// No description provided for @profile_location_sharing.
  ///
  /// In en, this message translates to:
  /// **'Location Sharing'**
  String get profile_location_sharing;

  /// No description provided for @profile_location_sharing_desc.
  ///
  /// In en, this message translates to:
  /// **'Allow app to access your location for reports'**
  String get profile_location_sharing_desc;

  /// No description provided for @profile_public_profile.
  ///
  /// In en, this message translates to:
  /// **'Public Profile'**
  String get profile_public_profile;

  /// No description provided for @profile_public_profile_desc.
  ///
  /// In en, this message translates to:
  /// **'Make your profile visible to other users'**
  String get profile_public_profile_desc;

  /// No description provided for @profile_app_analytics.
  ///
  /// In en, this message translates to:
  /// **'App Analytics'**
  String get profile_app_analytics;

  /// No description provided for @profile_usage_analytics.
  ///
  /// In en, this message translates to:
  /// **'Usage Analytics'**
  String get profile_usage_analytics;

  /// No description provided for @profile_usage_analytics_desc.
  ///
  /// In en, this message translates to:
  /// **'Help improve the app by sharing usage data'**
  String get profile_usage_analytics_desc;

  /// No description provided for @profile_crash_reporting.
  ///
  /// In en, this message translates to:
  /// **'Crash Reporting'**
  String get profile_crash_reporting;

  /// No description provided for @profile_crash_reporting_desc.
  ///
  /// In en, this message translates to:
  /// **'Automatically send crash reports to developers'**
  String get profile_crash_reporting_desc;

  /// No description provided for @profile_view_privacy_policy.
  ///
  /// In en, this message translates to:
  /// **'View Privacy Policy'**
  String get profile_view_privacy_policy;

  /// No description provided for @profile_opening_privacy_policy.
  ///
  /// In en, this message translates to:
  /// **'Opening Privacy Policy...'**
  String get profile_opening_privacy_policy;

  /// No description provided for @profile_export_my_data.
  ///
  /// In en, this message translates to:
  /// **'Export My Data'**
  String get profile_export_my_data;

  /// No description provided for @profile_data_export_submitted.
  ///
  /// In en, this message translates to:
  /// **'Data export request submitted'**
  String get profile_data_export_submitted;

  /// No description provided for @profile_delete_my_account.
  ///
  /// In en, this message translates to:
  /// **'Delete My Account'**
  String get profile_delete_my_account;

  /// No description provided for @profile_delete_account_title.
  ///
  /// In en, this message translates to:
  /// **'Delete Account'**
  String get profile_delete_account_title;

  /// No description provided for @profile_delete_account_confirm.
  ///
  /// In en, this message translates to:
  /// **'This action cannot be undone. All your reports and data will be permanently deleted. Are you sure you want to proceed?'**
  String get profile_delete_account_confirm;

  /// No description provided for @profile_delete_account_submitted.
  ///
  /// In en, this message translates to:
  /// **'Account deletion request submitted'**
  String get profile_delete_account_submitted;

  /// No description provided for @profile_no_name_provided.
  ///
  /// In en, this message translates to:
  /// **'No Name Provided'**
  String get profile_no_name_provided;

  /// No description provided for @profile_no_email_provided.
  ///
  /// In en, this message translates to:
  /// **'No Email Provided'**
  String get profile_no_email_provided;

  /// No description provided for @profile_no_phone_provided.
  ///
  /// In en, this message translates to:
  /// **'No Phone Provided'**
  String get profile_no_phone_provided;

  /// No description provided for @profile_default_location.
  ///
  /// In en, this message translates to:
  /// **'Pune, Maharashtra, India'**
  String get profile_default_location;

  /// No description provided for @profile_default_language.
  ///
  /// In en, this message translates to:
  /// **'en'**
  String get profile_default_language;

  /// No description provided for @profile_months.
  ///
  /// In en, this message translates to:
  /// **'Jan,Feb,Mar,Apr,May,Jun,Jul,Aug,Sep,Oct,Nov,Dec'**
  String get profile_months;

  /// No description provided for @create_report_title.
  ///
  /// In en, this message translates to:
  /// **'Create Hazard Report'**
  String get create_report_title;

  /// No description provided for @create_report_subtitle.
  ///
  /// In en, this message translates to:
  /// **'Help keep our oceans safe'**
  String get create_report_subtitle;

  /// No description provided for @create_report_description_label.
  ///
  /// In en, this message translates to:
  /// **'Description *'**
  String get create_report_description_label;

  /// No description provided for @create_report_description_hint.
  ///
  /// In en, this message translates to:
  /// **'Describe the ocean hazard you observed...'**
  String get create_report_description_hint;

  /// No description provided for @create_report_description_error_empty.
  ///
  /// In en, this message translates to:
  /// **'Please provide a description'**
  String get create_report_description_error_empty;

  /// No description provided for @create_report_description_error_min_length.
  ///
  /// In en, this message translates to:
  /// **'Description must be at least 10 characters'**
  String get create_report_description_error_min_length;

  /// No description provided for @create_report_location_label.
  ///
  /// In en, this message translates to:
  /// **'Location *'**
  String get create_report_location_label;

  /// No description provided for @create_report_location_hint.
  ///
  /// In en, this message translates to:
  /// **'Enter location or use buttons below'**
  String get create_report_location_hint;

  /// No description provided for @create_report_location_error.
  ///
  /// In en, this message translates to:
  /// **'Please add a location'**
  String get create_report_location_error;

  /// No description provided for @create_report_current_location.
  ///
  /// In en, this message translates to:
  /// **'Current Location'**
  String get create_report_current_location;

  /// No description provided for @create_report_getting_location.
  ///
  /// In en, this message translates to:
  /// **'Getting...'**
  String get create_report_getting_location;

  /// No description provided for @create_report_pin_on_map.
  ///
  /// In en, this message translates to:
  /// **'Pin on Map'**
  String get create_report_pin_on_map;

  /// No description provided for @create_report_location_selected.
  ///
  /// In en, this message translates to:
  /// **'Location selected successfully'**
  String get create_report_location_selected;

  /// No description provided for @create_report_coordinates.
  ///
  /// In en, this message translates to:
  /// **'Coordinates: {lat}, {lng}'**
  String create_report_coordinates(Object lat, Object lng);

  /// No description provided for @create_report_attach_media.
  ///
  /// In en, this message translates to:
  /// **'Attach Media'**
  String get create_report_attach_media;

  /// No description provided for @create_report_attach_photos_videos.
  ///
  /// In en, this message translates to:
  /// **'Attach Photos/Videos'**
  String get create_report_attach_photos_videos;

  /// No description provided for @create_report_submit.
  ///
  /// In en, this message translates to:
  /// **'Submit Report'**
  String get create_report_submit;

  /// No description provided for @create_report_submitting.
  ///
  /// In en, this message translates to:
  /// **'Submitting...'**
  String get create_report_submitting;

  /// No description provided for @create_report_media_attached_success.
  ///
  /// In en, this message translates to:
  /// **'{count} file(s) attached successfully'**
  String create_report_media_attached_success(Object count);

  /// No description provided for @create_report_media_attach_failed.
  ///
  /// In en, this message translates to:
  /// **'Failed to attach media: {error}'**
  String create_report_media_attach_failed(Object error);

  /// No description provided for @create_report_location_captured_success.
  ///
  /// In en, this message translates to:
  /// **'Current location captured successfully!'**
  String get create_report_location_captured_success;

  /// No description provided for @create_report_location_permission_denied.
  ///
  /// In en, this message translates to:
  /// **'Location permission denied by user. Please grant location access to use this feature.'**
  String get create_report_location_permission_denied;

  /// No description provided for @create_report_location_permission_denied_forever.
  ///
  /// In en, this message translates to:
  /// **'Location permissions are permanently denied. Please enable location access in your device settings.'**
  String get create_report_location_permission_denied_forever;

  /// No description provided for @create_report_location_services_disabled.
  ///
  /// In en, this message translates to:
  /// **'Location services are disabled. Please enable location services in your device settings.'**
  String get create_report_location_services_disabled;

  /// No description provided for @create_report_location_unable_determine.
  ///
  /// In en, this message translates to:
  /// **'Unable to determine location. Please try again or select location manually on the map.'**
  String get create_report_location_unable_determine;

  /// No description provided for @create_report_location_current.
  ///
  /// In en, this message translates to:
  /// **'Current Location'**
  String get create_report_location_current;

  /// No description provided for @create_report_location_coordinates.
  ///
  /// In en, this message translates to:
  /// **'Location: {lat}, {lng}'**
  String create_report_location_coordinates(Object lat, Object lng);

  /// No description provided for @create_report_submit_location_required.
  ///
  /// In en, this message translates to:
  /// **'Please add a location for the report'**
  String get create_report_submit_location_required;

  /// No description provided for @create_report_submit_login_required.
  ///
  /// In en, this message translates to:
  /// **'Please log in to submit a report'**
  String get create_report_submit_login_required;

  /// No description provided for @create_report_submit_failed.
  ///
  /// In en, this message translates to:
  /// **'Failed to submit report: {error}'**
  String create_report_submit_failed(Object error);

  /// No description provided for @create_report_submit_retry.
  ///
  /// In en, this message translates to:
  /// **'Retry'**
  String get create_report_submit_retry;

  /// No description provided for @create_report_success_title.
  ///
  /// In en, this message translates to:
  /// **'Report submitted successfully!'**
  String get create_report_success_title;

  /// No description provided for @create_report_success_auto_approved.
  ///
  /// In en, this message translates to:
  /// **'Report auto-approved and published!'**
  String get create_report_success_auto_approved;

  /// No description provided for @create_report_success_auto_approved_sub.
  ///
  /// In en, this message translates to:
  /// **'High trust score ({score}%)'**
  String create_report_success_auto_approved_sub(Object score);

  /// No description provided for @create_report_success_review.
  ///
  /// In en, this message translates to:
  /// **'Report submitted for review'**
  String get create_report_success_review;

  /// No description provided for @create_report_success_review_normal.
  ///
  /// In en, this message translates to:
  /// **'Normal processing expected'**
  String get create_report_success_review_normal;

  /// No description provided for @create_report_success_review_verification.
  ///
  /// In en, this message translates to:
  /// **'Additional verification may be required'**
  String get create_report_success_review_verification;

  /// No description provided for @create_report_success_manual_review.
  ///
  /// In en, this message translates to:
  /// **'Report submitted for manual review'**
  String get create_report_success_manual_review;

  /// No description provided for @create_report_success_manual_review_sub.
  ///
  /// In en, this message translates to:
  /// **'Detailed verification required'**
  String get create_report_success_manual_review_sub;

  /// No description provided for @create_report_success_title_label.
  ///
  /// In en, this message translates to:
  /// **'Title: {title}'**
  String create_report_success_title_label(Object title);

  /// No description provided for @create_report_unknown_location.
  ///
  /// In en, this message translates to:
  /// **'Unknown location'**
  String get create_report_unknown_location;

  /// No description provided for @create_report_selected_location.
  ///
  /// In en, this message translates to:
  /// **'Selected location'**
  String get create_report_selected_location;
}

class _AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>['as', 'bn', 'en', 'gu', 'hi', 'kn', 'ml', 'mr', 'or', 'ta', 'te'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {


  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'as': return AppLocalizationsAs();
    case 'bn': return AppLocalizationsBn();
    case 'en': return AppLocalizationsEn();
    case 'gu': return AppLocalizationsGu();
    case 'hi': return AppLocalizationsHi();
    case 'kn': return AppLocalizationsKn();
    case 'ml': return AppLocalizationsMl();
    case 'mr': return AppLocalizationsMr();
    case 'or': return AppLocalizationsOr();
    case 'ta': return AppLocalizationsTa();
    case 'te': return AppLocalizationsTe();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.'
  );
}
