import 'package:flutter/material.dart';

//Home(first) Page の画像リストタイル1枚の設定widget //
class RoomAqualiumList extends StatelessWidget {

  final String _name;
  final String _picture;
  final Widget _route;

  RoomAqualiumList(this._name, this._picture, this._route);

  @override
  Widget build(BuildContext context) {

    final Size size = MediaQuery.of(context).size;

    return InkWell(
      onTap: (){
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => _route),
        );
      },
      child: Card(
        child: Stack(
          alignment: Alignment.bottomLeft,
          children: [
            Container(
              width: size.width,
              height: (size.width / 16) * 9,
              child: Image.asset(
                'images/RoomAqualium/$_picture',
                fit: BoxFit.fill,
                errorBuilder:
                    (BuildContext context, Object exception, StackTrace stackTrace) {
                  // Appropriate logging or analytics, e.g.
                  // myAnalytics.recordError(
                  //   'An error occurred loading "https://example.does.not.exist/image.jpg"',
                  //   exception,
                  //   stackTrace,
                  // );
                  return Center(
                    child: Text(
                      '画像が出ないよぉ',
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  );
                },
              ),
            ),
            Container(
              padding: EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                color: Colors.blueGrey,
              ),
              child: Text(
                _name,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  background: Paint()..color = Colors.blueGrey,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}