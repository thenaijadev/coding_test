import 'package:coding_test/screens/add_task_screen.dart';
import 'package:coding_test/screens/completed_task_screen.dart';
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
        return MaterialPageRoute(
          builder: (_) => const EditTaskScreen(),
        );
      case Routes.completedTasks:
        return MaterialPageRoute(
          builder: (_) => const CompletedTaskScreen(),
        );
      default:
        return MaterialPageRoute(
          builder: (_) => const ErrorScreen(),
        );
    }
  }
}
