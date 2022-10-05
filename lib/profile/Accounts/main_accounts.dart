import 'package:flutter/material.dart';
import 'package:mfarms/profile/Accounts/aadhayam.dart';
import 'package:mfarms/profile/Accounts/aadhyam.dart';
import 'package:mfarms/profile/Accounts/karchu.dart';
import 'package:mfarms/profile/Accounts/main_karrchu.dart';
import 'package:mfarms/profile/Accounts/main_vachindhi.dart';

class main_accounts extends StatefulWidget {
  const main_accounts({super.key});

  @override
  State<main_accounts> createState() => _main_accountsState();
}

class _main_accountsState extends State<main_accounts> {
  List items = ["a", "a", "a"];
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        body: Column(
          children: [
           Padding(
             padding:  EdgeInsets.fromLTRB(20.0,20,0,0),
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
                      child: Text("ఖర్చు " , style: TextStyle(fontWeight: FontWeight.w600),),
                    ),
                    Tab(
                      child: Text("వచ్చింది" , style: TextStyle(fontWeight: FontWeight.w600),),
                    ),
                    Tab(
                      child: Text("ఆదాయం" , style: TextStyle(fontWeight: FontWeight.w600),),
                    )

                  ]),
                     ),
           ),
           Expanded(child: TabBarView(children: [
            main_karchu(),
            main_vachindhi(),
            aadhayam()
           ],))
          ],
        ),
      ),
    );
  }
}