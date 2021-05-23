part of 'projects_cubit.dart';

class ProjectsState extends Equatable {
  final List<Project> projects;
  const ProjectsState(this.projects);

  @override
  List<Object> get props => [projects];

  ProjectsState copyWith({
    final List<Project>? projects,
  }) {
    return ProjectsState(
      projects ?? this.projects,
    );
  }
}
