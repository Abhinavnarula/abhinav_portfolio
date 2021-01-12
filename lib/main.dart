import 'package:abhinav_portfolio/comingSoonPage.dart';
import 'package:flutter/material.dart';
import 'package:abhinav_portfolio/contactPage.dart';
import 'package:abhinav_portfolio/projectPage.dart';
import 'package:abhinav_portfolio/homePage.dart';

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
        '/projects': (context) => ProjectPage(),
        '/contacts': (context) => Contacts(),
        '/comingSoon': (context) => ComingSoon(),
      },
    );
  }
}
