import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mfarms/ui%20widgets/neobox.dart';

Widget pregnancy() {
  return neobox(
      child: pregnancy_widget(), color: Colors.white, height: 140, width: 370);
}

Widget pregnancy_widget() {
  bool main = true;
  return Column(
    children: [
      Padding(
        padding: const EdgeInsets.fromLTRB(0,10,0,0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              'Pregnancy',
              style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w500,
                  fontSize: 20),
            ),
            CircleAvatar(
              radius: 10,
              backgroundColor: main ? Colors.green : Colors.red,)
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.fromLTRB(30.0, 10, 30, 0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Text(
                  '6:8',
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      color: Colors.blue,
                      fontSize: 50,
                      fontWeight: FontWeight.w600),
                ),
                Text(
                  'Months : days',
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                      color: Color.fromARGB(93, 0, 0, 0)),
                )
              ],
            ),
            Column(
              children: [
                Text(
                  '4',
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      color: Colors.blue,
                      fontSize: 50,
                      fontWeight: FontWeight.w600),
                ),
                Text(
                  'Number of times',
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                      color: Color.fromARGB(93, 0, 0, 0)),
                )
              ],
            )
          ],
        ),
      ),
    ],
  );
}
