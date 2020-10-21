import 'package:flutter/material.dart';

class VaristorPage extends StatefulWidget {
  @override
  _VaristorPageState createState() => _VaristorPageState();
}

class _VaristorPageState extends State<VaristorPage> {
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
        title: Text('Varistor',
          style: TextStyle(
            color: Colors.black87
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
            'Varistor の詳細なリストを表示予定',
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