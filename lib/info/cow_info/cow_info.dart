import 'package:flutter/material.dart';
import 'package:mfarms/info/cow_info/babies.dart';
import 'package:mfarms/info/cow_info/diseases.dart';
import 'package:mfarms/info/cow_info/pregnancy.dart';
import 'package:mfarms/info/cow_info/rescent_data_cow_info.dart';
import 'package:mfarms/ui%20widgets/blue_box.dart';

class cow_info extends StatefulWidget {
  const cow_info({super.key});

  @override
  State<cow_info> createState() => _cow_infoState();
}

class _cow_infoState extends State<cow_info> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(0,50,0,0),
          child: blue_box(child: Center(child: Text('data' , style: TextStyle(color: Colors.white , fontSize: 20),)), color: Colors.blue, height: 40, width: 150 ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(10.0,30,0,0),
          child: recent_cow_info(),
        ),
      Padding(
        padding: const EdgeInsets.all(15.0),
        child: pregnancy(),
      ),
      Padding(
        padding: const EdgeInsets.all(15.0),
        child: babies(),
      ),
       Padding(
        padding: const EdgeInsets.all(15.0),
        child: diseases(),
      )
      ]),
    );
  }
}