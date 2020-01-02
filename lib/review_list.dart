import 'package:flutter/material.dart';
import 'package:trips/review.dart';

class ReviewList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Review("Gonzalo gras cantou","2 review - 5 photos ","un re comentario"),
        Review("Gonzalo gras cantou","2 review - 5 photos ","un re comentario"),
        Review("Gonzalo gras cantou","2 review - 5 photos ","un re comentario"),
        Review("Gonzalo gras cantou","2 review - 5 photos ","un re comentario"),
        Review("Gonzalo gras cantou","2 review - 5 photos ","un re comentario"),
        Review("Gonzalo gras cantou","2 review - 5 photos ","un re comentario"),
      ],
    );
  }

}