import 'package:coding_test/config/router/routes.dart';
import 'package:coding_test/core/widgets/text_widget.dart';
import 'package:coding_test/widgets/bottom_nav_bar.dart';
import 'package:coding_test/widgets/todos_widget.dart';
import 'package:flutter/material.dart';

class TodosScreen extends StatefulWidget {
  const TodosScreen({super.key});

  @override
  State<TodosScreen> createState() => _TodosScreenState();
}

class _TodosScreenState extends State<TodosScreen> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    const TodosWidget(),
    const Center(child: Text('Settings Page')),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).colorScheme;
    return Scaffold(
      body: _pages[_selectedIndex],
      backgroundColor: const Color.fromARGB(255, 219, 222, 252),
      appBar: AppBar(
        shadowColor: Colors.black,
        elevation: 4,
        centerTitle: false,
        title: TextWidget(
          text: "TODO APP",
          fontWeight: FontWeight.bold,
          color: theme.background,
          fontSize: 24,
        ),
        actions: [Image.asset("images/calendar.png")],
      ),
      floatingActionButton: Transform.translate(
        offset: const Offset(-10, -20),
        child: Transform.scale(
          scale: 1.3,
          child: FloatingActionButton(
            shape: const CircleBorder(),
            onPressed: () {
              Navigator.pushNamed(context, Routes.addTask);
            },
            child: const Icon(Icons.add),
          ),
        ),
      ),
      bottomNavigationBar: bottomNavigationBar(
          onTap: _onItemTapped, theme: theme, selectedIndex: _selectedIndex),
    );
  }
}
