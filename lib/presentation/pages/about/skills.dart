// import 'dart:html';

import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:web_portfolio/presentation/app/lang/l10n.dart';
import 'package:web_portfolio/presentation/components/shadow_card.dart';
import 'package:web_portfolio/services/firebase_storage.dart';

class Skills extends StatefulWidget {
  const Skills({Key? key}) : super(key: key);

  @override
  _SkillsState createState() => _SkillsState();
}

class _SkillsState extends State<Skills> {
  @override
  Widget build(BuildContext context) {
    final localized = S.of(context);
    final skills = [
      localized.skill1,
      localized.skill2,
      localized.skill3,
      localized.skill4,
      localized.skill5,
      localized.skill6,
      localized.skill7
    ];
    return ShadowCard(
      margin: const EdgeInsets.all(16),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            ListView.builder(
              shrinkWrap: true,
              itemCount: skills.length,
              itemBuilder: (_, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      const Icon(EvaIcons.checkmarkCircle2Outline),
                      const SizedBox(
                        width: 10,
                      ),
                      Expanded(child: Text(skills[index])),
                    ],
                  ),
                );
              },
            ),
            const SizedBox(
              height: 10,
            ),
            // OutlinedButton.icon(
            //     onPressed: () async {
            //       final url = await FirabeStorageService.getFile(
            //           "Pasos para subir una actualización de cualquier APK al Marketplace.docx");
            //       launch(url);
            //     },
            //     icon: const Icon(Icons.picture_as_pdf),
            //     label: Text(S.of(context).download))
          ],
        ),
      ),
    );
  }
}
