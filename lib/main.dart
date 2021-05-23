import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:web_portfolio/presentation/app/app_cubit.dart';

import 'di_container.dart';

import 'presentation/pages/home/home.dart';
// import 'presentation/routes/routes.gr.dart' as router;
import 'presentation/routes/routes.gr.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
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

            // builder: ExtendedNavigator.builder<router.Router>(
            //   name: 'main',
            //   router: router.Router(),
            // ),
            debugShowCheckedModeBanner: false,
          );
        }));
  }
}
