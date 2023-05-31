// import 'dart:typed_data';

// import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:hello_rectangle/pages/home_page.dart';
import 'package:hello_rectangle/pages/login_page.dart';
import 'package:hello_rectangle/utils/routes.dart';
import 'package:hello_rectangle/widgets/themes.dart';
// import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: HomePage(),
      themeMode: ThemeMode.light,
      theme: MyTheme.lightTheme(context),
      darkTheme: MyTheme.darkTheme(context),

      debugShowCheckedModeBanner: false,
      initialRoute: MyRoutes.loginRoute,
      routes: {
        "/": (context) => LoginPage(),
        MyRoutes.homeRoute: (context) => HomePage(),
        MyRoutes.loginRoute: (context) => LoginPage(),
      },
    );
  }
}
