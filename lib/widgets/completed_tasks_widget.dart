import 'package:coding_test/bloc/tasks_bloc.dart';
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
          return state is TasksStateTaskChanged
              ? ListView.builder(
                  itemCount: state.tasks.length,
                  itemBuilder: ((context, index) {
                    return state.tasks[index].isCompleted == true
                        ? CompletedTask(
                            title: state.tasks[index].title,
                            subTitle: state.tasks[index].subTitle,
                          )
                        : const SizedBox();
                  }))
              : const SizedBox();
        },
      ),
    );
  }
}
