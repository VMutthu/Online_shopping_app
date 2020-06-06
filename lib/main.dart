import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

import './components/Horiaontal_listview.dart';
import './components/Products.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      /*routes: <String , WidgetBuilder>{
        "./productdetails":(BuildContext context)=> new ProductDetails(),
      },*/
    )
  );
}

class HomePage extends StatefulWidget{
  @override
  _HomePageState createState() => _HomePageState();
    
  }
  
  class _HomePageState extends State<HomePage>{
  @override
  Widget build(BuildContext context) {
  Widget imageCarousel = new Container(
    height: 200.0,
    child: new Carousel(
      boxFit: BoxFit.cover,
      images: [
        AssetImage('assets/images/1.jpg'),
        AssetImage('assets/images/2.jpg'),
        AssetImage('assets/images/3.jpg'),
        AssetImage('assets/images/4.jpg'),
        AssetImage('assets/images/5.jpg'),
      ],
      autoplay: true,
      dotSize: 4.0,
      dotColor: Colors.red,
      indicatorBgPadding: 2.0,
      
      animationCurve: Curves.fastOutSlowIn,
      animationDuration: Duration(milliseconds: 1000),
      ),
  );


    return Scaffold(
      appBar: AppBar(
        elevation: 0.1,
        backgroundColor: Colors.red,
        title: Text("ShopApp"),
        actions: <Widget>[
          new IconButton(icon: Icon(Icons.search, color: Colors.white,), onPressed: (){
            print("search operation not ready now");
          }),
          new IconButton(icon: Icon(Icons.shopping_cart, color: Colors.white,), onPressed: (){
            print("cart operation not ready now");
          })
        ],
      ),
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            new UserAccountsDrawerHeader(accountName: Text("Muthu"), accountEmail: Text("143v.muthu@gmail.com"),
            currentAccountPicture: GestureDetector(
              child: new CircleAvatar(
                backgroundColor: Colors.cyan,
                child: Icon(Icons.person,color: Colors.white,),
              ),
            ),
            decoration: new BoxDecoration(
              color: Colors.red
            ),
            ),
          InkWell(
            onTap: (){},
            child: ListTile(
              title: Text("Home"),
              leading: Icon(Icons.home,color: Colors.red,),
            ),
          ),
          InkWell(
            onTap: (){},
            child: ListTile(
              title: Text("My Account"),
              leading: Icon(Icons.account_balance,color: Colors.red,),
            ),
          ),
          InkWell(
            onTap: (){},
            child: ListTile(
              title: Text("My Product"),
              leading: Icon(Icons.shopping_basket,color: Colors.red,),
            ),
          ),
          InkWell(
            onTap: (){},
            child: ListTile(
              title: Text("Order list"),
              leading: Icon(Icons.shopping_cart,color: Colors.red,),
            ),
          ),
          InkWell(
            onTap: (){},
            child: ListTile(
              title: Text("Settring"),
              leading: Icon(Icons.settings,color: Colors.grey,),
            ),
          ),
          InkWell(
            onTap: (){},
            child: ListTile(
              title: Text("About"),
              leading: Icon(Icons.help_outline,color: Colors.blue,),
            ),
          ),
          InkWell(
            onTap: (){},
            child: ListTile(
              title: Text("Logout"),
              leading: Icon(Icons.lock_open),
            ),
          ),
          ],
        ),
      ),
      body: new ListView(children: <Widget>[
        imageCarousel,
        new Padding(padding: const EdgeInsets.all(8.0),
        child: new Text('Categories'),),

        HorizontalListView(),

        new Padding(padding: const EdgeInsets.all(20.0),
        child: new Text('Recent Products'),),
        Container(
          height: 180.0,
          child: Products(),
        ),
      ],
      ),
    );
  }
}
