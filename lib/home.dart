import 'dart:async';
import 'package:flutter/material.dart';
import 'package:abhinav_portfolio/tabBar.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String actualString = 'Hi \nI\'m Abhinav Narula, \na Software Developer...';
  String updatedString = '';
  int _len;
  int _index;
  bool isDone;
  Timer timer;
  @override
  void initState() {
    _index = -1;
    _len = actualString.length;
    isDone = true;
    timer = Timer.periodic(Duration(milliseconds: 100), (timer) {
      if (isDone) {
        _index++;
        if (_index > _len) {
          _index--;
          isDone = false;
        }
      }
      setState(() {
        updatedString = actualString.substring(0, _index);
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          launch(
            'https://drive.google.com/file/d/1nu4Y3AQ69HjuuZEUaivUnKuQ2L8rMVTh/view?usp=sharing',
          );
        },
        label: Text('RESUME'),
        icon: Icon(Icons.download_sharp),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Tabs(),
          Container(
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.symmetric(
              horizontal: 150.0,
              vertical: 30.0,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  updatedString,
                  style: TextStyle(
                    fontSize: 54.0,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
