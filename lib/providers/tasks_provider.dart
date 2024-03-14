import 'package:coding_test/models/task_model.dart';

class TasksProvider {
  final List<TaskModel> _tasks = [];

  List<TaskModel> get todos => _tasks;

  List<TaskModel> addTask(TaskModel task) {
    _tasks.add(task);
    return todos;
  }

  List<TaskModel> deleteTask(String id) {
    _tasks.removeWhere((element) => element.id == id);

    return _tasks;
  }

  List<TaskModel> markTaskCompleted(String id) {
    final index = _tasks.indexWhere((element) => element.id == id);

    final task = _tasks[index];
    task.isCompleted = true;
    _tasks[index] = task;

    return _tasks;
  }

  List<TaskModel> editTask({required String id, required TaskModel taskModel}) {
    final index = _tasks.indexWhere((element) => element.id == id);

    final task = _tasks[index];
    task.title = taskModel.title;
    task.subTitle = taskModel.subTitle;

    _tasks[index] = task;

    return _tasks;
  }
}
