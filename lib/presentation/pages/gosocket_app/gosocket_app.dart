import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:web_portfolio/presentation/app/lang/l10n.dart';
import 'package:web_portfolio/presentation/components/app_template.dart';
import 'package:web_portfolio/presentation/components/carousel_assets.dart';
import 'package:web_portfolio/presentation/components/frame.dart';
import 'package:web_portfolio/services/firebase_storage.dart';
import 'package:web_portfolio/utils/assets.dart';

class GosocketPage extends StatelessWidget {
  const GosocketPage({Key? key}) : super(key: key);

  static const gosocketImagesAssets = [
    Assets.g1,
    Assets.g2,
    Assets.g3,
    Assets.g4,
    Assets.g5,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // title: const Text('Gosocket'),
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        textTheme: Theme.of(context).textTheme,
        elevation: 0,
      ),
      body: SimpleTemplate(
        data: TemplateData(
            title: 'Gosocket',
            description: S.of(context).gosocketInboxAppDesc,
            featureList: Intl.getCurrentLocale() == 'en'
                ? [
                    'Clean Architecture',
                    'SOLID principles',
                    'Oauth2',
                    'Restfull Service consumed',
                    'Infinite List',
                    'Local database for cache documents',
                    'PDF render',
                    'Barcode scanning',
                  ]
                : [
                    'Arquitectura limpia',
                    'Principios de SOLID',
                    'Oauth2',
                    'Servicios rest consumido',
                    'Lista infinita',
                    'Base de datos local para documentos en caché',
                    'Procesamiento de PDF',
                    'Escaneo de códigos de barra',
                  ],
            links: <LinkData>[
              LinkData(
                  'https://play.google.com/store/apps/details?id=net.gosocket.gosocketmobilev2&hl=es_SV',
                  LinkType.playStore),
              LinkData('https://apps.apple.com/us/app/gosocket/id1487538315#?platform=iphone',
                  LinkType.appStore),
            ]),
        app: FutureBuilder<List<String>>(
          future: FirabeStorageService.getImagesUrl(gosocketImagesAssets),
          builder: (context, snapshot) => snapshot.hasData
              ? Frame(
                  app: CarouselAssets(
                  assetsList: snapshot.data!,
                ))
              : const Center(
                  child: CircularProgressIndicator(),
                ),
        ),
      ),
    );
  }
}
