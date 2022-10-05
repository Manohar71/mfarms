import 'package:flutter/material.dart';

class blue_txtfeild extends StatefulWidget {
  const blue_txtfeild({super.key});

  @override
  State<blue_txtfeild> createState() => _blue_txtfeildState();
}

class _blue_txtfeildState extends State<blue_txtfeild> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: MediaQuery.of(context).size.width * 0.8,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          border: Border.all(color: Colors.blueAccent, width: 2),
          color: Colors.transparent),
      child: Row(
        children: [
          Container(
            height: 40,
            width: MediaQuery.of(context).size.width * 0.3,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30), color: Colors.blue),
            child: Center(child: Text("data" , style: TextStyle(color: Colors.white),)),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(8.0,0,0,0),
            child: SizedBox(
              width: MediaQuery.of(context).size.width * 0.45,
              child: TextField (  
              decoration: InputDecoration(  
                border: InputBorder.none,  
                labelText: 'Enter Name',  
                // hintText: 'Enter Your Name'  
              ),  
            ),
            ),
          )
        ],
      ),
    );
  }
}
