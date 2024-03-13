import 'package:coding_test/widgets/todo_widget.dart';
import 'package:flutter/material.dart';

class TodosWidget extends StatelessWidget {
  const TodosWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: ListView(
        children: const [
          TodoWidget(title: "TODO TITLE", subTitle: "TODO SUB TITLE")
        ],
      ),
    );
  }
}
