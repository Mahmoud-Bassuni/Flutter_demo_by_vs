
 import 'package:flutter/material.dart';

class PhotoList extends StatelessWidget {
  final photos;
  PhotoList({this.photos});
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: photos.length,
      itemBuilder: (BuildContext context, int index) {
        return Container(
          child: Image.network(photos[index].url)
          );
    },
    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 6)
      ,);
  }
}