import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/material.dart';
import 'package:abhinav_portfolio/tabBar.dart';
import 'package:abhinav_portfolio/my_flutter_app_icons.dart';

class Contacts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
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
                  'You can find me at: ',
                  style: TextStyle(
                    fontSize: 54.0,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(
                  height: 15.0,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 15.0,
                    horizontal: 20.0,
                  ),
                  child: GestureDetector(
                    onTap: () {
                      launch(
                        'mailto:abhinavnarula3@gmail.com',
                      );
                    },
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Icon(
                          MyFlutterApp.email,
                          size: 40.0,
                        ),
                        SizedBox(
                          width: 20.0,
                        ),
                        Text(
                          'Email',
                          style: TextStyle(fontSize: 30.0),
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20.0,
                    vertical: 15.0,
                  ),
                  child: GestureDetector(
                    onTap: () {
                      launch(
                        'https://github.com/Abhinavnarula',
                      );
                    },
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Icon(
                          MyFlutterApp.github,
                          size: 40.0,
                        ),
                        SizedBox(
                          width: 20.0,
                        ),
                        Text(
                          'GitHub',
                          style: TextStyle(fontSize: 30.0),
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20.0,
                    vertical: 15.0,
                  ),
                  child: GestureDetector(
                    onTap: () {
                      launch(
                        'https://www.linkedin.com/in/abhinav-narula-bb533a156/',
                      );
                    },
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Icon(
                          MyFlutterApp.linkedin,
                          size: 40.0,
                        ),
                        SizedBox(
                          width: 20.0,
                        ),
                        Text(
                          'LinkedIn',
                          style: TextStyle(fontSize: 30.0),
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20.0,
                    vertical: 15.0,
                  ),
                  child: GestureDetector(
                    onTap: () {
                      launch(
                        'https://t.me/wlbkb',
                      );
                    },
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Icon(
                          MyFlutterApp.telegram_plane,
                          size: 40.0,
                        ),
                        SizedBox(
                          width: 20.0,
                        ),
                        Text(
                          'Telegram',
                          style: TextStyle(fontSize: 30.0),
                        )
                      ],
                    ),
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

// RawMaterialButton(
//   onPressed: () {},
//   hoverElevation: 0.0,
//   hoverColor: Color.fromARGB(0, 48, 48, 48),
//   highlightElevation: 0.0,
//   padding: EdgeInsets.all(10.0),
//   visualDensity: VisualDensity(horizontal: 0.0, vertical: 0.0),
//   child: Row(
//     mainAxisSize: MainAxisSize.min,
//     children: <Widget>[
//       Icon(
//         MyFlutterApp.github,
//         size: 40.0,
//       ),
//       SizedBox(
//         width: 20.0,
//       ),
//       Text(
//         'GitHub',
//         style: TextStyle(fontSize: 30.0),
//       )
//     ],
//   ),
// )

// TextButton.icon(
//                   onPressed: () {},
//                   style: ButtonStyle(),
//                   icon: Icon(MyFlutterApp.instagram),
//                   label: Text(
//                     'Instagram',
//                     style: TextStyle(
//                       fontSize: 30.0,
//                     ),
//                   ),
//                 ),
