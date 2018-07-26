import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(MainScreen());
}

class HomeState extends State<MainScreen> {

  final TextEditingController _digitOneController = new TextEditingController();
  String _oldValue = "old";
  String _value = "" ;
  int _finalAnswer = 0;

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
              new Padding(padding: EdgeInsets.all(40.0)),
              Text(
                _oldValue,
                textAlign: TextAlign.right,
                style: TextStyle(
                  fontSize: 60.0,
                  color: Colors.black26
                ),
              ),
              Text(
                _value,
                textAlign: TextAlign.right,
                style: TextStyle(
                  fontSize: 60.0,

                ),
              ),

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
                    onPressed: () => inputValue(7),
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
                    onPressed: () => inputValue(8),
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
                    onPressed: () => inputValue(9),
                    iconSize: 80.0,


                  ),
                  IconButton(
                    icon: Icon(Icons.add),
                    onPressed: () => addition(),
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
                    onPressed: () => inputValue(4),
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
                    onPressed: () => inputValue(5),
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
                    onPressed: () => inputValue(6),
                    iconSize: 80.0,


                  ),
                  IconButton(
                    icon: Icon(FontAwesomeIcons.minus),
                    onPressed: () => inputValue(9),
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
                    onPressed: () => inputValue(1),
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
                    onPressed: () => inputValue(2),
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
                    onPressed: () => inputValue(3),
                    iconSize: 80.0,


                  ),
                  IconButton(
                    icon: Icon(Icons.clear),
                    onPressed: () => inputValue(9),
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
                    onPressed: () => inputValue(100),
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
                    onPressed: () => inputValue(0),
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
                    onPressed: () => inputValue(10),
                    iconSize: 80.0,


                  ),
                  IconButton(
                    icon: Icon(FontAwesomeIcons.divide),
                    onPressed: () => doAddition(),
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

  void inputValue(int val){
   print(val);

   if(_value == '+') _value = "";

   setState(() {
     _value += val.toString();
     print("vlaue: "+_value);
     _oldValue = '+';
   });
  }

  void addition(){
    print('inside addition');
    print(_value);
    _oldValue = _value;
    _finalAnswer += int.parse(_value);
    print(_finalAnswer);
    setState(() {
      _oldValue;
      _value = '+';
//      _value;
    });
    }

    void doAddition(){
      print("inside doAddition");

      _finalAnswer += int.parse(_value);
      print(_value);
      print(_finalAnswer);
      _value = _finalAnswer.toString();
      setState(() {
        _value;
      });
    }



}

class MainScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomeState();
  }
}
