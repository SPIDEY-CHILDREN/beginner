import 'package:flutter/material.dart';
import 'package:beginner_2_app/room_aqualium_list.dart';
import 'package:beginner_2_app/room_aqualium_detail.dart';


class RoomAqualiumPage extends StatefulWidget {
  @override
  _RoomAqualiumPageState createState() => _RoomAqualiumPageState();
}

class _RoomAqualiumPageState extends State<RoomAqualiumPage> {

  var _roomAqualiumList = List<RoomAqualiumList>();

  @override
  void initState() {
    _roomAqualiumList.add(RoomAqualiumList(
      'Aqualium',
      'Room_aqualium.jpg',
      RoomAqualiumDetailPage(),
    ));
    _roomAqualiumList.add(RoomAqualiumList(
      'Room biotope',
      'Room_biotope.jpg',
      RoomAqualiumDetailPage(),
    ));
    _roomAqualiumList.add(RoomAqualiumList(
      'Botle aqualium',
      'botle_aqualium.jpg',
      RoomAqualiumDetailPage(),
    ));

    super.initState();
  }
  //Home(first) Page 画像追加widget FINISH//

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: (){
              Navigator.pop(context);
            },
            icon: Icon(Icons.keyboard_arrow_left,
              color: Colors.black87,
            ),
          ),
          title: Text('Room Aquarium',
            style: TextStyle(
              color: Colors.black87,
            ),
          ),
          backgroundColor: Colors.white70,
        ),
        body: Container(
          color: Colors.white70,
          width: double.infinity,
          child: ListView.builder(
            itemCount: _roomAqualiumList.length,
            itemBuilder: (context, index){
              return _roomAqualiumList[index];
            },
          ),
        ),
      ),
    );
  }
}