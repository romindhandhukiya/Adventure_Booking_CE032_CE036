import 'package:cardone1/databaseManager.dart';
import 'package:cardone1/models/activity_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:cardone1/widgets/destination_carousel.dart';

class Destination {
  String imageUrl;
  String state;
  String name;
  String description;
  List<Activity> activities;

  Destination({
    required this.imageUrl,
    required this.state,
    required this.name,
    required this.description,
    required this.activities,
  });
}

  // List<Activity> activities = [
  //   Activity(
  //     imageUrl: 'assets/images/stmarksbasilica.jpg',
  //     name: 'abc',
  //     type: 'Sightseeing Tour',
  //     startTimes: ['9:00 am', '11:00 am'],
  //     rating: 5,
  //     price: 30,
  //   ),
  //   Activity(
  //     imageUrl: 'assets/images/gondola.jpg',
  //     name: 'Walking Tour and Gonadola Ride',
  //     type: 'Sightseeing Tour',
  //     startTimes: ['11:00 pm', '1:00 pm'],
  //     rating: 4,
  //     price: 210,
  //   ),
  //   Activity(
  //     imageUrl: 'assets/images/murano.jpg',
  //     name: 'Murano and Burano Tour',
  //     type: 'Sightseeing Tour',
  //     startTimes: ['12:30 pm', '2:00 pm'],
  //     rating: 3,
  //     price: 125,
  //   ),
  // ];

    // Destination(
    //   imageUrl: 'assets/images/venice.jpg',
    //   name: 'Venice',
    //   state: 'Italy',
    //   description: 'Visit Venice for an amazing and unforgettable adventure.',
    //   activities: activities,
    // ),
    // Destination(
    //   imageUrl: 'assets/images/paris.jpg',
    //   name: 'Paris',
    //   state: 'France',
    //   description: 'Visit Paris for an amazing and unforgettable adventure.',
    //   activities: activities,
    // ),
    // Destination(
    //   imageUrl: 'assets/images/newdelhi.jpg',
    //   name: 'New Delhi',
    //   state: 'India',
    //   description: 'Visit New Delhi for an amazing and unforgettable adventure.',
    //   activities: activities,
    // ),
    // Destination(
    //   imageUrl: 'assets/images/saopaulo.jpg',
    //   name: 'Sao Paulo',
    //   state: 'Brazil',
    //   description: 'Visit Sao Paulo for an amazing and unforgettable adventure.',
    //   activities: activities,
    // ),
    // Destination(
    //   imageUrl: 'assets/images/newyork.jpg',
    //   name: 'New York',
    //   state: 'United States',
    //   description: 'Visit New York for an amazing and unforgettable adventure.',
    //   activities: activities,
    // ),



