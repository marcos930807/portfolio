import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class FrameBuilder extends StatelessWidget {
  final Widget app;
  final TransitionBuilder builder;
  const FrameBuilder({
    required this.app,
    required this.builder,
  });

  @override
  Widget build(BuildContext context) {
    return Frame(
      app: builder(context, app),
    );
  }
}

class Frame extends StatelessWidget {
  final Widget app;
  final bool showStatusBar;
  const Frame({Key? key, required this.app, this.showStatusBar = true}) : super(key: key);

  static TransitionBuilder get builder => (context, app) => Frame(app: app!);

  @override
  Widget build(BuildContext context) {
    final shouldDisplayTemplate = MediaQuery.of(context).size.width > 600;
    if (!shouldDisplayTemplate) {
      return app;
    } else {
      const MediaQueryData mediaQuery = MediaQueryData(
        size: Size(414, 896),
        devicePixelRatio: 2,
      );
      return FittedBox(
        child: Material(
          color: Colors.transparent,
          child: Builder(builder: (context) {
            final device = MediaQuery(
              data: mediaQuery,
              child: SizedBox.fromSize(
                  size: mediaQuery.size,
                  child: Stack(
                    fit: StackFit.expand,
                    children: <Widget>[
                      app,
                      if (showStatusBar)
                        const Positioned(
                          top: 0,
                          left: 0,
                          right: 0,
                          height: 30,
                          child: _StatusBar(),
                        ),
                    ],
                  )),
            );

            return Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50), border: Border.all(width: 12)),
              child: ClipRRect(borderRadius: BorderRadius.circular(38.5), child: device),
            );
          }),
        ),
      );
    }
  }
}

class _StatusBar extends StatelessWidget {
  const _StatusBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final date = DateTime.now();
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Padding(
            padding: const EdgeInsets.only(left: 30, top: 4),
            child: Text(
              '${date.hour}:${date.minute}',
              style: const TextStyle(
                fontWeight: FontWeight.bold,
              ),
            )),
        Padding(
          padding: const EdgeInsets.only(right: 18),
          child: Row(
            children: const <Widget>[
              Icon(
                Icons.signal_cellular_4_bar,
                size: 14,
              ),
              SizedBox(width: 4),
              Icon(Icons.wifi, size: 16),
              SizedBox(width: 4),
              Icon(CupertinoIcons.battery_charging, size: 20)
            ],
          ),
        )
      ],
    );
  }
}
