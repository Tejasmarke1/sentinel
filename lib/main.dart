// main.dart
import 'package:coastsentinel/pages/profile_page.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'themedata.dart';
import 'pages/splash_screen.dart';
import 'pages/login_page.dart';
import 'pages/onboarding.dart';
import 'pages/home_page.dart';
import 'pages/language_selection_page.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:coastsentinel/l10n/app_localizations.dart';
import 'locale_controller.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<Locale?>(
      valueListenable: LocaleController.instance.localeNotifier,
      builder: (context, locale, _) {
        return MaterialApp(
          title: 'Sentinel',
          locale: locale,
          localizationsDelegates: const [
            AppLocalizations.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          supportedLocales: const [
            Locale('en', ''), // English
            Locale('hi', ''), // Hindi (widely understood)

            // West Coast Languages
            Locale('mr', ''), // Marathi (Maharashtra)
            Locale('gu', ''), // Gujarati (Gujarat)
            Locale('kn', ''), // Kannada (Karnataka)
            Locale('ml', ''), // Malayalam (Kerala)

            // East Coast Languages
            Locale('te', ''), // Telugu (Andhra Pradesh, Telangana)
            Locale('ta', ''), // Tamil (Tamil Nadu)
            Locale('or', ''), // Odia (Odisha)
            Locale('bn', ''), // Bengali (West Bengal)

            // Island Territories
            Locale('as', ''), // Assamese (for northeastern coastal areas)
          ],
          debugShowCheckedModeBanner: false,
          theme: oceanTheme,
          home: const SplashScreen(),
          routes: {
            '/login': (_) => const LoginPage(),
            '/onboarding': (_) => const OnboardingPage(),
            '/language': (_) => const LanguageSelectionPage(),
            '/profile': (_) => const ProfilePage(),
            '/home': (_) => const MainHomePage(),
          },
        );
      },
    );
  }
}