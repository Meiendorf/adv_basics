import 'package:adv_basics/data/questions.dart';
import 'package:adv_basics/questions_page.dart';
import 'package:adv_basics/welcome_page.dart';
import 'package:flutter/material.dart';
import 'package:adv_basics/results_page.dart';

class QuizApp extends StatefulWidget {
  const QuizApp({super.key});

  @override
  State<QuizApp> createState() => _QuizState();
}

class _QuizState extends State<QuizApp> {
  List<String> selectedAnswers = [];
  var activeScreen = 'start-screen';
  // Widget? activeScreen;

  // @override
  // void initState() {
  //   activeScreen = WelcomePage(switchScreen);
  //   super.initState();
  // }

  void switchScreen() {
    setState(() {
      activeScreen = 'questions-screen';
    });
  }

  void chooseAnswers(String answer) {
    selectedAnswers.add(answer);

    if (selectedAnswers.length == questions.length) {
      setState(() {
        activeScreen = 'results-screen';
      });
    }
  }

  void restartQuiz() {
    setState(() {
      selectedAnswers = [];
      activeScreen = 'start-screen';
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget screenWidget = WelcomePage(switchScreen);

    switch (activeScreen) {
      case 'questions-screen':
        screenWidget = QuestionsPage(onSelectAnswer: chooseAnswers);
        break;
      case 'results-screen':
        screenWidget = ResultsPage(
          chosenAnswers: selectedAnswers,
          onRestartQuiz: restartQuiz,
        );
        break;
      default:
        screenWidget = WelcomePage(switchScreen);
        break;
    }

    return MaterialApp(
      title: 'AdvBasics',
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 48, 0, 84),
                Color.fromARGB(255, 88, 1, 155),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: screenWidget,
        ),
      ),
    );
  }
}
