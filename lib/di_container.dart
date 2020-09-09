import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:web_portfolio/data/preferences/preferences_manager.dart';

final sl = GetIt.instance;
Future initInjection() async {
  final SharedPreferences prefs = await SharedPreferences.getInstance();
  sl.registerLazySingleton(() => prefs);
  sl.registerLazySingleton(() => PreferencesManager(sl()));
}
