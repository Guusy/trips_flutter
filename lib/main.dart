import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:trips/review_list.dart';
import 'description_place.dart';
import 'gradient_back.dart';
import 'header_appbar.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    systemNavigationBarColor: Colors.transparent, //<--NavigationBarColor
    statusBarColor: Colors.transparent, //<--StatusBarColor
  ));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Trips',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
          body: Stack(children: <Widget>[
        ListView(
          children: <Widget>[
            DescriptionPlace("Bahamas", 4,
                "Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos, quedando"),
            ReviewList()
          ],
        ),
        HeaderAppbar()
      ])),
    );
  }
}
