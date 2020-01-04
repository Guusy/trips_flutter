import 'package:flutter/material.dart';

class FloatingActionButtonGreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _FloatingActionButtonGreen();
  }
}

class _FloatingActionButtonGreen extends State<FloatingActionButtonGreen> {
  bool fav = false;

  void onPressedFav() {
    String message = "Agregaste a tus favoritos";
    setState(() {
      fav = !fav;
    });
    if (!fav) {
      message = "Lo sacaste de tus favoritos";
    }
    Scaffold.of(context).showSnackBar(SnackBar(
      content: Text(message),
    ));
  }

  @override
  Widget build(BuildContext context) {
    IconData currentIcon = (fav) ? Icons.favorite : Icons.favorite_border;
    return FloatingActionButton(
      backgroundColor: Color(0xFF11DA53),
      mini: true,
      tooltip: "Fav",
      onPressed: onPressedFav,
      child: Icon(currentIcon),
    );
  }
}
