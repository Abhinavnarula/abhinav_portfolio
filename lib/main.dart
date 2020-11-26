import 'package:abhinav_portfolio/comingSoon.dart';
import 'package:flutter/material.dart';
import 'package:abhinav_portfolio/contacts.dart';
import 'package:abhinav_portfolio/projects.dart';
import 'package:abhinav_portfolio/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Abhinav\'s Portfolio',
      theme: ThemeData(brightness: Brightness.dark
          // primarySwatch: Colors.blue,
          // visualDensity: VisualDensity.adaptivePlatformDensity,
          ),
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
        '/projects': (context) => Projects(),
        '/contacts': (context) => Contacts(),
        '/comingSoon': (context) => ComingSoon(),
      },
    );
  }
}
