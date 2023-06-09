import 'package:flutter/material.dart';

class MyTheme {
  static ThemeData lightTheme(BuildContext context) => ThemeData(
        primarySwatch: Colors.deepPurple,
        // fontFamily: GoogleFonts.lato().fontFamily,
        appBarTheme: AppBarTheme(
          color: Colors.white,
          elevation: 0.0,
          iconTheme: IconThemeData(color: Colors.black),
        ),
        // textTheme: Theme.of(context).textTheme
      );

  static ThemeData darkTheme(BuildContext context) => ThemeData(
        brightness: Brightness.dark,
        // textTheme: Theme.of(context).textTheme
      );

  static Color creamColor = Color(0xfff5f5f5);
  static Color darkBluisColor = Color(0xff403b58);
}
