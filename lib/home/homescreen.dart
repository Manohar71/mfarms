import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:mfarms/ui%20widgets/blue_box.dart';
import 'package:mfarms/ui%20widgets/neobox.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    bool milkupdate = false;
    String Choosevalue = 'milk';
    var items = ['milk', 'fat'];
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.05,
          ),
          Image.asset('assets/logo.png'),
          Padding(
            padding: const EdgeInsets.fromLTRB(40.0, 10, 40, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Todays milk Update',
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                      fontSize: 18),
                ),
                const Spacer(),
                Container(
                  height: 8,
                  width: 50,
                  decoration: BoxDecoration(
                      color: milkupdate ? Colors.green : Colors.red,
                      borderRadius: BorderRadius.circular(10)),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
            child: blue_box(
                color: Colors.blue,
                height: MediaQuery.of(context).size.height * 0.4,
                width: MediaQuery.of(context).size.width * 0.9,
                child: Child_widget(Choosevalue, items)),
          ),
           Padding(
             padding: const EdgeInsets.fromLTRB(10,20,10,0),
             child: neobox(child: child_widget(), color: Colors.white, height: 160, width: 500),
           )
        ],
      ),
    );
  }

  Widget Child_widget(String choosevalue, List<String> items) => Column(
        children: [
          Row(
            children: [
              const Spacer(),
              Padding(
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
                        value: choosevalue,
                        items: items.map((String items) {
                          return DropdownMenuItem(
                            value: items,
                            child: Text(items),
                          );
                        }).toList(),
                        onChanged: ((String? newvalue) {
                          setState(() {
                            choosevalue = newvalue!;
                          });
                        })),
                  ),
                ),
              ),
             
            ],
          ),
           SizedBox(
            height: 180,
            width: 400,
             child: LineChart(LineChartData(
                    minX: 0,
                    minY: 0,
                    maxX: 10,
                    maxY: 11,
                    lineBarsData: [
                      LineChartBarData(
                        color: Colors.white,
                        spots: [
                        const FlSpot(0, 3),
                        const FlSpot(2.6, 2),
                        const FlSpot(4.9, 5),
                        const FlSpot(6.8, 2.5),
                        const FlSpot(8, 4)
                      ])
                    ])),
           ),
        ],
      );
      Widget child_widget()=>
       Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Recent data' , style: TextStyle(fontFamily: 'Poppins' , fontSize: 20, fontWeight: FontWeight.w500),)
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(30.0,0,30,0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Text('56.7' , style: TextStyle(fontFamily: 'Poppins' , color: Colors.blue , fontSize: 50 , fontWeight: FontWeight.w600),),
                    Text('Milk' , style: TextStyle(fontFamily: 'Poppins' ,fontWeight: FontWeight.w400, color: Color.fromARGB(93, 0, 0, 0)),)
                  ],
                ),
                 Column(
                  children: [
                    Text('8.7' , style: TextStyle(fontFamily: 'Poppins' , color: Colors.blue , fontSize: 50 , fontWeight: FontWeight.w600),),
                    Text('Average Fat' , style: TextStyle(fontFamily: 'Poppins' ,fontWeight: FontWeight.w400, color: Color.fromARGB(93, 0, 0, 0)),)
                  ],
                )
              ],
            ),
          )
        ],
       );
}