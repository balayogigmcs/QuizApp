import 'package:flutter/material.dart';


class ResultsScreen extends StatelessWidget {
  const ResultsScreen({super.key});
  @override
  Widget build(context) {
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(20),
        child:  Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text('You Answered X out of Y Questions Correctly!',style: TextStyle(color: Colors.amber),),
              const SizedBox(
                height: 50,
              ),
              const Text('List of Answers and Questions',style: TextStyle(color: Colors.amber),),
              const SizedBox(
                height: 50,
              ),
              OutlinedButton.icon(
                  onPressed: () {},
                  label: const Text('Restart Quiz'),
                  icon: const Icon(Icons.restart_alt_outlined))
            ],
          ),
        ),
      ),
    );
  }
}
