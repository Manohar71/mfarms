import 'package:flutter/material.dart';
import 'package:mfarms/history/history_data.dart';
import 'package:mfarms/ui%20widgets/neobox.dart';

class history_screen extends StatefulWidget {
  const history_screen({super.key});

  @override
  State<history_screen> createState() => _history_screenState();
}

class _history_screenState extends State<history_screen> {
  @override
  Widget build(BuildContext context) {
    DateTime now = DateTime.now();
//String formattedDate = DateFormat('kk:mm:ss \n EEE d MMM').format(now);
    return Scaffold(
      body: ListView.builder(
        itemCount: historydata.length,
        itemBuilder: ((context, index) => Padding(
          padding: const EdgeInsets.all(10.0),
          child: neobox(
                height: 160,
                width: 5000,
                child: Child_widget(context , index),
                color: Colors.white,
              ),
        )),
      ),
    );
  }

  Widget Child_widget(context , index) => Column(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Padding(
        padding: const EdgeInsets.all(10.0),
         child: Text(historydata[index]["date"].toString()),
     //   child: Text((DateFormat.yMMMd().format(DateTime.now()))),
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            children: [
              Text(historydata[index]["milk"] , style: TextStyle(color: Colors.blue  , fontFamily: 'Poppins' , fontWeight: FontWeight.w600 , fontSize: 40),),
              Text('Milk', style: TextStyle(color: Colors.grey  , fontFamily: 'Poppins' , fontWeight: FontWeight.w400 , fontSize: 20),)
            ],
          ),
           Column(
            children: [
              Text(historydata[index]["fat"], style: TextStyle(color: Colors.blue  , fontFamily: 'Poppins' , fontWeight: FontWeight.w600 , fontSize:  40),),
              Text('fat', style: TextStyle(color: Colors.grey  , fontFamily: 'Poppins' , fontWeight: FontWeight.w400 , fontSize: 20),)
            ],
          )
        ],
      )
    ],
  )
  ;
}
