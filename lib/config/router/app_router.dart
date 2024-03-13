import 'package:coding_test/screens/add_task_screen.dart';
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
      default:
        return MaterialPageRoute(
          builder: (_) => const ErrorScreen(),
        );
    }
  }
}
