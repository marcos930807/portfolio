import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:web_portfolio/presentation/components/responsive_builder.dart';

import 'cubit/projects_cubit.dart';
import 'project_tile.dart';

class Projects extends StatelessWidget {
  const Projects({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProjectsCubit, ProjectsState>(
      builder: (context, state) {
        return ResponsiveWidget(
          largeScreen: GridView.count(
            padding: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 32.0),
            crossAxisCount: 3,
            childAspectRatio:
                MediaQuery.of(context).size.width / (MediaQuery.of(context).size.height / 3),
            children: List.generate(
                state.projects.length,
                (index) => ProjectTile(
                      project: state.projects[index],
                      index: index,
                    )),
          ),
          mediumScreen: GridView.count(
            padding: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 32.0),
            crossAxisCount: 2,
            childAspectRatio:
                MediaQuery.of(context).size.width / (MediaQuery.of(context).size.height / 3),
            children: List.generate(
                state.projects.length,
                (index) => ProjectTile(
                      project: state.projects[index],
                      index: index,
                    )),
          ),
          smallScreen: ListView.builder(
              itemCount: state.projects.length,
              itemBuilder: (context, index) => ProjectTile(
                    project: state.projects[index],
                    index: index,
                  )),
        );
      },
    );
  }
}
