import 'package:flutter/material.dart';

class QuestionsPage extends StatefulWidget {
  const QuestionsPage({super.key});

  @override
  State<QuestionsPage> createState() => QuestionsState();
}

class QuestionsState extends State<QuestionsPage> {
  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'The question...',
            style: TextStyle(
              fontSize: 18,
              color: Colors.white,
            ),
          ),
          SizedBox(
            height: 30,
          ),
          ElevatedButton(
            onPressed: null,
            child: Text('Answer 1'),
          ),
          ElevatedButton(
            onPressed: null,
            child: Text('Answer 2'),
          ),
          ElevatedButton(
            onPressed: null,
            child: Text('Answer 3'),
          ),
        ],
      ),
    );
  }
}
