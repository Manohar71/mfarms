import 'package:flutter/material.dart';

class main_accounts extends StatefulWidget {
  const main_accounts({super.key});

  @override
  State<main_accounts> createState() => _main_accountsState();
}

class _main_accountsState extends State<main_accounts> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(child: Text('accounts')),
    );
  }
}