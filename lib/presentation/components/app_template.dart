import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:web_portfolio/presentation/components/responsive_builder.dart';
import 'package:web_portfolio/utils/assets.dart';

abstract class Template {
  Widget builder({
    BuildContext context,
    TemplateData data,
    Widget app,
  });
}

class TemplateData {
  final String title;
  final String description;
  final List<String>? featureList;
  final List<LinkData>? links;
  TemplateData({
    required this.title,
    required this.description,
    this.featureList,
    this.links,
  });
}

class LinkData {
  final String url;
  final LinkType type;

  LinkData(this.url, this.type);
}

enum LinkType { playStore, appStore, pub, github }

class SimpleTemplate extends StatelessWidget {
  final bool reverse;
  final TemplateData data;
  final Widget app;
  const SimpleTemplate({
    this.reverse = false,
    required this.data,
    required this.app,
  });

  @override
  Widget build(
    BuildContext context,
  ) {
    final sizedChild = Center(
      child: SizedBox(
        height: 896,
        child: _Content(data: data),
      ),
    );
    final children = reverse == true
        ? [
            Flexible(
                flex: 2,
                key: const Key('Preview'),
                child: Align(alignment: Alignment.centerRight, child: app)),
            const SizedBox(
              width: 10,
            ),
            Flexible(child: sizedChild),
          ]
        : [
            Expanded(flex: 2, child: sizedChild),
            const SizedBox(
              width: 10,
            ),
            Flexible(key: const Key('Preview'), child: app),
          ];
    return Padding(
        padding: const EdgeInsets.all(16.0),
        child: ResponsiveWidget(
          largeScreen: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            //crossAxisAlignment: CrossAxisAlignment.stretch,
            children: children,
          ),
          smallScreen: SingleChildScrollView(
            child: Column(
              children: [
                app,
                sizedChild,
              ],
            ),
          ),
        ));
  }
}

class _Content extends StatelessWidget {
  final TemplateData data;

  const _Content({
    Key? key,
    required this.data,
  }) : super(key: key);

  Widget _buildLinkButton(LinkData e) {
    switch (e.type) {
      case LinkType.playStore:
        return TextButton(
          style: TextButton.styleFrom(padding: EdgeInsets.zero),
          onPressed: () {
            launch(e.url);
          },
          child: Image.asset(
            Assets.googlePlayBadgeEn,
            height: 63,
            width: 180,
            fit: BoxFit.fill,
          ),
        );
      case LinkType.appStore:
        return TextButton(
          style: TextButton.styleFrom(padding: EdgeInsets.zero),
          onPressed: () {
            launch(e.url);
          },
          child: Image.asset(
            Assets.appStoreBadgeEn,
            height: 64,
            width: 178,
            fit: BoxFit.fill,
          ),
        );

      default:
        return const SizedBox();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        DefaultTextStyle(
          style: Theme.of(context).textTheme.headline3!,
          child: Text(
            data.title,
            maxLines: 3,
            textAlign: TextAlign.justify,
            overflow: TextOverflow.clip,
          ),
        ),
        const SizedBox(height: 40),
        DefaultTextStyle(
          style: Theme.of(context).textTheme.subtitle1!,
          child: Text(
            data.description,
            textAlign: TextAlign.justify,
            overflow: TextOverflow.clip,
          ),
        ),
        const SizedBox(height: 40),
        if (data.featureList != null && data.featureList!.isNotEmpty)
          ...data.featureList!
              .map(
                (e) => ListTile(
                  leading: const Icon(Icons.donut_small),
                  title: Text(e),
                ),
              )
              .toList(),
        if (data.links != null && data.links!.isNotEmpty) ...[
          const SizedBox(
            height: 40,
          ),
          Wrap(
            spacing: 12,
            runSpacing: 12,
            children: <Widget>[
              ...data.links!.map(
                (e) => _buildLinkButton(e),
              )
            ],
          ),
        ]
      ],
    );
  }
}



// class _Link extends StatelessWidget {
//   final LinkData data;
//   final TemplateThemeData theme;

