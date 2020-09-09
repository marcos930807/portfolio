import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:web_portfolio/presentation/components/cupertino_tabbar.dart';

import 'cubit/bottombar_cubit.dart';

class HomeTabBar extends StatelessWidget {
  HomeTabBar({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BottomBarCubit, int>(
      builder: (context, state) {
        var customStyle = Theme.of(context).textTheme.caption.copyWith(
            fontWeight: FontWeight.bold,
            color: Theme.of(context).iconTheme.color);
        return Container(
          padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 8.0),
          width: 400,
          child: CustomCupertinoTabBar(
            Theme.of(context).accentColor,
            Theme.of(context).primaryColor,
            [
              Text(
                'About me',
                style: customStyle,
                textAlign: TextAlign.center,
              ),
              Text(
                'Projects',
                style: customStyle,
                textAlign: TextAlign.center,
              ),

              // Text(
              //   'Vendors',
              //   style: customStyle,
              //   textAlign: TextAlign.center,
              // ),
            ],
            () => state,
            (int index) {
              context.bloc<BottomBarCubit>().updateIndex(index);
            },
            useSeparators: true,
            expand: true,
            verticalPadding: 14,
          ),
        );
      },
    );
  }
}
