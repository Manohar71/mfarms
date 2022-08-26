import 'package:flutter/material.dart';
import 'package:mfarms/ui%20widgets/dropdown.dart';
import 'package:mfarms/ui%20widgets/neobox.dart';

Widget babies() {
  return neobox(child: baie_child(), color: Colors.white, height: 80, width: 370);
}

Widget baie_child() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: [
      Text('Babies'),
      Text('4'),
      dropdown()
    ],
  );
}
