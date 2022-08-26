import 'package:flutter/animation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class neobox extends StatefulWidget {
 // const neobox({super.key});
 late double height;
  late double width;
  late Color color;
  late Widget child;
  neobox(
      {required this.child,
      required this.color,
      required this.height,
      required this.width});
  @override
  State<neobox> createState() => _neoboxState(child, color, height, width);
}

class _neoboxState extends State<neobox> {
  late double height;
  late double width;
  late Color color;
  late Widget child;
  _neoboxState(this.child, this.color, this.height, this.width);
  @override
  Widget build(BuildContext context) {
    return  Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          color: color,
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(30),
          boxShadow: const [
            BoxShadow(
              color: Color.fromARGB(255, 194, 204, 235),
              offset: Offset(10, 10),
              blurRadius: 20,
            ),
            BoxShadow(
              color: Color.fromARGB(255, 234, 239, 255),
              offset: Offset(-10, -10),
              blurRadius: 16,
            )
          ],
        ),
        child: child);
  }
}