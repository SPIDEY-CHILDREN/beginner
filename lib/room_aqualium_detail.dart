import 'package:flutter/material.dart';

class RoomAqualiumDetailPage extends StatefulWidget {
  @override
  _RoomAqualiumDetailPageState createState() => _RoomAqualiumDetailPageState();
}

class _RoomAqualiumDetailPageState extends State<RoomAqualiumDetailPage> {

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async{
        onBackPressed();
        return false;
      },
      child: Scaffold(
        appBar: AppBar(
           leading: IconButton(
            onPressed: (){
              Navigator.pop(context);
            },
            icon: Icon(Icons.keyboard_arrow_left,
              color: Colors.black87,
            ),
          ),
            title: Text('何か水槽の詳細',
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
      ),
    );
  }

  void onBackPressed(){
    Navigator.pop(context);
  }
}
