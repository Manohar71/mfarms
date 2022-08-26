import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class dropdown extends StatefulWidget {
  const dropdown({super.key});

  @override
  State<dropdown> createState() => _dropdownState();
}

class _dropdownState extends State<dropdown> {
  @override
  Widget build(BuildContext context) {
    String Choosevalue = 'milk';
    var items = ['milk', 'fat'];
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        height: 40,
        width: 100,
        decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            color: Colors.white,
            borderRadius: BorderRadius.circular(30)),
        child: Center(
          child: DropdownButton(
              value: Choosevalue,
              items: items.map((String items) {
                return DropdownMenuItem(
                  value: items,
                  child: Text(items),
                );
              }).toList(),
              onChanged: ((String? newvalue) {
                setState(() {
                  Choosevalue = newvalue!;
                });
              })),
        ),
      ),
    );
  }
}
