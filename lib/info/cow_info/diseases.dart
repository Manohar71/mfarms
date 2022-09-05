import 'package:flutter/material.dart';
import 'package:mfarms/ui%20widgets/dropdown.dart';
import 'package:mfarms/ui%20widgets/neobox.dart';

Widget diseases() {
  return neobox(child: diseases_child(), color: Colors.white, height: 80, width: 370);
}

Widget diseases_child() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: [
      Text('Diseases'),
       Text('3' , style: TextStyle(fontFamily: 'Poppins' , color: Colors.blue , fontSize: 40 , fontWeight: FontWeight.w600),),
      dropdown()
    ],
  );
}
