import 'dart:convert';

import 'package:first_demo_by_vs/Model/photo_model.dart';
import 'package:first_demo_by_vs/Widgets/menu.dart';
import 'package:first_demo_by_vs/Widgets/photo_list.dart';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
class News extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      drawer: MyDrawer(),
      appBar: AppBar(title: Text("hello in new sturcture 2")
      ),
      body: Center(
        child: FutureBuilder(
          future: fetchPhoto(),
          builder: (BuildContext context, AsyncSnapshot snapshot) {
             return Center(
               child: snapshot.hasData ? 
               PhotoList(photos: snapshot.data) 
               : CircularProgressIndicator());
          },),
      ),
    );
  }
} 

Future<List<PhotoModel>> fetchPhoto() async {

    final res = 
    await http.get('http://jsonplaceholder.typicode.com/photos');
     print(res.body);
     final parsedRespons = res.body;
     return compute(parsePhoto,parsedRespons);
}

List<PhotoModel> parsePhoto(String parsedRespons){
final parsed = json.decode(parsedRespons).cast<Map<String,dynamic>>();
 return parsed.map<PhotoModel>((json)=> PhotoModel.fromJson(json)).toList();
}