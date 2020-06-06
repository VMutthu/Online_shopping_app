import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:online_shopping_app/pages/product_details.dart';




class Products extends StatefulWidget{
  @override
  _ProductsState createState() => _ProductsState();
}
class _ProductsState extends State<Products>{
  List data;
  String url="https://ptutorials.000webhostapp.com/online_shop/list_product_item.php";


  Future<List> getjson() async{
    var response = await http.get(url);
    //print(response.body);
    setState(() {
      data=null;
      data = json.decode(response.body);
     // print(data);
    });
    return data;
  }

   
  @override
  void initState(){
    super.initState();
    this.getjson();
  }
  @override
  Widget build(BuildContext context) {
   return Container(
     margin: const EdgeInsets.only(top: 10.0, left: 10.0),
     child: new Column(
       children: <Widget>[
         
          
          
           new Expanded(
             child: FutureBuilder<List>(
             future: getjson(),
             builder: (BuildContext context, AsyncSnapshot<List> snapshot){
             if (snapshot.hasData) {
                 return Container(
                child: GridView.count(
                  crossAxisCount: 1,
                  scrollDirection: Axis.horizontal,
                  children: snapshot.data.map((value){
                      return Container(
                      alignment: Alignment.center,
                      margin: const EdgeInsets.all(8.0),
                      decoration: new BoxDecoration(border: Border.all(color: Colors.black),),
                      child: new Column(
                        children: <Widget>[
                          new Card(
                            child: new InkResponse(
                              onTap: () => Navigator.of(context).push(new MaterialPageRoute(builder: (context) => new ProductDetails(value['prod_name']))),
                              child: new Column(
                                children: <Widget>[
                                  new Row(
                                    children: <Widget>[
                                      Container(
                                         width: MediaQuery.of(context).size.width /2.5,
                                         height: 100,
                                         decoration: BoxDecoration(
                                         image: DecorationImage(
                                         fit: BoxFit.fitWidth,
                                         image: NetworkImage('https://ptutorials.000webhostapp.com/online_shop/'+value['prod_img']),
                                          ),
                                        ),
                                      )
                                    ]
                                  ),
                                  new Row(
                                    children: <Widget>[
                                    new Text("Product Name:"),
                                    new Text(value['prod_name']),
                                    ]
                                  ),
                                  new Row(
                                    children: <Widget>[
                                    new Text('Price: '),
                                    new Text(value['prod_price']),
                                    ]
                                  ),
                                  
                                ],
                              ),
                            ),
                            
                          ),
                        ],
                      ),
                    );
                    
                    
                  }).toList(),
                  )
                  );
               
             }else if (snapshot.hasError) {
               print(snapshot.error);
             }
             return CircularProgressIndicator();
           }),
             ),
       ],
     ),
   );
  }

}