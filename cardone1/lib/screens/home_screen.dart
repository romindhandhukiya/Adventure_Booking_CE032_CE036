
import 'package:cardone1/screens/hom.dart';
import 'package:flutter/material.dart';
import 'package:cardone1/widgets/destination_carousel.dart';
import 'package:cardone1/widgets/hotel_carousel.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../account.dart';

class HomeScreen1 extends StatefulWidget {
  @override
  _HomeScreen1State createState() => _HomeScreen1State();
}

class _HomeScreen1State extends State<HomeScreen1> {
  int _currentTab=0;
  int _selectedIndex= 0;
  final screens=[
    home(),
    home(),
    account(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:screens[_currentTab],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentTab,
        onTap: (int value){
          setState(() {
            _currentTab = value;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
              size: 30.0,
            ),
            label: 'Serch',
            // title:SizedBox.shrink(),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              size: 30.0,
            ),
              label: 'Home',
            // title:SizedBox.shrink(),
          ),
          BottomNavigationBarItem(
            icon: CircleAvatar(
              radius: 15.0,
              backgroundImage: AssetImage('assets/images/me.jpg'),
            ),
              label: 'Profile',
            // title:SizedBox.shrink(),
          ),
        ],
      ),
    );
  }
}
