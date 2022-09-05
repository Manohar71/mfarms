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
          padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(Icons.arrow_back)),
              blue_box(
                  color: Colors.blue,
                  height: 40,
                  width: MediaQuery.of(context).size.width * 0.7,
                  child: const Center(
                      child: Text(
                    'data',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ))),
              IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(Icons.edit)),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(10.0, 30, 0, 0),
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
