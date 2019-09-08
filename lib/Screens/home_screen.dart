
import 'dart:convert';
import 'dart:math';

import 'package:first_demo_by_vs/Model/photo_model.dart';
import 'package:first_demo_by_vs/Widgets/menu.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
class HomeScreen extends StatefulWidget {
  
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<String> pis = [
    // "https://via.placeholder.com/600/92c952",
    // "https://via.placeholder.com/600/771796",
    // "https://via.placeholder.com/600/24f355",
    // "https://via.placeholder.com/600/d32776",
    // "https://via.placeholder.com/600/f66b97",
    // "https://via.placeholder.com/600/92c952",
    // "https://via.placeholder.com/600/771796",
    // "https://via.placeholder.com/600/24f355",
    // "https://via.placeholder.com/600/d32776",
    // "https://via.placeholder.com/600/f66b97",
    // "https://via.placeholder.com/600/92c952",
    // "https://via.placeholder.com/600/771796",
    // "https://via.placeholder.com/600/24f355",
    // "https://via.placeholder.com/600/d32776",
    // "https://via.placeholder.com/600/f66b97",
    // "https://via.placeholder.com/600/92c952",
    // "https://via.placeholder.com/600/771796",
    // "https://via.placeholder.com/600/24f355",
    // "https://via.placeholder.com/600/d32776",
    // "https://via.placeholder.com/600/f66b97",
  ];
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      drawer: MyDrawer(),
      appBar: AppBar(title: Text("My list")
      ),
      body: Center(
        child: pis.length >0 ? Container(
          width: MediaQuery.of(context).size.width * .9 ,
                  child: ListView.builder(
                    itemCount: pis.length,
                    itemBuilder: (BuildContext context, int index) {
              return _buildMyList(pis[index]);
          },),
        ):CircularProgressIndicator(),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        elevation: 10,
        onPressed: (){
            _addPic();
        },
      ),
    );
  }
  Widget _buildMyList(String image){

return Container(
  padding: EdgeInsets.all(2),
  child: Card(
    elevation: 5,
    child: Image.network(image),
  )
);
  }
  _addPic()
  async{
    int num = Random().nextInt(2);
    num = num == 0 ? 1 :num;
    print(num);
    final res = 
    await http.get('http://jsonplaceholder.typicode.com/photos/$num');
     print(res.body);
     final parsedRespons = jsonDecode(res.body);
      
     final photo = PhotoModel(
       id:parsedRespons['id'],
       url: parsedRespons['url'],
       albumId: parsedRespons['albumId'],
       title: parsedRespons['title'],
       thumbnailUrl: parsedRespons['thumbnailUrl']);
       print(photo);
     setState(() {
       pis.add(photo.url);
     });
     
     //pis.add(res.)
      // Future.delayed(Duration(seconds: 4),(){
      //   print("add pic sccuess");
      // });
  }
} 