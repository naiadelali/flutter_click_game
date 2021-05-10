import 'package:flutter/material.dart';

const brightness = Brightness.light;
const primaryColor = Color(0xFF470047);
const accentColor = const Color(0xFF000029);

ThemeData appTheme() {
  return ThemeData(
    brightness: brightness,
    primaryColor: primaryColor,
    accentColor: accentColor,
    buttonColor: accentColor,
    buttonTheme: ButtonThemeData(
      buttonColor: Color(0xffff914d), // Background color (orange in my case).
      textTheme: ButtonTextTheme.accent, // Text color
    ),
    textTheme: new TextTheme(
      button: TextStyle(
        fontFamily: "Poppins",
        color: Colors.white,
      ),
      caption: TextStyle(
        fontFamily: "Poppins",
      ),
      headline1: TextStyle(
        fontSize: 72.0,
        fontWeight: FontWeight.bold,
        fontFamily: "Poppins",
      ),
      headline6: TextStyle(
        fontSize: 31.0,
        fontStyle: FontStyle.normal,
        fontFamily: "Poppins",
        color: Colors.white,
      ),
      headline5: TextStyle(
        fontSize: 31.0,
        fontStyle: FontStyle.normal,
        color: Colors.white,
        fontFamily: "Poppins",
      ),
      bodyText2: TextStyle(fontSize: 14.0, fontFamily: 'Hind'),
    ),
  );
}
