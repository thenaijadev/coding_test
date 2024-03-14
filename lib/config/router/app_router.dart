import 'package:coding_test/models/task_model.dart';
import 'package:coding_test/screens/add_task_screen.dart';
import 'package:coding_test/screens/edit_task.dart';
import 'package:coding_test/screens/todos_screen.dart';
import 'package:flutter/material.dart';

import '../../core/widgets/error_screen.dart';
import 'routes.dart';

class AppRouter {
  Route onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case Routes.home:
        return MaterialPageRoute(
          builder: (_) => const TodosScreen(),
        );
      case Routes.addTask:
        return MaterialPageRoute(
          builder: (_) => const AddTaskScreen(),
        );
      case Routes.editTask:
        var task = routeSettings.arguments as TaskModel;
        return MaterialPageRoute(
          builder: (_) => EditTaskScreen(task: task),
        );

      default:
        return MaterialPageRoute(
          builder: (_) => const ErrorScreen(),
        );
    }
  }
}
