import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  //StartScreen({key}): super(key:key);
  const StartScreen({super.key});

  @override
  Widget build(context) {
    return Center(
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 50),
          ),
          Image.asset(
            'assets/images/quiz-logo.png',
            height: 300,
            color: const Color.fromARGB(31, 255, 255, 255),
          ),
          /*
          Opacity(
            opacity: 0.3,
            child: Image.asset(
              'assets/images/quiz-logo.png',
              height: 300,
            ),
          ),*/
          const SizedBox(
            height: 50,
          ),
          const Text(
            'Learn Flutter the fun way!',
            style: TextStyle(
              color: Colors.amber,
              fontSize: 40,
            ),
          ),
          const SizedBox(
            height: 180,
          ),
          OutlinedButton.icon(
            onPressed: () {},
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.white,
            ),
            icon: const Icon(Icons.arrow_right_alt),
            label: const Text('Start Quiz'),
          ),
        ],
      ),
    );
  }
}
