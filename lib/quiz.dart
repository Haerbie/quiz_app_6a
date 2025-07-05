import 'package:flutter/material.dart';
import 'package:quiz_app_6a/datas/questions.dart';
import 'package:quiz_app_6a/profile.dart';
import 'package:quiz_app_6a/results_screen.dart';

import 'question_screen.dart';
import 'home_screen.dart';
// -----------------------

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  List<String> _selectedAnswers = [];
  var _activeScreen = 'start-screen';

  void switchScreen() {
    setState(() {
      _activeScreen = 'questions-screen';
    });
  }

  void profileScreen() {
    setState(() {
      _activeScreen = 'profile-screen';
    });
  }

  void backToHome() {
    setState(() {
      _selectedAnswers = [];
      _activeScreen = 'start-screen';
    });
  }

  void chooseAnswer(String answer) {
    _selectedAnswers.add(answer);

    if (_selectedAnswers.length == questions.length) {
      setState(() {
        _activeScreen = 'results-screen';
      });
    }
  }

  void restartQuiz() {
    setState(() {
      _selectedAnswers = [];
      _activeScreen = 'questions-screen';
    });
  }

  @override
  Widget build(context) {
    Widget screenWidget = HomeScreen(
      startQuiz: switchScreen,
      profile: profileScreen,
    );

    if (_activeScreen == 'questions-screen') {
      screenWidget = QuestionScreen(
        onSelectAnswer: chooseAnswer,
        onBackToHome: backToHome,
      );
    }

    if (_activeScreen == 'results-screen') {
      screenWidget = ResultsScreen(
        choosenAnswers: _selectedAnswers,
        onRestart: restartQuiz,
      );
    }

    if (_activeScreen == 'profile-screen') {
      screenWidget = Profile(
        onBack: backToHome,
      );
    }

    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(0xFF004d40), // Deep Teal
                Color(0xFF263238), // Dark Slate Gray
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