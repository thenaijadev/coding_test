import 'package:coding_test/bloc/tasks_bloc.dart';
import 'package:coding_test/core/widgets/text_widget.dart';
import 'package:coding_test/widgets/completed_task.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CompletedTasksWidget extends StatelessWidget {
  const CompletedTasksWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: BlocBuilder<TasksBloc, TasksState>(
        builder: (context, state) {
          if (state is TasksStateTaskChanged) {
            final completedTasks = state.tasks
                .where((element) => element.isCompleted == true)
                .toList();

            return completedTasks.isNotEmpty
                ? ListView.builder(
                    itemCount: completedTasks.length,
                    itemBuilder: ((context, index) {
                      return CompletedTask(
                        title: completedTasks[index].title,
                        subTitle: completedTasks[index].title,
                      );
                    }),
                  )
                : const Center(
                    child: TextWidget(text: "You have no completed tasks"),
                  );
          } else {
            return const Center(
              child: TextWidget(text: "You have no conpleted tasks"),
            );
          }
        },
      ),
    );
  }
}
