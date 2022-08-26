import 'package:flutter/material.dart';
import 'package:mfarms/home/navigation_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'mfarms',
      theme: ThemeData(
     
        primarySwatch: Colors.blue,
      ),
      home: const navigation(),
    );
  }
}


  