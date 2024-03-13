import 'package:coding_test/core/widgets/text_widget.dart';
import 'package:coding_test/widgets/completed_task_widget.dart';
import 'package:flutter/material.dart';

class CompletedTaskScreen extends StatelessWidget {
  const CompletedTaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 219, 222, 252),
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Icon(
            Icons.arrow_back,
            color: Colors.white,
            size: 25,
          ),
        ),
        title: const TextWidget(
          text: "Completed Task",
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 20,
        ),
        centerTitle: false,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: ListView(
          children: const [
            CompletedTasks(title: "TODO TITLE", subTitle: "TODO TITLE")
          ],
        ),
      ),
    );
  }
}
