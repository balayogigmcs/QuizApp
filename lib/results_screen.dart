import 'package:flutter/material.dart';
import 'package:quizapp/data/questions.dart';


class ResultsScreen extends StatelessWidget {
  const ResultsScreen({super.key,required this.choosenAnswers});

  final List<String> choosenAnswers;

  List<Map<String,Object>> getSummaryData(){
    final List<Map<String,Object>> summary = [];
    
    for(var i = 0; i < choosenAnswers.length; i++){
      summary.add({
        'question_index':i,
        'question' : questions[i].text,
        'correct_answer': questions[i].answers[0],
        'user_answer':choosenAnswers[i]
      });
    }

    return summary;

  }


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
