import 'package:flutter/material.dart';
import 'package:udemy/start_screen.dart';
import 'package:udemy/question.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  Widget? activeScreen; // Widget 타입으로 변경

  @override
  void initState() {
    activeScreen = StartScreen(switchScreen); // 초기 화면 설정
    super.initState();
  }

  void switchScreen() {
    setState(() {
      activeScreen = const Question(); // 직접 Widget을 할당
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.deepPurple, Colors.purple],
                begin: Alignment.topLeft,
                end: Alignment.bottomLeft),
          ),
          child: activeScreen,
        ),
      ),
    );
  }
}
