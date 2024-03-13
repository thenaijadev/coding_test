import 'package:flutter/material.dart';

ThemeData lightTheme() {
  return ThemeData(
    scaffoldBackgroundColor: Colors.white,
    fontFamily: "Multi",
    brightness: Brightness.light,
    colorScheme: const ColorScheme.light(
      brightness: Brightness.light,
      background: Colors.white,
      primary: Color(0xff9395D3),
      secondary: Colors.white,
    ),
    textTheme: ThemeData.light()
        .textTheme
        .apply(bodyColor: Colors.grey[800], displayColor: Colors.black),
    appBarTheme: const AppBarTheme(
        backgroundColor: Color(0xff9395D3),
        elevation: 3,
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.grey),
        titleTextStyle: TextStyle(color: Colors.grey, fontSize: 18)),
  );
}
