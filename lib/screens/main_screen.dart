import 'package:flutter/material.dart';
import 'package:learn_flutter/screens/conversation_page.dart';
import 'package:learn_flutter/screens/discover_page.dart';
import 'package:learn_flutter/screens/people_page.dart';


class MainScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MainScreenState();
  }
}

class _MainScreenState extends State<MainScreen> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _body(),
      bottomNavigationBar: _bottomBar(),
    );
  }

  Widget _body() {
    switch (currentIndex) {
      case 0:
        return Conversations();
      case 1:
        return People();
      case 2:
        return DiscoverPage();
      default:
        return Conversations();
    }
  }

  Widget _bottomBar() {
    return BottomNavigationBar(
      currentIndex: currentIndex,
      elevation: 10,
      onTap: (index) {
        setState(() {
          currentIndex =index;
        });
      },
      items: [
        BottomNavigationBarItem(
          title: Text("message"),
          icon: Icon(
            Icons.message,
            color: Colors.grey,
          ),
          activeIcon: Icon(
            Icons.message,
            color: Colors.black,
          ),
        ),
        BottomNavigationBarItem(
          title: Text("group"),
          icon: Icon(
            Icons.group,
            color: Colors.grey,
          ),
          activeIcon: Icon(
            Icons.message,
            color: Colors.black,
          ),
        ),
        BottomNavigationBarItem(
          title: Text("alarm"),
          icon: Icon(
            Icons.alarm,
            color: Colors.grey,
          ),
          activeIcon: Icon(
            Icons.alarm,
            color: Colors.black,
          ),
        ),
      ],
    );
  }
}
