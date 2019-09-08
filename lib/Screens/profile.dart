import 'package:first_demo_by_vs/Widgets/menu.dart';
import 'package:flutter/material.dart';
class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      drawer: MyDrawer(),
      appBar: AppBar(title: Text("hello in new sturcture 2")
      ),
      body: Center(
        child: Text("Profile"),
      ),
    );
  }
} 