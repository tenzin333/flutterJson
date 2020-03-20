import 'package:flutter/material.dart';
import 'package:json_eg/screen/home.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Products',
      theme: ThemeData(
        backgroundColor: Colors.white24,
        
      ),
      home: MyHomePage(),
      
    );
  }
}