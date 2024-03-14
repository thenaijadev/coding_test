// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'tasks_bloc.dart';

@immutable
class TasksState extends Equatable {
  @override
  List<Object?> get props => [];
}

final class TasksInitial extends TasksState {
  @override
  List<Object?> get props => [];
}

class TasksStateTaskChanged extends TasksState {
  final List<TaskModel> tasks;
  TasksStateTaskChanged({
    required this.tasks,
  });

  @override
  List<Object?> get props => [tasks];
}

class TaskStateIsLoading extends TasksState {}
