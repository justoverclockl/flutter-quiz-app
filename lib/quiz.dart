import 'package:flutter/material.dart';
import 'package:quiz_app/questions_screen.dart';
import 'package:quiz_app/start_screen.dart';

import 'data/questions.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  List<String> selectedAnswers = [];
  // we can store widget into variables bcs they are object at the end
  var activeScreen = 'start-screen';

  void switchScreen() {
    setState(() {
      activeScreen = 'questions-screen';
    });
  }

  void chooseAnswer(String answer) {
    selectedAnswers.add(answer);

    if (selectedAnswers.length == questions.length) {
      setState(() {
        selectedAnswers = [];
        activeScreen = 'start-screen';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    Widget widgetToRender = activeScreen == 'start-screen'
        ? StartScreen(switchScreen)
        : QuestionScreen(
            onSelectAnswer: chooseAnswer,
          );

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.deepPurple,
                Colors.indigo,
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: widgetToRender,
        ),
      ),
    );
  }
}

/*
There are three extremely important (stateful) widget lifecycle methods you should be aware of:
initState(): Executed by Flutter when the StatefulWidget's State object is initialized
build(): Executed by Flutter when the Widget is built for the first time AND after setState() was called
dispose(): Executed by Flutter right before the Widget will be deleted (e.g., because it was displayed conditionally)
*/
