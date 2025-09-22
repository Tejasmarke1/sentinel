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

  /// No description provided for @report_details_title.
  ///
  /// In en, this message translates to:
  /// **'Report Details'**
  String get report_details_title;

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

  /// No description provided for @report_reported_on.
  ///
  /// In en, this message translates to:
  /// **'Reported on {date}'**
  String report_reported_on(Object date);

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
  /// **'Delete Report'**
  String get report_action_delete;

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
