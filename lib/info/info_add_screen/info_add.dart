import 'package:flutter/material.dart';
import 'package:mfarms/ui%20widgets/blue_box.dart';

class info_add extends StatefulWidget {
  const info_add({super.key});

  @override
  State<info_add> createState() => _info_addState();
}

class _info_addState extends State<info_add> {
  TextEditingController nameController = TextEditingController();  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.fromLTRB(15.0, 70, 0, 0),
        child: blue_box(
            child: add_child(),
            color: Colors.blue,
            height: 50,
            width: 350),
      ),
    );
  }

  Widget add_child() {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 45,
            width: 100,
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(15)
            ),
            child: Center(child: Text('Name' , style: TextStyle(color: Colors.blue , fontFamily: 'Poppins' , fontSize: 15),)),
          ),
        ),
        SizedBox(
          height: 45,
          width: 200,
          child: TextField(
           controller: nameController,
           decoration: InputDecoration(
            hintText: "enter the name"
           ),
           
          ),
        )
      ],
    );
  }
}
