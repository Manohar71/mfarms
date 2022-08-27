import 'package:flutter/material.dart';
import 'package:mfarms/profile/Accounts/main_accounts.dart';
import 'package:mfarms/profile/notes/main_notes.dart';

class main_profile extends StatefulWidget {
  const main_profile({super.key});

  @override
  State<main_profile> createState() => _main_profileState();
}

class _main_profileState extends State<main_profile> {
  List items = ["Notes", "Accounts"];
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: Column(
          children: [
           Padding(
             padding:  EdgeInsets.fromLTRB(20.0, MediaQuery.of(context).size.height*0.1,0,0),
             child: Container(
                     height: 50,
                     width: MediaQuery.of(context).size.width*0.8,
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
                      child: Text("Notes"),
                    ),
                    Tab(
                      child: Text("Accounts"),
                    )
                  ]),
                     ),
           ),
           Expanded(child: TabBarView(children: [
            main_notes(),
            main_accounts()
           ],))
          ],
        ),
      ),
    );
  }
}