//   const _Link({Key key, this.data, this.theme}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return FittedBox(
//       child: ButtonTheme.fromButtonThemeData(
//         data: theme.buttonTheme,
//         child: RaisedButton(
//           elevation: 0,
//           focusElevation: 0,
//           hoverElevation: 0,
//           onPressed: () => {launch(data.url)},
//           child: IconTheme(
//             data: theme.buttonIconTheme.merge(IconThemeData(size: 20)),
//             child: Row(
//               children: [
//                 if (data.icon != null)
//                   Container(
//                       height: 20, width: 20, margin: EdgeInsets.only(right: 12), child: data.icon),
//                 Text(
//                   data.title,
//                   style: theme.buttonTextStyle,
//                 )
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

// class _LogoLink extends StatelessWidget {
//   final LinkData data;

//   const _LogoLink({Key key, this.data}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return InkWell(
//       onTap: () => {launch(data.url)},
//       child: data.icon,
//     );
//   }
// }

// class AppWithDrawer extends StatefulWidget {
//   final Widget child;
//   final Widget drawer;

//   const AppWithDrawer({Key? key, required this.child, this.drawer, this.theme}) : super(key: key);

//   @override
//   State<StatefulWidget> createState() => _AppWithDrawerState();
// }

// class _AppWithDrawerState extends State<AppWithDrawer> with TickerProviderStateMixin {
//   bool showInfoButton = true;

//   AnimationController animationController;

//   @override
//   void initState() {
//     animationController = AnimationController(
//       vsync: this,
//       duration: Duration(milliseconds: 500),
//     );
//     super.initState();
//   }

//   _toggle() {
//     if (animationController.value == 0) {
//       animationController.forward();
//     } else {
//       animationController.animateBack(0);
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     final theme = widget.theme;
//     final size = MediaQuery.of(context).size;

//     final app = GestureDetector(
//         onTap: () => setState(() => showInfoButton = !showInfoButton),
//         child: Scaffold(
//           body: Stack(
//             fit: StackFit.expand,
//             children: [
//               widget.child,
//               AnimatedPositioned(
//                 duration: Duration(milliseconds: 300),
//                 right: showInfoButton ? 0 : -60,
//                 bottom: 60,
//                 width: 60,
//                 height: 60,
//                 child: InkWell(
//                   onTap: () => _toggle(),
//                   child: Container(
//                     decoration: BoxDecoration(
//                         border: Border(
//                             left: BorderSide(color: theme.titleTextStyle.color),
//                             top: BorderSide(color: theme.titleTextStyle.color),
//                             bottom: BorderSide(color: theme.titleTextStyle.color)),
//                         color: theme.backgroundColor,
//                         boxShadow: []),
//                     padding: EdgeInsets.all(20),
//                     child: Icon(
//                       FontAwesomeIcons.info,
//                       color: theme.titleTextStyle.color,
//                     ),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ));

//     return Container(
//       color: theme.backgroundColor,
//       child: Stack(
//         fit: StackFit.expand,
//         children: [
//           GestureDetector(
//             onTap: () => _toggle(),
//             child: Container(
//               color: theme.backgroundColor,
//               child: widget.drawer,
//               padding: EdgeInsets.only(left: 80, top: 40, right: 20, bottom: 40),
//             ),
//           ),
//           AnimatedBuilder(
//             animation: animationController,
//             builder: (context, child) {
//               final t = animationController.value;
//               final scale = 1 - 0.2 * t;
//               Matrix4 matrix = Matrix4.identity()
//                 ..setEntry(3, 2, 0.001)
//                 ..rotateY(-pi / 10 * t)
//                 ..scale(scale, scale, scale)
//                 ..translate(-size.width * t, 0, 0);

//               return Transform(
//                 transform: matrix,
//                 origin: size.center(Offset.zero),
//                 child: Container(
//                   decoration:
//                       BoxDecoration(boxShadow: [BoxShadow(color: Colors.black45, blurRadius: 12)]),
//                   child: ClipRRect(
//                     borderRadius: BorderRadius.circular(24.7 * animationController.value),
//                     clipBehavior: Clip.antiAlias,
//                     child: child,
//                   ),
//                 ),
//               );
//             },
//             child: app,
//           )
//         ],
//       ),
//     );
/* return InnerDrawer(
      key: _innerDrawerKey,
      scale: IDOffset.horizontal(0.8),
      borderRadius: 27,
      onTapClose: true,
      offset: IDOffset.only(right: 0.9),
      backgroundColor: theme.backgroundColor,
      rightChild:
      scaffold
      :,
    );*/
//   }
// }
