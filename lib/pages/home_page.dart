// import 'dart:html';

import 'package:flutter/material.dart';

import '../widgets/drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int days = 34;
    String name = "Coddepur";
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Catalog App",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Container(
        height: 100,
        width: 100,
        color: Colors.green,
      ),
      drawer: MyDrawer(),
    );
  }
}
