import 'package:flutter/material.dart';

class QuestionsPage extends StatefulWidget {
  const QuestionsPage({super.key});

  @override
  State<QuestionsPage> createState() => QuestionsState();
}

class QuestionsState extends State<QuestionsPage> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Questions Page'),
    );
  }
}
