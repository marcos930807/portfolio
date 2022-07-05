import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:go_router/go_router.dart';
import 'package:web_portfolio/di_container.dart';
import 'package:web_portfolio/firebase_option.dart';
import 'package:web_portfolio/presentation/app/app_cubit.dart';
// import 'presentation/routes/routes.gr.dart' as router;
import 'package:web_portfolio/presentation/app/lang/l10n.dart';
import 'package:web_portfolio/presentation/routes/go_router.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // turn off the # in the URLs on the web
  GoRouter.setUrlPathStrategy(UrlPathStrategy.path);
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.flavorConfig(),
  );
  await initInjection();
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late final GoRouter _appRouter;

  @override
  void initState() {
    _appRouter = getAppRouter();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => AppCubit(sl()),
        ),
      ],
      child: BlocBuilder<AppCubit, AppState>(builder: (context, appState) {
        return MaterialApp.router(
          routeInformationParser: _appRouter.routeInformationParser,
          routerDelegate: _appRouter.routerDelegate,
          routeInformationProvider: _appRouter.routeInformationProvider,
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
