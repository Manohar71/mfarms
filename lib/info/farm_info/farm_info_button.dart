import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget farm_details_button(dynamic text, dynamic ontap, dynamic icon , context) =>
    Padding(
      padding: const EdgeInsets.fromLTRB(30.0,0,0,10),
      child: Container(
        height: 50,
        width: MediaQuery.of(context).size.width*0.8,
        decoration: BoxDecoration(
          color: Colors.blue,
            shape: BoxShape.rectangle, borderRadius: BorderRadius.circular(30)),
        child: Row(
          // mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            
            Padding(
              padding: const EdgeInsets.fromLTRB(20,0,0,0),
              child: Text(text.toString() , style: TextStyle(color: Colors.white , fontFamily: 'Poppins' , fontWeight: FontWeight.w500 , fontSize: 20),),
            ),
            Spacer(),
            CircleAvatar(
              radius: 27,
              backgroundColor: Colors.white,
              child: IconButton(
                color: Colors.black,
                  onPressed: () {
                    ontap();
                  },
                  icon: Icon(icon)),
            )
          ],
        ),
      ),
    );
