import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:web_portfolio/presentation/app/app_cubit.dart';

import 'di_container.dart';

import 'presentation/routes/routes.gr.dart' as router;

void main() async {
  await initInjection();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => AppCubit(sl()),
          ),
        ],
        child: BlocBuilder<AppCubit, AppState>(builder: (context, appState) {
          return MaterialApp(
            title: 'Flutter PortFolio',
            theme: appState.themeData,
            builder: ExtendedNavigator.builder<router.Router>(
              name: 'main',
              router: router.Router(),
            ),
            debugShowCheckedModeBanner: false,
          );
        }));
  }
}
