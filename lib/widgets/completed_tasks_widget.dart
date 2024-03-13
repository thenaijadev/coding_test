import 'package:coding_test/widgets/completed_task.dart';
import 'package:flutter/material.dart';

class CompletedTasksWidget extends StatelessWidget {
  const CompletedTasksWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: ListView(
        children: const [
          CompletedTask(title: "TODO TITLE", subTitle: "TODO TITLE")
        ],
      ),
    );
  }
}
