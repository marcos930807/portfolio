import 'package:flutter/material.dart';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:web_portfolio/presentation/app/themes/app_themes.dart';

class PreferencesManager {
  final SharedPreferences? _sharedPreferences;

  PreferencesManager(this._sharedPreferences);

  ///Esta es la seccion de llaves de prerencias [Key]
  static const String _localeKey = 'locale_key';
  static const String _themeKey = 'theme_key';
  static const String _showOnboarding = 'show_onboarding_key';

  String get currentLocale {
    return _sharedPreferences!.getString(_localeKey) ?? '';
  }

  Future<bool> setLocale(String value) {
    if (value.isEmpty) {
      return _sharedPreferences!.remove(_localeKey);
    } else
      return _sharedPreferences!.setString(_localeKey, value);
  }

  AppTheme get currentTheme {
    // 0 Light 1 Dark
    var number = _sharedPreferences!.getInt(_themeKey) ?? 1;
    return number == 0 ? AppTheme.Light : AppTheme.Dark;
  }

  Future<bool> setTheme(AppTheme value) {
    if (value == AppTheme.Light) {
      return _sharedPreferences!.setInt(_themeKey, 0);
    } else
      return _sharedPreferences!.setInt(_themeKey, 1);
  }

  Future<bool> setOnboardingStatus(bool status) =>
      _sharedPreferences!.setBool(_showOnboarding, status);

  bool get showOnboarding =>
      _sharedPreferences!.getBool(_showOnboarding) ?? true;
}
