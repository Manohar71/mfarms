import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:mfarms/Add%20screen/Add.dart';
import 'package:mfarms/history/history%20_screen.dart';
import 'package:mfarms/home/homescreen.dart';
import 'package:mfarms/info/info_screen.dart';
import 'package:mfarms/profile/main_profile.dart';

class navigation extends StatefulWidget {
  const navigation({super.key});

  @override
  State<navigation> createState() => _navigationState();
}

class _navigationState extends State<navigation> {
  int index = 0;

  static final List<Widget> _widgetOptions = <Widget>[
    const home(),
    // const Text('Workouts',
    //     style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
    history_screen(),
        const Add(),
    info_screen(),
    
    main_profile()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      extendBody: true,
      body: _widgetOptions.elementAt(index),
      bottomNavigationBar: CurvedNavigationBar(
        color: Color.fromARGB(255, 38, 151, 255),
        buttonBackgroundColor: Color.fromARGB(255, 38, 151, 255),
        backgroundColor: Colors.transparent,
        items: const <Widget>[
          Icon(
            Icons.water_drop,
            size: 30,
            color: Colors.white,
          ),
          Icon(
            Icons.history,
            size: 30,
            color: Colors.white,
          ),
          Icon(
            Icons.add,
            size: 30,
            color: Colors.white,
          ),
          Icon(
            Icons.info,
            color: Colors.white,
          ),
          Icon(
            Icons.account_balance,
            size: 30,
            color: Colors.white,
          )
        ],
        onTap: (value) {
          setState(() {
            index = value;
          });
        },
      ),
    );
  }
}
