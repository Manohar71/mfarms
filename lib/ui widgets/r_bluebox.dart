import 'package:flutter/material.dart';

class r_bluebox extends StatefulWidget {
  //const r_bluebox({super.key});
  late double height;
  late double width;
  late Color color;
  late Widget child;
  r_bluebox(
      {required this.child,
      required this.color,
      required this.height,
      required this.width});
  @override
  State<r_bluebox> createState() => _r_blueboxState(child, color, height, width);
}

class _r_blueboxState extends State<r_bluebox> {
  late double height;
  late double width;
  late Color color;
  late Widget child;
  _r_blueboxState(this.child, this.color, this.height, this.width);
  @override
  Widget build(BuildContext context) {
    return Container(
    height:  height,
    width: width,
    decoration: BoxDecoration(
      color: color,
      borderRadius: BorderRadius.circular(50)
    ),
    child: child,
    );
  }
}
