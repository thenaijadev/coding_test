import 'package:coding_test/models/task_model.dart';

class TasksProvider {
  final List<TaskModel> _tasks = [];

  List<TaskModel> get todos => _tasks;

//This function is for ading a task

  List<TaskModel> addTask(TaskModel task) {
    _tasks.add(task);
    return todos;
  }

//This function is for deleting a task
  List<TaskModel> deleteTask(String id) {
    _tasks.removeWhere((element) => element.id == id);

    return _tasks;
  }

//This function is for marking a task as completed
  List<TaskModel> markTaskCompleted(String id) {
    final index = _tasks.indexWhere((element) => element.id == id);

    if (index != -1) {
      final task = _tasks[index];
      final updatedTask = task.copyWith(isCompleted: true);

      _tasks[index] = updatedTask;

      return _tasks;
    } else {
      return _tasks;
    }
  }

//This function is for editing a task
  List<TaskModel> editTask({required String id, required TaskModel taskModel}) {
    final index = _tasks.indexWhere((element) => element.id == id);

    final task = _tasks[index];
    task.title = taskModel.title;
    task.subTitle = taskModel.subTitle;

    _tasks[index] = task;

    return _tasks;
  }
}
