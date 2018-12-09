import 'package:flutter/material.dart';


void main() => runApp(MyApp());


class MyApp extends StatefulWidget {
  @override
    State<StatefulWidget> createState() {
      //Todo: implement
      return _MyAppState();
    }
  }

class _MyAppState extends State<MyApp> {
  List<String> _products = ['Food Tester','cakeone'];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('EasyList'),
        ), // AppBar
        body: Column (
          children: [
            Container(
              margin: EdgeInsets.all(10.0),
              child: RaisedButton(
              onPressed: () {
                setState(() {
                  _products.add("Advance Food test");
                  print("working");
                });
              },
              child: Text('Add Product'),
            ),
          ), // Raisebutton // Container
          Column(
            children: _products
            .map((element) => Card(
              child: Column(
                children: <Widget>[
                  Image.asset('assets/cake.jpg'), // Image pic
                  Text(element)
                ], // <Widget>
              ), // Column
            ))// card
            .toList(),
          ),  // Card),),
        ],
      )),// Scafold // Column
    );// MaterialApp
  }
}
