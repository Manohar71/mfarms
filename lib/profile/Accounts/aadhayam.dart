import 'package:flutter/material.dart';
import 'package:mfarms/ui%20widgets/neobox.dart';

class aadhayam extends StatefulWidget {
  const aadhayam({super.key});

  @override
  State<aadhayam> createState() => _aadhayamState();
}

class _aadhayamState extends State<aadhayam> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: neobox(
          color: Colors.white,
          height: 150,
          width: MediaQuery.of(context).size.width * 0.8,
          child: Center(
              child: Center(
                  child: Text(
            "57,000",
            style: TextStyle(
              color: Colors.green,
              fontWeight: FontWeight.w700,
              fontSize: 40
            ),
          )))),
    );
  }
}
