import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary(this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(context) {
    return Column(
      children: summaryData.map(
        (data) {
          return Center(
            child: Row(
              children: [
                Text(((data['question_index'] as int) + 1).toString()),
                Expanded(
                  child: Column(children: [
                    Text((data['question']) as String),
                    const SizedBox(
                      height: 20,
                    ),
                    Text((data['correct_answer']) as String),
                    const SizedBox(height: 20,),
                    Text((data['user_answer']) as String),
                  ],),
                )
              ],
            ),
          );
        },
      ).toList(),
    );
  }
}
