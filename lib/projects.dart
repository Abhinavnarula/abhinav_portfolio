import 'package:abhinav_portfolio/tabBar.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Projects extends StatelessWidget {
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
                  image: 'images/covid19.jpg',
                  title: 'Covid 19 App',
                  description: 'hellornkdl dldfnj ',
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

class ProjectTab extends StatelessWidget {
  String link;
  String title;
  String image;
  String description;

  ProjectTab({this.link, this.title, this.image, this.description});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 8.0,
      child: InkWell(
        onTap: () {
          launch(link);
        },
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            children: <Widget>[
              Expanded(
                flex: 10,
                child: Image.asset(
                  image,
                  width: 100.0,
                  height: 100.0,
                ),
              ),
              Expanded(
                flex: 20,
                child: Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        title,
                        style: TextStyle(
                          fontSize: 35.0,
                        ),
                      ),
                      Text(
                        description,
                        textScaleFactor: 1.1,
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
