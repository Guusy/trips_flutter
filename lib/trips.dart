import 'package:flutter/material.dart';
import 'package:trips/pages/profile.dart';
import 'package:trips/pages/search.dart';
import 'pages/home.dart';

class Trips extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _Trips();
  }
}

class _Trips extends State<Trips> {
  int selectedTab = 1;

  List<Widget> tabs = [Home(), Search(), Profile()];

  void onTapSection(int indexSection) {
    setState(() {
      selectedTab = indexSection;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: tabs[selectedTab],
        bottomNavigationBar: Theme(
          data: Theme.of(context)
              .copyWith(canvasColor: Colors.white, primaryColor: Colors.purple),
          child: BottomNavigationBar(
            onTap: onTapSection,
            currentIndex: selectedTab,
            items: [
              BottomNavigationBarItem(
                  icon: Icon(Icons.home), title: Text("Home")),
              BottomNavigationBarItem(
                  icon: Icon(Icons.search), title: Text("Search")),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person), title: Text("Profile")),
            ],
          ),
        ));
  }
}
