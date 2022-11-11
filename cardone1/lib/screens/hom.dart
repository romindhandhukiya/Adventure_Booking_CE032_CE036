import 'package:flutter/material.dart';
import 'package:cardone1/widgets/destination_carousel.dart';
import 'package:cardone1/widgets/hotel_carousel.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<home> {
  int _currentTab=0;
  int _selectedIndex= 0;
  List<IconData> _icons = [
    FontAwesomeIcons.sailboat,
    FontAwesomeIcons.cableCar,
    FontAwesomeIcons.umbrellaBeach,
    FontAwesomeIcons.mountainSun,
  ];
  Widget _buildIcon (int index){

    return  Container(
      height: 60.0,
      width: 60.0,
      decoration: BoxDecoration(
        color: Color(0xFFE7EBEE),
        borderRadius: BorderRadius.circular(30.0),
      ),
      child: Icon(
        _icons[index],size: 25.0,
        //color: _selectedIndex == index ? Theme.of(context).primaryColor : Color(0xFFB4C1C4),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
        child: ListView(
        padding: EdgeInsets.symmetric(vertical: 30.0),
    children: <Widget>[
    Padding(
    padding: const EdgeInsets.only(left: 20.0,right:120.0),
    child: Text(
    'What adventures would you like to have?',
    style: TextStyle(
    fontSize: 30.0,
    fontWeight: FontWeight.bold,
    ),
    ),
    ),
    SizedBox(height: 20.0),
    Row(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: _icons.asMap().entries.map(
    (MapEntry map) => _buildIcon(map.key),
    ).toList(),
    ),
    SizedBox(height: 20.0),
    DestinationCarousel(),
    SizedBox(height: 20.0),
    HotelCarousel(),
    ],
    ),
    ),
    );
  }
}
