import 'dart:html';

import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:web_portfolio/presentation/components/shadow_card.dart';

const skills = [
  'Dominio de la POO (programación orientada a objetos) teniendo experiencia en Java, Kotlin, Dart, JavaScript.',
  'Dominio de la Clean Arquitecture y los principios de SOLID, usando código segmentado por capas con responsabilidades únicas.'
      'Dominio de arquitecturas como MVVM y MVP,BLOC, así como inyección de dependencias y trabajo con abstracciones.',
  'Utilización de software de control de versiones,ejemplo: Git utilizando gitflow.',
  'Desarrollo móvil Nativo para Android y usando frameworks como Flutter para desarrollo multiplataforma.'
];

class Skills extends StatefulWidget {
  const Skills({Key key}) : super(key: key);

  @override
  _SkillsState createState() => _SkillsState();
}

class _SkillsState extends State<Skills> {
  @override
  Widget build(BuildContext context) {
    return ShadowCard(
      margin: EdgeInsets.all(16),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
            shrinkWrap: true,
            itemCount: skills.length,
            itemBuilder: (_, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Icon(EvaIcons.checkmarkCircle2Outline),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(child: Text(skills[index])),
                  ],
                ),
              );
            }),
      ),
    );
  }
}
