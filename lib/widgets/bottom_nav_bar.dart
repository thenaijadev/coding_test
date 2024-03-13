import 'package:coding_test/widgets/navbarItem.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

BottomNavigationBar bottomNavigationBar(
    {required void Function(int) onTap,
    required theme,
    required int selectedIndex}) {
  return BottomNavigationBar(
    selectedFontSize: 10,
    unselectedFontSize: 10,
    backgroundColor: const Color.fromARGB(255, 255, 255, 255),
    onTap: onTap,
    items: [
      navbarItem(
          color: selectedIndex == 0 ? theme.primary : const Color(0xff8B8787),
          icon: CupertinoIcons.list_bullet,
          label: "All"),
      navbarItem(
          color: selectedIndex == 1 ? theme.primary : const Color(0xff8B8787),
          icon: Icons.check,
          label: "Completed"),
    ],
  );
}
