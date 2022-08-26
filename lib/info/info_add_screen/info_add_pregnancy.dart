// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:mfarms/ui%20widgets/blue_box.dart';

// Widget info_add_pregnancy() {
//   return blue_box(child: Center(child: Text('Pregnancy' , style: TextStyle(color: Colors.white , fontFamily: 'Poppins' , fontWeight:  FontWeight.w600 , ),)), color: Colors.blue, height: 50, width: 350);
// }



import 'package:flutter/material.dart';

import '../../ui widgets/blue_box.dart';


class info_add_pregnancy extends StatefulWidget {
  const info_add_pregnancy({super.key});

  @override
  State<info_add_pregnancy> createState() => _info_add_pregnancyState();
}

class _info_add_pregnancyState extends State<info_add_pregnancy> {
  @override
  Widget build(BuildContext context) {
    return blue_box(child: Center(child: Text('Pregnancy' , style: TextStyle(color: Colors.white , fontFamily: 'Poppins' , fontWeight:  FontWeight.w600 , ),)), color: Colors.blue, height: 50, width: 350);
  }
}