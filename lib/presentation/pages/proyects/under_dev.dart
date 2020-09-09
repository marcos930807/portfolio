import 'package:auto_route/auto_route.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:web_portfolio/utils/assets.dart';

class UnderDev extends StatelessWidget {
  const UnderDev({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        elevation: 0,
        leading: IconButton(
            icon: Icon(EvaIcons.arrowBackOutline),
            onPressed: () {
              ExtendedNavigator.of(context).pop();
            }),
        title: Text(
          'This is under develpment',
          style: TextStyle(color: Theme.of(context).iconTheme.color),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Image.asset(
          Assets.underDev,
          height: 300,
          width: 300,
        ),
      ),
    );
  }
}
