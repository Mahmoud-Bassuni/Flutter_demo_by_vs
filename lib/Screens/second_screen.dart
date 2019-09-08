import 'package:flutter/material.dart';
class SecondScreen extends StatelessWidget {
   final title ;
   SecondScreen(this.title);
   @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      
      home: Scaffold(
        appBar: _renderApp(context),
        body: _renderListView()
      ),
    ); 
  }

Widget _renderApp(context){
   return AppBar(
        automaticallyImplyLeading: true,
        //`true` if you want Flutter to automatically add Back Button when needed,
        //or `false` if you want to force your own back button every where
        title: Text('AppBar Back Button'),
        leading: IconButton(icon:Icon(Icons.arrow_back),
          onPressed:() => Navigator.pop(context, false),
        )
      );
         
 }
 Widget _renderListView(){
   return
   ListView(
          children: <Widget>[
            ListTile(
            title: Text(title.toString()),
            onTap: (){
              print("header1 clicked");
            }
            )
          ],
        );
 }
}