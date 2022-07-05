import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:web_portfolio/presentation/app/lang/l10n.dart';
import 'package:web_portfolio/presentation/pages/proyects/cubit/project_model.dart';
import 'package:web_portfolio/presentation/routes/go_router.dart';
import 'package:web_portfolio/utils/assets.dart';

part 'projects_state.dart';

class ProjectsCubit extends Cubit<ProjectsState> {
  ProjectsCubit() : super(const ProjectsState([]));

  void fetchProyect() {
    final projects = [
      Project(
        name: 'Awesome Dialog',
        description: S.current.awesomeDialogDesc,
        asset: Assets.github,
        route: const AwesomeDialogRoute(),
      ),
      // Project(
      //   name: 'Gosocket Inbox',
      //   description: S.current.gosocketInboxDesc,
      //   asset: Assets.github,
      //   route: const GosocketRoute(),
      // ),
      // Project(
      //   name: 'By Brothers',
      //   description: S.current.ByBrothersAppDesc,
      //   asset: Assets.github,
      //   route: const ByBrothersRoute(),
      // ),
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
