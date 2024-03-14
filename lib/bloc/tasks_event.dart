// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'tasks_bloc.dart';

@immutable
sealed class TasksEvent {}

class TasksEventAddTasks extends TasksEvent {
  final TaskModel task;
  TasksEventAddTasks({
    required this.task,
  });
}

class TasksEventDeleteTasks extends TasksEvent {
  final String id;
  TasksEventDeleteTasks({
    required this.id,
  });
}

class TasksEventMarkAsCompleted extends TasksEvent {
  final String id;
  TasksEventMarkAsCompleted({
    required this.id,
  });
}
