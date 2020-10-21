import 'package:flutter/material.dart';

class PaintingDetailPage extends StatefulWidget {
  @override
  _PaintingDetailPageState createState() => _PaintingDetailPageState();
}

class _PaintingDetailPageState extends State<PaintingDetailPage> {

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
        title: Text('何かアートの詳細',
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
          child: Text(
            '詳細求ム',
            style: TextStyle(
              color: Colors.black87,
            ),
          ),
        ),
      ),
    );
  }
}
