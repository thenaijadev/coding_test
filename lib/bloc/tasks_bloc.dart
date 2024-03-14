import 'package:bloc/bloc.dart';
import 'package:coding_test/models/task_model.dart';
import 'package:coding_test/providers/tasks_provider.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

part 'tasks_event.dart';
part 'tasks_state.dart';

class TasksBloc extends Bloc<TasksEvent, TasksState> {
  final TasksProvider provider;
  TasksBloc({required this.provider}) : super(TasksInitial()) {
    on<TasksEventAddTasks>((event, emit) {
      emit(TaskStateIsLoading());
      final TaskModel task = event.task;
      final tasks = provider.addTask(task);
      emit(TasksStateTaskChanged(tasks: tasks));
    });

    on<TasksEventDeleteTasks>((event, emit) {
      emit(TaskStateIsLoading());
      final String task = event.id;
      final tasks = provider.deleteTask(task);
      emit(TasksStateTaskChanged(tasks: tasks));
    });

    on<TasksEventMarkAsCompleted>((event, emit) {
      emit(TaskStateIsLoading());
      final String task = event.id;
      final tasks = provider.markTaskCompleted(task);
      emit(TasksStateTaskChanged(tasks: tasks));
    });

    on<TasksEventUpdateTasks>((event, emit) {
      emit(TaskStateIsLoading());
      final String id = event.id;
      final TaskModel task = event.task;
      final tasks = provider.editTask(id: id, taskModel: task);
      emit(TasksStateTaskChanged(tasks: tasks));
    });
  }
}
