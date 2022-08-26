import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mfarms/ui%20widgets/neobox.dart';

Widget pregnancy() {
  return neobox(child: pregnancy_widget(), color: Colors.white, height: 100, width: 370);
}

Widget pregnancy_widget() {
  return Column(
    children: [
    Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
         Text('Pregnancy' , style: TextStyle(color: Colors.black  , fontFamily: 'Poppins' , fontWeight: FontWeight.w500 , fontSize: 20),),
         Container(
          child:  Text('data')
         )
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
    ],
  );
}
