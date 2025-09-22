import 'package:flutter/material.dart';

class LocaleController {
  LocaleController._internal();
  static final LocaleController instance = LocaleController._internal();

  final ValueNotifier<Locale?> _localeNotifier = ValueNotifier<Locale?>(null);

  ValueNotifier<Locale?> get localeNotifier => _localeNotifier;

  void setLocale(Locale? locale) {
    _localeNotifier.value = locale;
  }
}


