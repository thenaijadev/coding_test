import 'package:coding_test/bloc/tasks_bloc.dart';
import 'package:coding_test/core/widgets/text_widget.dart';
import 'package:coding_test/models/task_model.dart';
import 'package:coding_test/widgets/main_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class EditTaskScreen extends StatefulWidget {
  const EditTaskScreen({super.key, required this.task});
  final TaskModel task;

  @override
  State<EditTaskScreen> createState() => _EditTaskScreenState();
}

class _EditTaskScreenState extends State<EditTaskScreen> {
  late TextEditingController titleController;
  late TextEditingController detailController;
  @override
  void initState() {
    titleController = TextEditingController(text: widget.task.title);
    detailController = TextEditingController(
        text: widget.task.subTitle); // Assuming subTitle is the task detail

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          text: "Edit Task",
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 20,
        ),
        centerTitle: false,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: ListView(
          children: [
            Column(
              children: [
                const SizedBox(
                  height: 43,
                ),
                TextField(
                  controller: titleController,
                  onChanged: (value) {},
                  decoration: const InputDecoration(
                    hintText: "Title",
                    hintStyle: TextStyle(
                      fontWeight: FontWeight.normal,
                      color: Color(0xff8B8787),
                    ),
                    enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0xff8B8787))),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                TextField(
                  controller: detailController,
                  decoration: const InputDecoration(
                    hintText: "Detail",
                    hintStyle: TextStyle(
                      fontWeight: FontWeight.normal,
                      color: Color(0xff8B8787),
                    ),
                    enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0xff8B8787))),
                  ),
                ),
                const SizedBox(
                  height: 54,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    MainButton(
                      title: "Update",
                      onPressed: () {
                        if (titleController.text.isEmpty ||
                            detailController.text.isEmpty) {
                          return;
                        }
                        context.read<TasksBloc>().add(TasksEventUpdateTasks(
                            id: widget.task.id!,
                            task: TaskModel(
                                title: titleController.text,
                                subTitle: detailController.text)));
                      },
                    ),
                    BlocListener<TasksBloc, TasksState>(
                      listener: (context, state) {
                        if (state is TasksStateTaskChanged) {
                          Navigator.pop(context);
                        }
                      },
                      child: MainButton(
                        title: "Delete",
                        onPressed: () {
                          context
                              .read<TasksBloc>()
                              .add(TasksEventDeleteTasks(id: widget.task.id!));
                        },
                      ),
                    )
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
