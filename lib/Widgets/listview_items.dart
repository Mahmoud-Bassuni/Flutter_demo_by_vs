
import 'package:flutter/material.dart';

class ListViewItems extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Card(
          elevation: 20,
          child: ListTile(
            title: Text("Home Screen"),
            onTap: (){
Navigator.of(context).pushNamed('/');
            },
            )
          ),
           Card(
          elevation: 20,
          child: ListTile(
            title: Text("Profile"),
            onTap: (){
Navigator.of(context).pushNamed('/profile');
            },
            )
          ),
           Card(
          elevation: 20,
          child: ListTile(
            title: Text("News"),
            onTap: (){

Navigator.of(context).pushNamed('/news');

            },
            )
          ),
           Card(
          elevation: 20,
          child: ListTile(
            title: Text("Settings"),
            onTap: (){
               Navigator.of(context).pushNamed('/settings');
            },
            )
          )
      ],
    );
  }
}