import "package:flutter/material.dart";

class Themes {
  final lightTheme = ThemeData.light().copyWith(
      textTheme: const TextTheme(bodySmall: TextStyle(color: Colors.red)),
      dropdownMenuTheme: const DropdownMenuThemeData(
          textStyle: TextStyle(fontSize: 10, color: Colors.red)));
}
