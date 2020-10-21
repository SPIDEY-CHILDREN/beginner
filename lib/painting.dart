import 'package:flutter/material.dart';
import 'package:beginner_2_app/painting_list.dart';
import 'package:beginner_2_app/painting_detail_1.dart';


class PaintingPage extends StatefulWidget {
  @override
  _PaintingPageState createState() => _PaintingPageState();
}

class _PaintingPageState extends State<PaintingPage> {

  var _paintingList = List<PaintingList>();

  @override
  void initState() {
    _paintingList.add(PaintingList(
      'Scratch Board',
      'scratch_board.jpg',
      PaintingDetailPage(),
    ));
    _paintingList.add(PaintingList(
      'Coloring Book',
      'Coloring_book.jpg',
      PaintingDetailPage(),
    ));
    _paintingList.add(PaintingList(
      'Pencil Drawing',
      'Pencil_drawing.jpeg',
      PaintingDetailPage(),
    ));
    _paintingList.add(PaintingList(
      'こんな感じ',
      'scratch_board.jpg',
      PaintingDetailPage(),
    ));
    _paintingList.add(PaintingList(
      'こんな感じ',
      'scratch_board.jpg',
      PaintingDetailPage(),
    ));
    _paintingList.add(PaintingList(
      'こんな感じ',
      'scratch_board.jpg',
      PaintingDetailPage(),
    ));
    _paintingList.add(PaintingList(
      'こんな感じ',
      'scratch_board.jpg',
      PaintingDetailPage(),
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
          title: Text('Painting',
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
            itemCount: _paintingList.length,
            itemBuilder: (context, index){
              return _paintingList[index];
            },
          ),
        ),
      ),
    );
  }
}