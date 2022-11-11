import 'dart:core';

import 'package:cardone1/models/activity_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cardone1/models/destination_model.dart';
import 'package:cardone1/screens/destination_screen.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class DestinationCarousel extends StatefulWidget {
  @override
  _DestinationCarouselState createState() => _DestinationCarouselState();
}

class _DestinationCarouselState extends State<DestinationCarousel> {

  String Name = '';
  String State='';
  String ImageUrl='';
  String Description='';
  String rname='';
  String photo='';
  String price='';
  String agelimit='';
  String starttime='';
  String endtime='';

  void initState() {
    super.initState();

    _loadNameFromDB();
  }

  List<Destination> destinations=[];
  List<Activity> activities=[];
  void _loadNameFromDB() async {
          FirebaseFirestore.instance
              .collection('places')
              .doc('1').collection('adventures').doc('1')
              .get()
              .then((snapshot) {
            setState(() {
              rname=snapshot.data()?['name'];
              price=snapshot.data()?['price'];
              photo=snapshot.data()?['photo'];
              starttime=snapshot.data()?['starttime'];
              endtime=snapshot.data()?['endtime'];
              agelimit=snapshot.data()?['agelimit'];
              setState(() {
                activities.add(Activity(imageUrl: photo, name: rname, starttime: starttime, endtime: endtime, price: price,agelimit: agelimit));
              });

            });
          });

          FirebaseFirestore.instance
              .collection('places')
              .doc('1').collection('adventures').doc('2')
              .get()
              .then((snapshot) {
            setState(() {
              rname=snapshot.data()?['name'];
              price=snapshot.data()?['price'];
              photo=snapshot.data()?['photo'];
              starttime=snapshot.data()?['starttime'];
              endtime=snapshot.data()?['endtime'];
              agelimit=snapshot.data()?['agelimit'];
              setState(() {
                activities.add(Activity(imageUrl: photo, name: rname, starttime: starttime, endtime: endtime, price: price,agelimit: agelimit));
              });

            });
          });

          FirebaseFirestore.instance
              .collection('places')
              .doc('1').collection('adventures').doc('3')
              .get()
              .then((snapshot) {
            setState(() {
              rname=snapshot.data()?['name'];
              price=snapshot.data()?['price'];
              photo=snapshot.data()?['photo'];
              starttime=snapshot.data()?['starttime'];
              endtime=snapshot.data()?['endtime'];
              agelimit=snapshot.data()?['agelimit'];
              setState(() {
                activities.add(Activity(imageUrl: photo, name: rname, starttime: starttime, endtime: endtime, price: price,agelimit: agelimit));
              });

            });
          });

          FirebaseFirestore.instance
              .collection('places')
              .doc('Manali').collection('adventures').doc('1')
              .get()
              .then((snapshot) {
            setState(() {
              rname=snapshot.data()?['name'];
              price=snapshot.data()?['price'];
              photo=snapshot.data()?['photo'];
              starttime=snapshot.data()?['starttime'];
              endtime=snapshot.data()?['endtime'];
              agelimit=snapshot.data()?['agelimit'];
              setState(() {
                activities.clear();
                activities.add(Activity(imageUrl: photo, name: rname, starttime: starttime, endtime: endtime, price: price,agelimit: agelimit));
              });

            });
          });

          FirebaseFirestore.instance
              .collection('places')
              .doc('Manali').collection('adventures').doc('paragliding')
              .get()
              .then((snapshot) {
            setState(() {
              rname=snapshot.data()?['name'];
              price=snapshot.data()?['price'];
              photo=snapshot.data()?['photo'];
              starttime=snapshot.data()?['starttime'];
              endtime=snapshot.data()?['endtime'];
              agelimit=snapshot.data()?['agelimit'];
              setState(() {
                activities.add(Activity(imageUrl: photo, name: rname, starttime: starttime, endtime: endtime, price: price,agelimit: agelimit));
              });

            });
          });

          FirebaseFirestore.instance
              .collection('places')
              .doc('1')
              .get()
              .then((snapshot) {
            setState(() {
              Name = snapshot.data()?['name'];
              State = snapshot.data()?['state'];
              ImageUrl = snapshot.data()?['image'];
              Description = snapshot.data()?['description'];
              setState(() {
                destinations.add(Destination(imageUrl: ImageUrl,
                    state: State.toString(),
                    name: Name,
                    description: Description,
                    activities: activities));
              });
            });
          });

          FirebaseFirestore.instance
              .collection('places')
              .doc('Manali')
              .get()
              .then((snapshot) {
            setState(() {
              Name = snapshot.data()?['name'];
              State = snapshot.data()?['state'];
              ImageUrl = snapshot.data()?['image'];
              Description = snapshot.data()?['description'];
              setState(() {
                destinations.add(Destination(imageUrl: ImageUrl,
                    state: State.toString(),
                    name: Name,
                    description: Description,
                    activities: activities));
              });
            });
          });

          FirebaseFirestore.instance
              .collection('places')
              .doc('2')
              .get()
              .then((snapshot) {
            setState(() {
              Name = snapshot.data()?['name'];
              State = snapshot.data()?['state'];
              ImageUrl = snapshot.data()?['image'];
              Description = snapshot.data()?['description'];
              setState(() {
                destinations.add(Destination(imageUrl: ImageUrl,
                    state: State.toString(),
                    name: Name,
                    description: Description,
                    activities: activities));
              });
            });
          });

  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                'Top Destinations',
                style: TextStyle(
                    fontSize: 22.0,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.5),
              ),
              Text('',
                style: TextStyle(
                  color: Theme.of(context).primaryColor,
                  fontSize: 16.0,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 1.0,
                ),
              ),
            ],
          ),
        ),
        Container(
          height: 300.0,

          child: ListView.builder(
            scrollDirection: Axis.horizontal,
              itemCount: destinations.length,
              itemBuilder: (BuildContext context, int index){
              Destination destination = destinations[index];
                return GestureDetector(
                    onTap: () => Navigator.push((context), MaterialPageRoute(builder: (_) => DestinationScreen(destination: destination,))),
                  child: Container(
                  margin: EdgeInsets.all(10.0),
                  width: 210.0,
                  child: Stack(
                    alignment: Alignment.topCenter,
                    children: <Widget>[
                      Positioned(
                        bottom:15.0,
                        child: Container(
                          height: 120.0,
                          width: 200.0,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                 '4 activities',
                                  style: TextStyle(
                                      fontSize: 15.0,
                                      fontWeight: FontWeight.w600,
                                      letterSpacing: 1.2,
                                  ),
                                ),
                                Text(
                                  destination.description,
                                  style: TextStyle(color: Colors.grey, fontSize:12.0),
                                ),
                            ],
                            ),
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20.0),
                          boxShadow: [
                            BoxShadow(
                            color: Colors.black,
                            offset: Offset(0.0, 2.0),
                            blurRadius: 6.0,
                          ),
                        ],
                        ),
                        child: Stack(
                          children: <Widget>[
                            Hero(
                              tag: destination.imageUrl,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10.0),
                               child: Image(
                                height: 180.0,
                                width: 180.0,
                                image: NetworkImage(destination.imageUrl),
                                fit: BoxFit.cover,
                              ),
                              ),
                            ),
                            Positioned(
                              left: 10.0,
                              bottom: 10.0,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                  destination.name,
                                  style: TextStyle(
                                      fontSize: 24.0,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600,
                                    letterSpacing: 1.2,
                                  ),
                                ),
                                Row(
                                  children: <Widget>[
                                    Icon(
                                      FontAwesomeIcons.locationArrow,
                                      size: 10.0,
                                      color: Colors.white,
                                    ),
                                    SizedBox(width:5.0),
                                    Text(
                                      destination.state,
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ],
                                ),
                              ],
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                )
                );
              },
          ),
        ),
      ],
    );
  }
}
