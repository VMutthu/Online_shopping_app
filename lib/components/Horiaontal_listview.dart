import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class HorizontalListView extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Category(imagelocation: 'assets/category/cloth.png',imagecaption: "Shirts",),
          Category(imagelocation: 'assets/category/dress.png',imagecaption: "Dress",),
          Category(imagelocation: 'assets/category/shirt.png',imagecaption: "Formals",),
          Category(imagelocation: 'assets/category/trouser.png',imagecaption: "Pants",),
          Category(imagelocation: 'assets/category/jacket.png',imagecaption: "Jackets",),
        ],
      ),
    );
  }
  
}

class Category  extends StatelessWidget{
  final String imagelocation;
  final String imagecaption;

  Category({this.imagelocation,this.imagecaption});

  @override
  Widget build(BuildContext context) {
    return Padding(padding: const EdgeInsets.all(2.0),
    child: Container(
      width: 100.0,
      child: InkWell(
        onTap: (){},
        child: ListTile(
          title: Image.asset(imagelocation,width: 100.0,height: 80.0,color: Colors.blue,),
          subtitle: Container(alignment: Alignment.topCenter, child: Text(imagecaption,style: TextStyle(color: Colors.black),)),
        ),
      ),
    ),
    );
  }
  }