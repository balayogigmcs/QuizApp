import 'package:flutter/material.dart';
import 'package:quizapp/data/questions.dart';
import 'package:quizapp/questions_screen.dart';
import 'package:quizapp/results_screen.dart';
import 'package:quizapp/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  List<String> selectedAnswers = [];
  var activeScreen = 'start-screen';

  void switchScreen() {
    setState(() {
      activeScreen = 'questions-screen';
    });
  }

  void chooseAnswer(answer) {
    selectedAnswers.add(answer);
    if (selectedAnswers.length == questions.length) {
      setState(
        () {
          activeScreen = 'results-screen';
        },
      );
    }
  }

  void restartQuiz(BuildContext context) {
    // Reset the quiz state
    setState(() {
      selectedAnswers.clear();
      activeScreen = 'start-screen';
    });
  }



  @override
  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
              Color.fromARGB(255, 27, 24, 24),
              Color.fromARGB(255, 188, 188, 164)
            ], begin: Alignment.topLeft, end: Alignment.bottomRight),
          ),
          child: activeScreen == 'results-screen'
          ? ResultsScreen(
              choosenAnswers: selectedAnswers,
              restartQuiz: restartQuiz, // Pass the function here
            )
          : (activeScreen == 'start-screen'
              ? StartScreen(switchScreen)
              : QuestionsScreen(
                  onSelectAnswer: chooseAnswer,
                )),
        ),
      ),
    );
  }
}
