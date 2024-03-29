import 'package:flutter/material.dart';
import 'package:web_portfolio/presentation/components/shadow_card.dart';
import 'package:web_portfolio/presentation/routes/go_router.dart';
import 'package:websafe_svg/websafe_svg.dart';

import 'cubit/project_model.dart';

class ProjectTile extends StatelessWidget {
  const ProjectTile({Key? key, required this.project, required this.index})
      : super(key: key);
  final Project project;
  final int index;
  @override
  Widget build(BuildContext context) {
    return ShadowCard(
      margin: const EdgeInsets.all(8),
      child: Center(
        child: ListTile(
          leading: WebsafeSvg.asset(project.asset!, height: 50, width: 50),
          title: Text(project.name!),
          subtitle: Text(
            project.description!,
            style: Theme.of(context).textTheme.caption,
          ),
          onTap: () {
            if (project.route is AwesomeDialogRoute) {
              (project.route as AwesomeDialogRoute?)?.push(context);
            }
            if (project.route is ByBrothersRoute) {
              (project.route as ByBrothersRoute?)?.push(context);
            }
            if (project.route is GosocketRoute) {
              (project.route as GosocketRoute?)?.push(context);
            }
          },
        ),
      ),
    );
  }
}
