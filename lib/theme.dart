import 'package:flutter/material.dart';

ThemeData theme() {
  return ThemeData(
      primarySwatch: Colors.green,
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
            backgroundColor: Colors.green,
            foregroundColor: Colors.white,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
            minimumSize: Size(double.infinity, 60)),
      ));
}
