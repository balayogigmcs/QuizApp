import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary(this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map(
            (data) {
              return Center(
                child: Row(
                  children: [
                    Text(((data['question_index'] as int) + 1).toString()),
                    Expanded(
                      child: Column(
                        children: [
                          Text((data['question']) as String,style: const TextStyle(color: Colors.pink),),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            (data['correct_answer']) as String,
                            style: const TextStyle(color: Colors.green),
                          ),
                          Text(
                            (data['user_answer']) as String,
                            style: const TextStyle(color: Colors.deepOrange),
                          ),
                           const SizedBox(
                            height: 20,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              );
            },
          ).toList(),
        ),
      ),
    );
  }
}
