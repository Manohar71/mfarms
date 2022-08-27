import 'package:flutter/material.dart';

class main_notes extends StatefulWidget {
  const main_notes({super.key});

  @override
  State<main_notes> createState() => _main_notesState();
}

class _main_notesState extends State<main_notes> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(child: Text('notes')),
    );
  }
}