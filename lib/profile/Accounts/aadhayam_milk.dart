import 'package:flutter/material.dart';
import 'package:mfarms/ui%20widgets/neobox.dart';

class aadhayam_milk extends StatefulWidget {
  const aadhayam_milk({super.key});

  @override
  State<aadhayam_milk> createState() => _aadhayam_milkState();
}

class _aadhayam_milkState extends State<aadhayam_milk> {
  @override
  Widget build(BuildContext context) {
    return neobox(
        child: milk_aadhayam_child(),
        color: Colors.white,
        height: 350,
        width: MediaQuery.of(context).size.width * 0.8);
  }

  Widget milk_aadhayam_child() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0,25,0,0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  Text('From' , style: TextStyle(fontWeight: FontWeight.w600 , fontSize: 18),),
                  SizedBox(height: 20,),
                  Container(
                    height: 35,
                    width: 100,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(30)
                    ),
                    child: Center(child: Text('11 Aug 22')),
                  ),
                   SizedBox(height: 20,),
                  Text('Milk', style: TextStyle(fontWeight: FontWeight.w600 , fontSize: 18)),
                   SizedBox(height: 20,),
                  Text('2,567' , style: TextStyle(color: Colors.blue , fontSize: 30 , fontWeight: FontWeight.w600),),
                ],
              ),
              Column(
                children: [
                  Text('To' , style: TextStyle(fontWeight: FontWeight.w600 , fontSize: 18),),
                  SizedBox(height: 20,),
                  Container(
                    height: 35,
                    width: 100,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(30)
                    ),
                    child: Center(child: Text('11 Aug 22')),
                  ),
                   SizedBox(height: 20,),
                  Text('Avg Fat', style: TextStyle(fontWeight: FontWeight.w600 , fontSize: 18)),
                   SizedBox(height: 20,),
                  Text('8.0' , style: TextStyle(color: Colors.blue , fontSize: 30 , fontWeight: FontWeight.w600),),
                ],
              )
            ],
          ),
           Padding(
             padding: const EdgeInsets.fromLTRB(0,40,0,0),
             child: Text('1,54,320' , style: TextStyle(color: Colors.green , fontSize: 35 , fontWeight: FontWeight.w600),),
           ),
        ],
      ),
    );
  }
}
