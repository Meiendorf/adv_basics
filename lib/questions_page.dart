import 'package:adv_basics/answer_button.dart';
import 'package:flutter/material.dart';
import 'package:adv_basics/data/questions.dart';

class QuestionsPage extends StatefulWidget {
  const QuestionsPage({super.key});

  @override
  State<QuestionsPage> createState() => QuestionsState();
}

class QuestionsState extends State<QuestionsPage> {
  @override
  Widget build(BuildContext context) {
    final currentQuestion = questions[0];

    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            currentQuestion.question,
            style: const TextStyle(
              fontSize: 16,
              color: Colors.white,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          AnswerButton(
            onTap: () {},
            answerText: currentQuestion.answers[0],
          ),
          AnswerButton(
            onTap: () {},
            answerText: currentQuestion.answers[1],
          ),
          AnswerButton(
            onTap: () {},
            answerText: currentQuestion.answers[2],
          ),
        ],
      ),
    );
  }
}
