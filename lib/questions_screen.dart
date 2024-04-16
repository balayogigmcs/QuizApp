import 'package:flutter/material.dart';
import 'package:quizapp/answer_button.dart';
import 'package:quizapp/data/questions.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});
  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreenState();
  }
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  @override
  Widget build(context) {
    final currentQuestion = questions[0];

    return SizedBox(
      width: double.maxFinite,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            currentQuestion.text,
            style: const TextStyle(color: Colors.amber),
          ),
          ...currentQuestion.answers.map(
            (answer) {
              return AnswerButton(answerText: answer, onTap: () {});
            },
          ),
        ],
      ),
    );
  }
}
