import 'package:flutter/material.dart';

class day_selection extends StatefulWidget {
  const day_selection({super.key});

  @override
  State<day_selection> createState() => _day_selectionState();
}

class _day_selectionState extends State<day_selection>
    with TickerProviderStateMixin {
  //final contoller = TabController(length: 2, vsync: )
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 50,
        width: 110,
        decoration: BoxDecoration(
          color: Color.fromARGB(154, 158, 158, 158),
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(30)
        ),
          child: TabBar(
            indicatorSize: TabBarIndicatorSize.tab,
              unselectedLabelColor: Colors.black,
              indicator: BoxDecoration(
                  color: Colors.blue,
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(30)),
              tabs: [
                Tab(
                  child: Icon(Icons.sunny),
                ),
                Tab(
                  child: Icon(Icons.nightlight_round_sharp),
                )
              ]),
        );
  }
}
