import 'package:coding_test/bloc/tasks_bloc.dart';
import 'package:coding_test/config/router/routes.dart';
import 'package:coding_test/core/widgets/text_widget.dart';
import 'package:coding_test/widgets/task_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TasksListWidget extends StatelessWidget {
  const TasksListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: BlocBuilder<TasksBloc, TasksState>(
        builder: (context, state) {
          return state is TasksStateTaskChanged
              ? ListView.builder(
                  itemCount: state.tasks.length,
                  itemBuilder: ((context, index) {
                    return state.tasks[index].isCompleted == false
                        ? TaskWidget(
                            title: state.tasks[index].title,
                            subTitle: state.tasks[index].subTitle,
                            onComplete: () {
                              context.read<TasksBloc>().add(
                                  TasksEventMarkAsCompleted(
                                      id: state.tasks[index].id!));
                            },
                            onDelete: () {
                              context.read<TasksBloc>().add(
                                  TasksEventDeleteTasks(
                                      id: state.tasks[index].id!));
                            },
                            onEdit: () {
                              Navigator.of(context).pushNamed(Routes.editTask,
                                  arguments: state.tasks[index]);
                            },
                          )
                        : const SizedBox();
                  }))
              : const Center(
                  child: TextWidget(text: "You have no pending tasks"),
                );
        },
      ),
    );
  }
}
