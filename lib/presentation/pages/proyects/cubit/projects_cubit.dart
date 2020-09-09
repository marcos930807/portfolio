import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:web_portfolio/presentation/routes/routes.gr.dart';
import 'project_model.dart';
import 'package:web_portfolio/utils/assets.dart';

part 'projects_state.dart';

class ProjectsCubit extends Cubit<ProjectsState> {
  ProjectsCubit() : super(ProjectsState([]));

  fetchProyect() {
    final projects = [
      Project(
          name: 'Awesome Dialog',
          description:
              'A Flutter package project for simple a awesome dialogs..',
          asset: Assets.github,
          route: Routes.awesomeDialogPage),
      Project(
          name: 'Gosocket Inbox',
          description: 'CrossPlatform flutter mobile App',
          asset: Assets.github,
          route: Routes.underDev),
      Project(
          name: 'PosMitt',
          description: 'CrossPlatform flutter mobile App',
          asset: Assets.github,
          route: Routes.underDev),
      Project(
          name: 'Smart Inv',
          description: 'CrossPlatform flutter mobile App',
          asset: Assets.github,
          route: Routes.underDev),
    ];

    emit(state.copyWith(projects: projects));
  }
}
