import 'package:flutter/material.dart';

//Home(first) Page の画像リストタイル1枚の設定widget //
class InterestingList extends StatelessWidget {

  final String _name;
  final String _picture;
  final Widget _route;

  InterestingList(this._name, this._picture, this._route);

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
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  color: Colors.grey,
                ),
                width: size.width,
                height: (size.width / 16) * 9,
                child: Image.asset(
                  'images/home/$_picture',
                  fit: BoxFit.fill,
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

