import 'package:flutter/material.dart';
import 'package:mfarms/info/farm_info/farm_info_screen.dart';
import 'package:mfarms/info/info_add_screen/info_add.dart';
import 'package:mfarms/info/info_data.dart';

class info_screen extends StatefulWidget {
  const info_screen({super.key});

  @override
  State<info_screen> createState() => _info_screenState();
}

class _info_screenState extends State<info_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          List_widget(),
          Positioned(
              right: 20,
              bottom: 100,
              child: FloatingActionButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const info_add()));
                },
                child: const Icon(Icons.add),
              ))
        ],
      ),
      //  floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      //   floatingActionButton: FloatingActionButton(
      //   // isExtended: true,
      //   child: Icon(Icons.add),
      //   backgroundColor: Colors.green,
      //   onPressed: () {

      //   },
      // ),
      // body: ListView.builder(
      //   itemCount:info_data.length ,
      //   itemBuilder:  ((context, index) => Padding(
      //       padding: const EdgeInsets.all(20.0),

      //       child:InkWell(
      //         onTap: (() {}),
      //         child: Stack(children: [
      //           Container(
      //             child: Image.asset(info_data[index]["image"]),
      //           ),
      //           Positioned(
      //             bottom: 0,
      //             child: Image.asset("assets/soft_cut.png")),
      //           Positioned(
      //             left:MediaQuery.of(context).size.width*0.25,
      //             bottom:20,
      //             child: Text( info_data[index]["name"].toString() , style:  TextStyle(color: Colors.white , fontFamily: 'Poppins' , fontWeight: FontWeight.w600 , fontSize: 20),))
      //         ]),
      //       )
      //     )),
      //     ),
    );
  }

  Widget List_widget() => ListView.builder(
        itemCount: info_data.length,
        itemBuilder: ((context, index) => Padding(
            padding: const EdgeInsets.all(20.0),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => info_data[index]["ontap"]));
                info_data[index]["ontap"];
              },
              child: Stack(children: [
                Container(
                  child: Image.asset(info_data[index]["image"]),
                ),
                Positioned(
                    bottom: 0, child: Image.asset("assets/soft_cut.png")),
                Positioned(
                    left: MediaQuery.of(context).size.width * 0.25,
                    bottom: 20,
                    child: Text(
                      info_data[index]["name"].toString(),
                      style: const TextStyle(
                          color: Colors.white,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w600,
                          fontSize: 20),
                    ))
              ]),
            ))),
      );
}
