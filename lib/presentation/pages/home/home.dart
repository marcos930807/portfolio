// import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:web_portfolio/presentation/pages/about/about.dart';
import 'package:web_portfolio/presentation/pages/home/cubit/bottombar_cubit.dart';
import 'package:web_portfolio/presentation/pages/proyects/cubit/projects_cubit.dart';
import 'package:web_portfolio/presentation/pages/proyects/projects.dart';
import 'package:web_portfolio/utils/assets.dart';
import 'package:websafe_svg/websafe_svg.dart';
import '../../../utils/extensions.dart';
import 'components/theme_switch.dart';
import 'tab_bar.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({
    Key? key,
  }) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => BottomBarCubit(),
          ),
          BlocProvider(
            create: (context) => ProjectsCubit()..fetchProyect(),
          ),
        ],
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Theme.of(context).scaffoldBackgroundColor,
            elevation: 0,
            centerTitle: true,
            title: HomeTabBar(),
            actions: [
              ThemeSwitch(),
            ],
          ),
          floatingActionButton: FloatingActionButton.extended(
              backgroundColor: Theme.of(context).cardColor,
              onPressed: () async {
                await launch("https://wa.me/+5358142412?text=Hello");
              },
              label: Row(
                children: [
                  WebsafeSvg.asset(Assets.whatApp, height: 30, width: 30),
                  SizedBox(
                    width: 5,
                  ),
                  Text('Contact Me'),
                ],
              )).moveUpOnHover,
          body: BlocBuilder<BottomBarCubit, int>(
            builder: (context, state) {
              switch (state) {
                case 0:
                  return AboutTab();
                case 1:
                  return Projects();
                default:
                  return Container();
              }
            },
          ),
        ));
  }
}
