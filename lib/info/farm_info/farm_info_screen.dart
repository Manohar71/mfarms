import 'package:flutter/material.dart';
import 'package:mfarms/info/farm_info/farm_info_button.dart';

class farm_info_screen extends StatefulWidget {
  const farm_info_screen({super.key});

  @override
  State<farm_info_screen> createState() => _farm_info_screenState();
}

class _farm_info_screenState extends State<farm_info_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 100,),
          farm_details_button('Farm Layout', (){},Icons.link , context),
          farm_details_button('Cow location', (){},Icons.link , context)
        ],
      ),
    );
  }
}