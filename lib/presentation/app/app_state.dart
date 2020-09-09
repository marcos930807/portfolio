part of 'app_cubit.dart';

class AppState extends Equatable {
  final ThemeData themeData;
  final Locale currentLocale;
  const AppState({this.themeData, this.currentLocale});

  factory AppState.initial(PreferencesManager _preferencesManager) {
    return AppState(
        themeData: appThemeData[_preferencesManager.currentTheme],
        currentLocale: _preferencesManager.currentLocale.isNotEmpty
            ? Locale(_preferencesManager.currentLocale, "")
            : null);
  }

  AppState copyWith({
    final ThemeData themeData,
    final Locale currentLocale,
  }) =>
      AppState(
        themeData: themeData ?? this.themeData,
        currentLocale: currentLocale ?? this.currentLocale,
      );

  @override
  List<Object> get props => [themeData, currentLocale];
}
