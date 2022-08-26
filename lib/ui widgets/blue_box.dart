import 'package:flutter/material.dart';

class blue_box extends StatefulWidget {
  //const blue_box({super.key});
  late double height;
  late double width;
  late Color color;
  late Widget child;
  blue_box(
      {required this.child,
      required this.color,
      required this.height,
      required this.width});
  @override
  State<blue_box> createState() => _blue_boxState(child, color, height, width);
}

class _blue_boxState extends State<blue_box> {
  late double height;
  late double width;
  late Color color;
  late Widget child;
  _blue_boxState(this.child, this.color, this.height, this.width);
  @override
  Widget build(BuildContext context) {
    return Container(
    height:  height,
    width: width,
    decoration: BoxDecoration(
      color: color,
      borderRadius: BorderRadius.circular(10)
    ),
    child: child,
    );
  }
}
