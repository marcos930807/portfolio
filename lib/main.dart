import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:url_strategy/url_strategy.dart';
import 'package:web_portfolio/presentation/app/app_cubit.dart';

import 'di_container.dart';
// import 'presentation/routes/routes.gr.dart' as router;
import 'presentation/app/lang/l10n.dart';
import 'presentation/routes/routes.gr.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setPathUrlStrategy();
  await Firebase.initializeApp();
  await initInjection();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _appRouter = AppRouter();
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => AppCubit(sl()),
        ),
      ],
      child: BlocBuilder<AppCubit, AppState>(builder: (context, appState) {
        return MaterialApp.router(
          routeInformationParser: _appRouter.defaultRouteParser(),
          routerDelegate: _appRouter.delegate(),
          title: 'Flutter PortFolio',
          theme: appState.themeData,
          debugShowCheckedModeBanner: false,
          supportedLocales: S.delegate.supportedLocales,
          // These delegates make sure that the localization data for the proper language is loaded
          localizationsDelegates: const [
            S.delegate,
            GlobalMaterialLocalizations.delegate,
            DefaultCupertinoLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
            // Built-in localization for text direction LTR/RTL
            // GlobalWidgetsLocalizations.delegate,
          ],
          locale: appState.currentLocale,
        );
      }),
    );
  }
}
