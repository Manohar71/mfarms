import 'package:flutter/cupertino.dart';
import 'package:mfarms/ui%20widgets/dropdown.dart';
import 'package:mfarms/ui%20widgets/neobox.dart';
import 'package:flutter/material.dart';

Widget recent_cow_info() {
  return neobox(
      color: Colors.white, height: 220, width: 370, child: recent_child());
}

Widget recent_child() => Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: const [
            Text(
              'Recent data',
              style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w500,
                  fontSize: 20),
            ),
            dropdown(),
          ],
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(30.0, 0, 30, 0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: const [
                  Text(
                    '56.7',
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        color: Colors.blue,
                        fontSize: 50,
                        fontWeight: FontWeight.w600),
                  ),
                  Text(
                    'Milk',
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                        color: Color.fromARGB(93, 0, 0, 0)),
                  )
                ],
              ),
              Column(
                children: const [
                  Text(
                    '8.7',
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        color: Colors.blue,
                        fontSize: 50,
                        fontWeight: FontWeight.w600),
                  ),
                  Text(
                    'Average Fat',
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
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const Text(
                'Full Graph',
                style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500,
                    fontSize: 20),
              ),
              Row(
                children: const [
                  Icon(
                    Icons.stacked_line_chart,
                    color: Colors.blue,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(
                    Icons.bar_chart_outlined,
                    color: Colors.blue,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(
                    Icons.bar_chart_outlined,
                    color: Colors.blue,
                  ),
                ],
              )
            ],
          ),
        )
      ],
    );
