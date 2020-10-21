import 'package:flutter/material.dart';
import 'package:beginner_2_app/fishing.dart';
import 'package:beginner_2_app/interesting_list.dart';
import 'package:beginner_2_app/garden_page.dart';
import 'package:beginner_2_app/painting.dart';
import 'package:beginner_2_app/room_aqualium.dart';
import 'package:beginner_2_app/varistor.dart';
import 'package:beginner_2_app/camp.dart';
import 'package:beginner_2_app/aroma_candles.dart';
import 'package:beginner_2_app/classic_game.dart';
import 'package:beginner_2_app/herbarium.dart';
import 'package:beginner_2_app/Turkeylamp.dart';
import 'package:beginner_2_app/swag.dart';

void main() => runApp(HomeView());

//Home(first) Page
class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  var _interestingList = List<InterestingList>();

  //Home(first) Page 画像追加widget START//
  @override
  void initState() {
    _interestingList.add(InterestingList(
      'Painting',
      'painting.jpg',
      PaintingPage(),
    ));
    _interestingList.add(InterestingList(
      'Room Garden',
      'garden.jpg',
      GardenPage(),
    ));
    _interestingList.add(InterestingList(
      'Room Aquallium',
      'Room_aqualium.jpg',
      RoomAqualiumPage(),
    ));
    _interestingList.add(InterestingList(
      'Varistor',
      'Varistor.jpeg',
      VaristorPage(),
    ));
    _interestingList.add(InterestingList(
      'Aroma Candles',
      'AromaCandles.png',
      AromaCandlesPage(),
    ));
    _interestingList.add(InterestingList(
      'Classic Game',
      'Classic_games.jpg',
      ClassicGamePage(),
    ));
    _interestingList.add(InterestingList(
      'Camp',
      'camp.JPG',
      CampPage(),
    ));
    _interestingList.add(InterestingList(
      'Fishing',
      'Fishing.jpg',
      FishingPage(),
    ));
    _interestingList.add(InterestingList(
      'Herbarium',
      'herbarium.jpg',
      HerbariumPage(),
    ));
    _interestingList.add(InterestingList(
      'Turkey lamp',
      'Turkeylamp.jpg',
      TurkeylampPage(),
    ));
    _interestingList.add(InterestingList(
      'Swag',
      'swag.jpg',
      SwagPage(),
    ));
    _interestingList.shuffle();
    super.initState();
  }
  //Home(first) Page 画像追加widget FINISH//

  Future<void> _onRefresh() async {
    setState(() {
      _interestingList.shuffle();
    });
  }


  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'beginners_app',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Home',
          style: TextStyle(
            color: Colors.black87,
          ),),
          backgroundColor: Colors.white70,
        ),
        body: Container(
          color: Colors.white70,
          width: double.infinity,
          child: RefreshIndicator(
            onRefresh: _onRefresh,
            child: ListView.builder(
              itemCount: _interestingList.length,
              itemBuilder: (context, index){
                return _interestingList[index];
              },
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              title: Text('ホーム'),
              icon: Icon(Icons.home),
              backgroundColor: Colors.white70,
            ),
            BottomNavigationBarItem(
              title: Text('検索'),
              icon: Icon(Icons.search),
              backgroundColor: Colors.white70,
            ),
            BottomNavigationBarItem(
              title: Text('ディスカバー'),
              icon: Icon(Icons.visibility),
              backgroundColor: Colors.white70,
            ),
            BottomNavigationBarItem(
              title: Text('ランキング'),
              icon: Icon(Icons.trending_up),
              backgroundColor: Colors.white70,
            ),
            BottomNavigationBarItem(
              title: Text('マイページ'),
              icon: Icon(Icons.person),
              backgroundColor: Colors.white70,
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.black87,
          unselectedItemColor: Colors.grey,
          backgroundColor: Colors.white70,
          iconSize: 27,
          onTap: _onItemTapped,
          type: BottomNavigationBarType.fixed,
        ),
      ),
    );
  }
}

