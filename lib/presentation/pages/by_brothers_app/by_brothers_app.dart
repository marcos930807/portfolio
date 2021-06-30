import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:web_portfolio/presentation/app/lang/l10n.dart';
import 'package:web_portfolio/presentation/components/app_template.dart';
import 'package:web_portfolio/presentation/components/carousel_assets.dart';
import 'package:web_portfolio/presentation/components/frame.dart';
import 'package:web_portfolio/utils/assets.dart';

class ByBrothersPage extends StatelessWidget {
  const ByBrothersPage({Key? key}) : super(key: key);

  final ByBrothersImagesAssets = const [
    Assets.bb1,
    Assets.bb2,
    Assets.bb3,
    Assets.bb4,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ByBrothers'),
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        textTheme: Theme.of(context).textTheme,
        elevation: 0,
      ),
      body: SimpleTemplate(
        data: TemplateData(
            title: 'ByBrothers',
            description: S.of(context).ByBrothersAppDesc,
            featureList: Intl.getCurrentLocale() == 'en'
                ? [
                    'Clean Architecture',
                    'SOLID principles',
                    'OTP authentication',
                    'Restfull Service consumed',
                    'Local database for cache documents',
                  ]
                : [
                    'Arquitectura limpia',
                    'Principios de SOLID',
                    'Autenticación OTP',
                    'Servicios rest consumido',
                    'Base de datos local para documentos en caché',
                  ],
            links: <LinkData>[
              LinkData(
                  'https://play.google.com/store/apps/details?id=us.bybrothers.app&hl=en_US&gl=US',
                  LinkType.playStore),
              LinkData('https://apps.apple.com/us/app/bybrothers/id1552641094#?platform=iphone',
                  LinkType.appStore),
            ]),
        app: Frame(
            showStatusBar: false,
            app: CarouselAssets(
              assetsList: ByBrothersImagesAssets,
            )),
      ),
    );
  }
}
