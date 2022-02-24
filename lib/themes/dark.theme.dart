// ignore_for_file: prefer_const_constructors, deprecated_member_use

import 'package:flutter/material.dart';

const brightness = Brightness.dark;
const primaryColor = Color(0xFF00C569);
const lightColor = Color(0xFFFFFFFF);
const backgroundColor = Color(0xFFF5F5F5);

ThemeData darkTheme() {
  return ThemeData(
      brightness: brightness,
      textTheme: TextTheme(
          bodyText1: TextStyle(color: Colors.amber),
          button: TextStyle(color: Colors.green)),
      primaryColor: primaryColor,
      accentColor: Colors.white,
      buttonTheme: ButtonThemeData(
        buttonColor: Colors.orange,
        textTheme: ButtonTextTheme.normal,
      ));
}
