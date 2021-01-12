import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ProjectTab extends StatelessWidget {
  final String link;
  final String title;
  final String image;
  final String description;

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