import 'package:flutter/cupertino.dart';
import 'package:mfarms/ui%20widgets/dropdown.dart';
import 'package:mfarms/ui%20widgets/neobox.dart';
import 'package:flutter/material.dart';

Widget recent_cow_info() {
  return neobox(child: recent_child(), color: Colors.white, height: 200, width: 370);
}

Widget recent_child() => Column(
  children: [
  Row(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: [
      Text('Recent data' , style: TextStyle(color: Colors.black  , fontFamily: 'Poppins' , fontWeight: FontWeight.w500 , fontSize: 20),),
      dropdown(),
    ],
  ),
   Padding(
            padding: const EdgeInsets.fromLTRB(30.0,0,30,0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Text('56.7' , style: TextStyle(fontFamily: 'Poppins' , color: Colors.blue , fontSize: 50 , fontWeight: FontWeight.w600),),
                    Text('Milk' , style: TextStyle(fontFamily: 'Poppins' ,fontWeight: FontWeight.w400, color: Color.fromARGB(93, 0, 0, 0)),)
                  ],
                ),
                 Column(
                  children: [
                    Text('8.7' , style: TextStyle(fontFamily: 'Poppins' , color: Colors.blue , fontSize: 50 , fontWeight: FontWeight.w600),),
                    Text('Average Fat' , style: TextStyle(fontFamily: 'Poppins' ,fontWeight: FontWeight.w400, color: Color.fromARGB(93, 0, 0, 0)),)
                  ],
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                 Text('Full Graph' , style: TextStyle(color: Colors.black  , fontFamily: 'Poppins' , fontWeight: FontWeight.w500 , fontSize: 20),),
                 Row(
                  children: [
                       Icon(Icons.stacked_line_chart),
                 Icon(Icons.bar_chart_outlined),
                 Icon(Icons.bar_chart_outlined),
                  ],
                 )
              ],
            ),
          )
  ],
);
