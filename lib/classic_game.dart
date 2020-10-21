import 'package:flutter/material.dart';

class ClassicGamePage extends StatefulWidget {
  @override
  _ClassicGamePageState createState() => _ClassicGamePageState();
}

class _ClassicGamePageState extends State<ClassicGamePage> {
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
        title: Text('Classic Games',
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
              '色々なClassic Gameを紹介予定\n'
              '乞うご期待！！！',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.black87,
            ),
          ),
        ),
      ),
    );
  }
}