import 'package:flutter/material.dart';

class AromaCandlesPage extends StatefulWidget {
  @override
  _AromaCandlesPageState createState() => _AromaCandlesPageState();
}

class _AromaCandlesPageState extends State<AromaCandlesPage> {
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
        title: Text('Aroma Candles',
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
            'Aroma Candles の詳細なリストを表示予定',
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