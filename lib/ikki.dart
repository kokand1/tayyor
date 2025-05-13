import 'package:flutter/material.dart';
import 'package:lesson_1/main.dart';

class ikkiCass extends StatefulWidget {
  const ikkiCass({super.key});

  @override
  State<ikkiCass> createState() => _ikkiCassState();
}

class _ikkiCassState extends State<ikkiCass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: Center(
        child: IconButton(
          onPressed: () {
           Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back),
        ),
      ),
    );
  }
}
