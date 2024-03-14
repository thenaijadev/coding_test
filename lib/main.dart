import 'package:coding_test/bloc/tasks_bloc.dart';
import 'package:coding_test/providers/tasks_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'config/router/app_router.dart';
import 'config/router/routes.dart';
import 'config/theme/light_theme.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  appInitialization();
  runApp(const MyApp());
}

appInitialization() async {}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final appRouter = AppRouter();
    return GestureDetector(
      onTap: () {
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: BlocProvider(
        create: (context) => TasksBloc(provider: TasksProvider()),
        child: MaterialApp(
          theme: lightTheme(),
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          initialRoute: Routes.home,
          onGenerateRoute: appRouter.onGenerateRoute,
        ),
      ),
    );
  }
}
