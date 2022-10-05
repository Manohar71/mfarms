import 'package:flutter/material.dart';
import 'package:mfarms/profile/Accounts/karchu.dart';

class main_karchu extends StatefulWidget {
  const main_karchu({super.key});

  @override
  State<main_karchu> createState() => _main_karchuState();
}

class _main_karchuState extends State<main_karchu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body : Stack(
        children: [
          karchu(),
          Positioned(
              right: 20,
              bottom: 100,
              child: FloatingActionButton(
                onPressed: () {
                  // Navigator.push(
                  //     context,
                  //     MaterialPageRoute(
                  //         builder: (context) => const info_add()));
                },
                child: const Icon(Icons.add),
              ))
        ],
      ),
    );
  }
}