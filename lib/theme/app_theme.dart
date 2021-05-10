import 'package:flutter/material.dart';

const primaryColor = Color(0xFF470047);
const accentColor = const Color(0xFF000000);

ThemeData darkTheme = ThemeData(
  accentColor: Colors.red,
  brightness: Brightness.dark,
  primaryColor: Colors.amber,
  textTheme: TextTheme(
    headline6: TextStyle(
      fontSize: 31.0,
      fontStyle: FontStyle.normal,
      fontFamily: "Poppins",
      color: Colors.white,
    ),
    button: TextStyle(
      fontFamily: "Poppins",
    ),
  ),
);

ThemeData lightTheme = ThemeData(
  accentColor: Colors.pink,
  brightness: Brightness.light,
  primaryColor: Colors.blue,
  textTheme: TextTheme(
    headline6: TextStyle(
      fontSize: 31.0,
      fontStyle: FontStyle.normal,
      fontFamily: "Poppins",
      color: Colors.black,
    ),
    button: TextStyle(
      fontFamily: "Poppins",
    ),
  ),
);
