import 'package:flutter/material.dart';
import 'dart:convert';

class MyHomePage  extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage > {
  List data;
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: Text('FlutterJson')
      
      ),
      body: Center(
        child: new FutureBuilder( 
     
        future: DefaultAssetBundle
                .of(context)
                .loadString('load_json/products.json'),
         builder: ( context,  snapshot) {
            var myData = json.decode(snapshot.data.toString());
          
            return ListView.builder(itemBuilder: (BuildContext context,int index){
              return  new Card(
                    child: ListTile(
                      onTap: (){
                        
                      },//item display


                      leading: Image.network(myData[index]['imgUrl']),
                      trailing: IconButton(icon: Icon(Icons.shopping_cart), onPressed: null),
                      title: Text(myData[index]['name'],
                      style: TextStyle(color: Colors.black),)
                    ),
                );



            },
            itemCount: myData==null ? 0:myData.length,
            );

         },
        ),
      ),
      
    );
  }
}