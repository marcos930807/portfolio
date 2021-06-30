import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:web_portfolio/presentation/pages/awesome_dialog/awesome_dialog.dart';
import 'package:web_portfolio/presentation/pages/by_brothers_app/by_brothers_app.dart';
import 'package:web_portfolio/presentation/pages/gosocket_app/gosocket_app.dart';
import 'package:web_portfolio/presentation/pages/home/home.dart';
import 'package:web_portfolio/presentation/pages/proyects/under_dev.dart';

@CustomAutoRouter(
  transitionsBuilder: TransitionsBuilders.fadeIn,
  durationInMilliseconds: 400,
  routes: <AutoRoute>[
    AutoRoute<void>(page: MyHomePage, initial: true, path: '/'),
    AutoRoute<void>(page: AwesomeDialogPage, path: '/awesome_dialog'),
    AutoRoute<void>(page: GosocketPage, path: '/gosocket_app'),
    AutoRoute<void>(page: ByBrothersPage, path: '/bybrothers_app'),
    AutoRoute<void>(page: UnderDev, path: 'under_dev'),
  ],
)
class $AppRouter {}
