import 'package:flutter/material.dart';

class SwagPage extends StatefulWidget {
  @override
  _SwagPageState createState() => _SwagPageState();
}

class _SwagPageState extends State<SwagPage> {
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
        title: Text('Swag',
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
            '枯れの美学',
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