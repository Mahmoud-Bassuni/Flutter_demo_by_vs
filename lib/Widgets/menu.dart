import 'package:first_demo_by_vs/Widgets/listview_items.dart';
import 'package:flutter/material.dart';
class  MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
       child: Container(
         color: Theme.of(context).primaryColor,
         child: ListView(
         children: <Widget>[
           UserAccountsDrawerHeader(
             accountEmail: Text("test@yahoo.com"), 
             accountName: Text("Mahmoud"),
             currentAccountPicture: Image.asset("assets/images/profile.jpg"),
           ),
           SizedBox(
            height: 5,
           ),
           Divider(
             color: Colors.white,
           ),
           ListViewItems(),
         ],
       ),
       )
    );
  }
}