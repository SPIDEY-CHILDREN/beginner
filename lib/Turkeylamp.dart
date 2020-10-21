import 'package:flutter/material.dart';

class TurkeylampPage extends StatefulWidget {
  @override
  _TurkeylampPageState createState() => _TurkeylampPageState();
}

class _TurkeylampPageState extends State<TurkeylampPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: (){
            Navigator.pop(context);
          },
          icon: Icon(Icons.keyboard_arrow_left,
            color: Colors.black87,
          ),
        ),
        title: Text('Turkey lamp',
          style: TextStyle(
            color: Colors.black87,
          ),
        ),
        backgroundColor: Colors.white70,
      ),
      body: Container(
        color: Colors.white70,
        width: double.infinity,
        child: Center(
          child:
          Text(
            'トルコランプの種類を掲載予定\n'
            'トルコ風呂ではないのであしからず',
            style: TextStyle(
              color: Colors.black87,
              fontSize: 18,
            ),
          ),
        ),
      ),
    );
  }
}