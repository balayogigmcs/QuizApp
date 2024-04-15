import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:quizapp/start_screen.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Color.fromARGB(255, 27, 24, 24), Color.fromARGB(255, 188, 188, 164)],
           begin: Alignment.topLeft,
           end:Alignment.bottomRight),
          ),
          child: const StartScreen(),
        ),
      ),
    ),
  );
}
