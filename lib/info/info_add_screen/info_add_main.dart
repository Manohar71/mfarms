import 'package:flutter/material.dart';
import 'package:mfarms/info/info_add_screen/info_add.dart';
import 'package:mfarms/info/info_add_screen/info_add_pregnancy.dart';

class info_add_main extends StatefulWidget {
  const info_add_main({super.key});

  @override
  State<info_add_main> createState() => _info_add_mainState();
}

class _info_add_mainState extends State<info_add_main> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          info_add(),
          info_add_pregnancy()
        ],
      ),
    );
  }
}
