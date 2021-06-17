import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:web_portfolio/data/preferences/preferences_manager.dart';
import 'package:web_portfolio/presentation/app/themes/app_themes.dart';

part 'app_state.dart';

class AppCubit extends Cubit<AppState> {
  final PreferencesManager _preferencesManager;
  AppCubit(this._preferencesManager) : super(AppState.initial(_preferencesManager));

  void toggleTheme() {
    if (state.themeData!.brightness == Brightness.light) {
      _preferencesManager.setTheme(AppTheme.Dark);
      emit(state.copyWith(themeData: appThemeData[AppTheme.Dark]));
    } else {
      _preferencesManager.setTheme(AppTheme.Light);
      emit(state.copyWith(themeData: appThemeData[AppTheme.Light]));
    }
  }

  void updateLocale(String? strLocale) {
    if (strLocale != null && strLocale.isNotEmpty) {
      emit(state.copyWith(currentLocale: Locale(strLocale, "")));
      _preferencesManager.setLocale(strLocale);
    } else {
      emit(AppState(themeData: state.themeData, currentLocale: null));
      _preferencesManager.setLocale(strLocale);
    }
  }
}
