import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Calculator",
      home: Scaffold(
        appBar: AppBar(
          title: Text('calculator'),
        ),
        body: InputScreen(),
      ),
    );
  }
}

class InputScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new Column(
      children: <Widget>[
        IconButton(
          icon: Icon(Icons.add),
        ),
        IconButton(
          icon: Icon(Icons.clear)
        )
      ],
    );
  }
}

