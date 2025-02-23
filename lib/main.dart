import 'package:flutter/material.dart';
import 'package:quiz_application/start_screen.dart';

void main() {
  runApp(MaterialApp(
        debugShowCheckedModeBanner: false,
    home: Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [const Color.fromARGB(255, 129, 27, 197), const Color.fromARGB(255, 104, 26, 117)]
          )
        ),
        child: StartScreen(),
      ),
    ),
  ));
}