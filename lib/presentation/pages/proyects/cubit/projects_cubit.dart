import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:web_portfolio/presentation/app/lang/l10n.dart';
import 'package:web_portfolio/presentation/routes/routes.gr.dart';
import 'package:web_portfolio/utils/assets.dart';

import 'project_model.dart';

part 'projects_state.dart';

class ProjectsCubit extends Cubit<ProjectsState> {
  ProjectsCubit() : super(const ProjectsState([]));

  void fetchProyect() {
    final projects = [
      Project(
        name: 'Awesome Dialog',
        description: S.current.awesomeDialogDesc,
        asset: Assets.github,
        route: const AwesomeDialogPageRoute(),
      ),
      Project(
        name: 'Gosocket Inbox',
        description: S.current.gosocketInboxDesc,
        asset: Assets.github,
        route: const UnderDevRoute(),
      ),
      // Project(
      //   name: 'PosMitt',
      //   description: 'CrossPlatform flutter mobile App',
      //   asset: Assets.github,
      //   route: UnderDevRoute(),
      // ),
      // Project(
      //   name: 'Smart Inv',
      //   description: 'CrossPlatform flutter mobile App',
      //   asset: Assets.github,
      //   route: UnderDevRoute(),
      // ),
    ];

    emit(state.copyWith(projects: projects));
  }
}
