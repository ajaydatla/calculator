import 'package:flutter/material.dart';

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
//                  Divider(
//                    height: 300.0,
//                  ),
              TextField(
                decoration:
                    InputDecoration.collapsed(hintText: 'enter valuess'),
                keyboardType: TextInputType.number,
                controller: _digitOneController,
                style: TextStyle(
//                      height: 3.0,

                  color: Colors.black,
                  fontSize: 80.0,
//                    textBaseline: TextBaseline.alphabetic
                ),
              ),
//              Divider(
//                height: 200.0,
//                color: Color(5),
//              ),
              new Padding(padding: EdgeInsets.all(80.0)),
              Row(
                children: <Widget>[
                  IconButton(
                    icon: Icon(Icons.add),
                    onPressed: addition,
                    iconSize: 80.0,
                    color: Colors.blue.shade400,
                  ),
                  IconButton(
                    icon: Icon(Icons.indeterminate_check_box),
                    onPressed: substract,
                    iconSize: 80.0,

                    color: Colors.blue.shade400,
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  void addition(){
    setState(() {
      double digitOne = double.parse(_digitOneController.text);
      print(digitOne);
      _digitOneController.text = _digitOneController.text + '+';
    });
  }
  void substract(){
    setState(() {
      double digitOne = double.parse(_digitOneController.text);
      print(digitOne);
      _digitOneController.text = _digitOneController.text + '-';
    });
  }


}

class MainScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomeState();
  }
}
