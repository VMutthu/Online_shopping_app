import 'package:flutter/material.dart';
class ProductDetails extends StatelessWidget {
  var name;
  @override
  ProductDetails(this.name);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.1,
        backgroundColor: Colors.red,
        title: Text(name),
        actions: <Widget>[
          new IconButton(icon: Icon(Icons.search, color: Colors.white,), onPressed: (){
            print("search operation not ready now");
          }),
          new IconButton(icon: Icon(Icons.shopping_cart, color: Colors.white,), onPressed: (){
            print("cart operation not ready now");
          })
        ],
      ),
      
    );
  }
}