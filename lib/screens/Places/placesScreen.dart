import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../models/place/place.dart';
import 'widget_places/SliderPlaces.dart';

class PlacesScreen extends StatefulWidget {
  const PlacesScreen({Key? key}) : super(key: key);

  @override
  State<PlacesScreen> createState() => _PlacesScreen();
}

class _PlacesScreen extends State<PlacesScreen> {
  final List<String> titles = [
    'Eiffel Tower',
    'Great Wall of China',
    'Taj Mahal',
    'Sydney Opera House',
    'Statue of Liberty'
  ];

  final List<String> images = [
    'https://images.unsplash.com/photo-1512917774080-9991f1c4c750?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/photo-1513584684374-8bab748fbf90?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/photo-1511339428555-9a9eac2d9dfe?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/photo-1502715681527-9c9b2c1e5c74?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/photo-1501632888096-8f7e8c4e4d4d?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
  ];
  List<Place> places = [
    Place(
        title: "Ribat of Monastir",
        image:
            "https://images.unsplash.com/photo-1512917774080-9991f1c4c750?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
        description:
            "The Ribat of Monastir is a fortified medieval Islamic monastery that dates back to the 8th century AD and is now a UNESCO World Heritage Site"),
    Place(
        title: "Bourguiba Mausoleum",
        image:
            "https://images.unsplash.com/photo-1512917774080-9991f1c4c750?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
        description:
            "The Bourguiba Mausoleum is the final resting place of Habib Bourguiba, the first president of Tunisia"),
    Place(
        title: "Bardo Museum",
        image:
            "https://images.unsplash.com/photo-1512917774080-9991f1c4c750?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
        description:
            "The Bardo Museum is an archaeological museum that has a collection of artifacts from ancient Tunisia"),
    Place(
        title: "Stade Mustapha Ben Jannet",
        image:
            "https://images.unsplash.com/photo-1512917774080-9991f1c4c750?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
        description:
            "Stade Mustapha Ben Jannet is a multi-purpose stadium in Monastir, Tunisia"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            child: Column(children: <Widget>[
      Expanded(
          child: Container(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
            Expanded(
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.all(30),
                  child: Column(
                    children: <Widget>[
                      SizedBox(height: 10),
                      Container(
                        width: double.infinity,
                        height: 200,
                        child: PlaceCardSlider(places: places),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ])))
    ])));
  }
}

class PlaceDetailScreen extends StatelessWidget {
  final Place place;

  PlaceDetailScreen({required this.place});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(place.title),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              width: double.infinity,
              height: 300,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(place.image),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                children: <Widget>[
                  Text(
                    place.description,
                    style: TextStyle(
                      fontSize: 18,
                      letterSpacing: 1.2,
                      wordSpacing: 1.5,
                      height: 1.5,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
