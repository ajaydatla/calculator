import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(MainScreen());
}

class HomeState extends State<MainScreen> {

  final TextEditingController _digitOneController = new TextEditingController();


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'calculator',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('calculator'),
          centerTitle: true,
        ),
        body: Container(
          child: ListView(
            children: <Widget>[
              Text(
                ''
              ),
              new Padding(padding: EdgeInsets.all(80.0)),
              Row(
                children: <Widget>[

                  IconButton(
                    icon: new Text(
                      '7',
                      style: new TextStyle(

                          fontSize: 30.0,
                          fontWeight: FontWeight.w800,
                          color: Colors.blue.shade400),
                    ),
                    onPressed: () => addition(7),
                    iconSize: 80.0,


                  ),
                  IconButton(
                    icon: new Text(
                      '8',
                      style: new TextStyle(

                          fontSize: 30.0,
                          fontWeight: FontWeight.w800,
                          color: Colors.blue.shade400),
                    ),
                    onPressed: () => addition(8),
                    iconSize: 80.0,


                  ),
                  IconButton(
                    icon: new Text(
                      '9',
                      style: new TextStyle(

                          fontSize: 30.0,
                          fontWeight: FontWeight.w800,
                          color: Colors.blue.shade400),
                    ),
                    onPressed: () => addition(9),
                    iconSize: 80.0,


                  ),
                  IconButton(
                    icon: Icon(Icons.add),
                    onPressed: () => addition(9),
                    iconSize: 50.0,


                  ),

                ],
              ),
              Row(
                children: <Widget>[

                  IconButton(
                    icon: new Text(
                      '4',
                      style: new TextStyle(

                          fontSize: 30.0,
                          fontWeight: FontWeight.w800,
                          color: Colors.blue.shade400),
                    ),
                    onPressed: () => addition(4),
                    iconSize: 80.0,


                  ),
                  IconButton(
                    icon: new Text(
                      '5',
                      style: new TextStyle(

                          fontSize: 30.0,
                          fontWeight: FontWeight.w800,
                          color: Colors.blue.shade400),
                    ),
                    onPressed: () => addition(5),
                    iconSize: 80.0,


                  ),
                  IconButton(
                    icon: new Text(
                      '6',
                      style: new TextStyle(

                          fontSize: 30.0,
                          fontWeight: FontWeight.w800,
                          color: Colors.blue.shade400),
                    ),
                    onPressed: () => addition(6),
                    iconSize: 80.0,


                  ),
                  IconButton(
                    icon: Icon(FontAwesomeIcons.minus),
                    onPressed: () => addition(9),
                    iconSize: 40.0,
//                    color: Colors.blue,

                  ),

                ],
              ),
              Row(
                children: <Widget>[

                  IconButton(
                    icon: new Text(
                      '1',
                      style: new TextStyle(

                          fontSize: 30.0,
                          fontWeight: FontWeight.w800,
                          color: Colors.blue.shade400),
                    ),
                    onPressed: () => addition(1),
                    iconSize: 80.0,


                  ),
                  IconButton(
                    icon: new Text(
                      '2',
                      style: new TextStyle(

                          fontSize: 30.0,
                          fontWeight: FontWeight.w800,
                          color: Colors.blue.shade400),
                    ),
                    onPressed: () => addition(2),
                    iconSize: 80.0,


                  ),
                  IconButton(
                    icon: new Text(
                      '3',
                      style: new TextStyle(

                          fontSize: 30.0,
                          fontWeight: FontWeight.w800,
                          color: Colors.blue.shade400),
                    ),
                    onPressed: () => addition(3),
                    iconSize: 80.0,


                  ),
                  IconButton(
                    icon: Icon(Icons.clear),
                    onPressed: () => addition(9),
                    iconSize: 50.0,
//                    color: Colors.blue,

                  ),

                ],
              ),
              Row(
                children: <Widget>[

                  IconButton(
                    icon: new Text(
                      '%',
                      style: new TextStyle(

                          fontSize: 30.0,
                          fontWeight: FontWeight.w800,
                          color: Colors.blue.shade400),
                    ),
                    onPressed: () => addition(100),
                    iconSize: 80.0,


                  ),
                  IconButton(
                    icon: new Text(
                      '0',
                      style: new TextStyle(

                          fontSize: 30.0,
                          fontWeight: FontWeight.w800,
                          color: Colors.blue.shade400),
                    ),
                    onPressed: () => addition(0),
                    iconSize: 80.0,


                  ),
                  IconButton(
                    icon: new Text(
                      '.',
                      style: new TextStyle(

                          fontSize: 30.0,
                          fontWeight: FontWeight.w800,
                          color: Colors.blue.shade400),
                    ),
                    onPressed: () => addition(10),
                    iconSize: 80.0,


                  ),
                  IconButton(
                    icon: Icon(FontAwesomeIcons.divide),
                    onPressed: () => addition(9),
                    iconSize: 40.0,
//                    color: Colors.blue,

                  ),

                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  void addition(int val){
   print(val);
  }



}

class MainScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomeState();
  }
}
