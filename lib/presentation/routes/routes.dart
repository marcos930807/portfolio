import 'package:auto_route/annotations.dart';
import 'package:web_portfolio/presentation/pages/awesome_dialog/awesome_dialog.dart';
import 'package:web_portfolio/presentation/pages/home/home.dart';
import 'package:web_portfolio/presentation/pages/proyects/under_dev.dart';

@MaterialAutoRouter(
  // transitionsBuilder: TransitionsBuilders.fadeIn,
  // durationInMilliseconds: 400,
  routes: <AutoRoute>[
    AutoRoute(page: MyHomePage, initial: true),
    AutoRoute(page: AwesomeDialogPage),
    AutoRoute(page: UnderDev),
  ],
)
class $AppRouter {}
