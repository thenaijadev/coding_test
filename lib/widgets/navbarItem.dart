import 'package:flutter/material.dart';

BottomNavigationBarItem navbarItem(
    {required Color color, required IconData icon, required String label}) {
  return BottomNavigationBarItem(
    label: label,
    icon: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Icon(
        color: color,
        icon,
      ),
    ),
  );
}
