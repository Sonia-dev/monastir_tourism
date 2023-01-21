import 'package:flutter/material.dart';

import '../../../models/place/place.dart';
import '../placesScreen.dart';
import 'PlaceCard.dart';

class PlaceCardSlider extends StatelessWidget {
  final List<Place> places;

  PlaceCardSlider({required this.places});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: places.length,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: EdgeInsets.only(right: 20),
            child: PlaceCard(
                title: places[index],
                image: places[index].image,
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => PlaceDetailScreen(place: places[index]),
                    ),);}
            ),
          );
        },
      ),
    );
  }
}