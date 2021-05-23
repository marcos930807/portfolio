import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:web_portfolio/presentation/app/app_cubit.dart';

class ThemeSwitch extends StatelessWidget {
  const ThemeSwitch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      tooltip: 'Change Theme',
      icon: Icon(Theme.of(context).brightness == Brightness.light
          ? EvaIcons.moonOutline
          : EvaIcons.sunOutline),
      onPressed: () {
        context.read<AppCubit>().toggleTheme();
      },
    );
  }
}
