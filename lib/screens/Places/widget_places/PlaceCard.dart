
import 'package:flutter/material.dart';

import '../../../models/place/place.dart';
import '../placesScreen.dart';

class PlaceCard extends StatelessWidget {
  final Place title;
  final String image;
  final void Function() onTap;
  PlaceCard({required this.title, required this.image,required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(

      onTap: onTap,

      child: Container(
        width: 200,
        height: 200,
        margin: EdgeInsets.only(bottom: 20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
            image: NetworkImage(image),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: <Widget>[
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(0),
                  gradient: LinearGradient(
                    begin: Alignment.bottomRight,
                    colors: [
                      Colors.black.withOpacity(.8),
                      Colors.black.withOpacity(.0),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: Column(
                children: <Widget>[
                  Text(
                    title.title,
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Row(
                    children: <Widget>[
                      Icon(Icons.star,color: Colors.yellow,),
                      Icon(Icons.star,color: Colors.yellow,),
                      Icon(Icons.star,color: Colors.yellow,),
                      Icon(Icons.star,color: Colors.yellow,),
                      Icon(Icons.star,color: Colors.yellow,),
                      Text("4.5")
                    ],
                  )
                ],
              ),
            ),
          ],
        ),


      ),


      borderRadius: BorderRadius.circular(20),
      splashColor: Colors.green,

    );
  }
}