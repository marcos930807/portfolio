import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:web_portfolio/presentation/app/lang/l10n.dart';
import 'package:web_portfolio/presentation/components/cupertino_tabbar.dart';

import 'cubit/bottombar_cubit.dart';

class HomeTabBar extends StatelessWidget {
  const HomeTabBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BottomBarCubit, int>(
      builder: (context, state) {
        final customStyle = Theme.of(context)
            .textTheme
            .caption!
            .copyWith(fontWeight: FontWeight.bold, color: Theme.of(context).iconTheme.color);
        return Container(
          padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 8.0),
          width: 400,
          child: CupertinoSlidingSegmentedControl<int>(
            thumbColor: Theme.of(context).primaryColor,
            groupValue: state,
            onValueChanged: (value) => context.read<BottomBarCubit>().updateIndex(value!),
            children: <int, Widget>{
              0: Text(
                S.of(context).aboutMe,
                style: customStyle,
                textAlign: TextAlign.center,
              ),
              1: Text(
                S.of(context).projects,
                style: customStyle,
                textAlign: TextAlign.center,
              ),
            },
          ),
        );
      },
    );
  }
}
