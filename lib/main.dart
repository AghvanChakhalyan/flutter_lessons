import 'package:flutter/material.dart';
import 'package:learn_flutter/screens/main_screen.dart';

void main() {
  runApp (MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Message App",
      debugShowCheckedModeBanner: false,
      routes: {
        "/": (context) => MainScreen(),
      },
      theme: ThemeData(
        primaryColor: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
    );
  }
}

