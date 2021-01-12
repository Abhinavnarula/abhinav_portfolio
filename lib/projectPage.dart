import 'package:abhinav_portfolio/projectTab.dart';
import 'package:abhinav_portfolio/tabBar.dart';
import 'package:flutter/material.dart';

class ProjectPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Tabs(),
          Container(
            padding: EdgeInsets.symmetric(vertical: 30.0, horizontal: 150.0),
            height: MediaQuery.of(context).size.height - 150,
            child: GridView.count(
              childAspectRatio: MediaQuery.of(context).size.width /
                  (MediaQuery.of(context).size.height / 1.5),
              crossAxisCount: 2,
              mainAxisSpacing: 30.0,
              crossAxisSpacing: 30.0,
              children: <Widget>[
                ProjectTab(
                  link:
                      'https://github.com/Abhinavnarula/flutter_bmi_calculator',
                  image: 'images/bmi.png',
                  title: 'BMI Calculator',
                  description:
                      'A BMI Calculator App, built using Flutter. Design inspired from dribbble, this app helps in finding out the BMI index of an individual.',
                ),
                ProjectTab(
                  link: 'https://github.com/Abhinavnarula/covid_19_flutter/',
                  image: 'images/covid19.png',
                  title: 'Covid 19 App',
                  description: 'hellornkdl dldfnj ',
                ),
                ProjectTab(
                  link: 'https://github.com/Abhinavnarula/covid_19_flutter/',
                  image: 'images/clima.png',
                  title: 'Weather App',
                  description: 'hellornkdl dldddddfnj ',
                ),
                // ProjectTab(),
                // ProjectTab(),
                // ProjectTab(),
                // ProjectTab(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}


