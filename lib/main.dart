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
              new Padding(padding: EdgeInsets.all(50.0)),
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

                  iconButton(7),
                  iconButton(8),
                  iconButton(9),
                  IconButton(
                    icon: Icon(Icons.add),
                    onPressed: () => addition(),
                    iconSize: 50.0,
                  ),

                ],
              ),
              Row(
                children: <Widget>[
                  iconButton(4),
                  iconButton(5),
                  iconButton(6),
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
                  iconButton(1),
                  iconButton(2),
                  iconButton(3),
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
                  iconButton(100),
                  iconButton(0),
                  iconButton(10),
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
        _finalAnswer = 0;
      });

    }

    Widget iconButton(int digit){
     return IconButton(
        icon: new Text(
          digit.toString(),
          style: new TextStyle(

              fontSize: 30.0,
              fontWeight: FontWeight.w800,
              color: Colors.blue.shade400),

        ),
        onPressed: () => inputValue(digit),
        iconSize: 70.0,


      );
    }



}

class MainScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomeState();
  }
}
