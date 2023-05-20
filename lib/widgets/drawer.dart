import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final imageUrl =
        "https://github.com/ShubhamGupta2505/React_Starter_Basic/blob/main/nick.jpg?raw=true";
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                margin: EdgeInsets.zero,
                accountName: Text("Shubham Gupta"),
                accountEmail: Text("shubham3nemo@gmail.com"),
                currentAccountPicture: Image.network(imageUrl),
              ))
        ],
      ),
    );
  }
}
