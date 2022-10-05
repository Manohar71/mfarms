import 'package:flutter/material.dart';
import 'package:mfarms/profile/Accounts/aadhyam.dart';

class main_vachindhi extends StatefulWidget {
  const main_vachindhi({super.key});

  @override
  State<main_vachindhi> createState() => _main_vachindhiState();
}

class _main_vachindhiState extends State<main_vachindhi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body : Stack(
        children: [
          aashaym(),
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