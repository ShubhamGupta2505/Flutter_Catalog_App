import 'package:flutter/material.dart';
    
void main(){
  runApp(myApp());
}

class myApp extends StatelessWidget {
  const myApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int days = 34;
    String name = "Coddepur";
    double pi = 3.14;
    bool isMale = true;

    return MaterialApp(
      home: Material(
        child: Center(
          child: Container(
            child: Text("Welcome to $days days of Flutter by $name"),
          ),
        ),
      ),
    );
  }
}

    