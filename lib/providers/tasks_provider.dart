import 'package:coding_test/models/task_model.dart';

class TasksProvider {
  final List<TaskModel> _tasks = [];
  final List<TaskModel> _completeTasks = [];

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
    print(_tasks);
    return _tasks;
  }
}
