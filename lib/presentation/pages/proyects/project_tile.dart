import 'package:auto_route/auto_route.dart';
import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:web_portfolio/presentation/components/shadow_card.dart';
import 'package:websafe_svg/websafe_svg.dart';
import 'cubit/project_model.dart';

class ProjectTile extends StatelessWidget {
  const ProjectTile({Key key, @required this.project, @required this.index})
      : super(key: key);
  final Project project;
  final int index;
  @override
  Widget build(BuildContext context) {
    return FadeIn(
      delay: index.toDouble(),
      child: ShadowCard(
        margin: const EdgeInsets.all(8),
        child: ListTile(
          leading: WebsafeSvg.asset(project.asset, height: 50, width: 50),
          title: Text(project.name),
          subtitle: Text(
            project.description,
            style: Theme.of(context).textTheme.caption,
          ),
          onTap: () {
            ExtendedNavigator.of(context).push(project.route);
          },
        ),
      ),
    );
  }
}
