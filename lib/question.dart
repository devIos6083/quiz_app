import 'package:flutter/material.dart';

class Question extends StatefulWidget {
  const Question({super.key});

  @override
  State<Question> createState() => _QuestionState();
}

class _QuestionState extends State<Question> {
  final questions = [
    'What is Flutter?',
    'What is a Widget?',
    'What is State?',
  ]; // 샘플 질문 목록

  var currentQuestionIndex = 0; // 현재 질문 인덱스

  void answerQuestion() {
    setState(() {
      if (currentQuestionIndex < questions.length - 1) {
        currentQuestionIndex++;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              questions[currentQuestionIndex],
              style: const TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: answerQuestion,
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 40,
                ),
                backgroundColor: const Color.fromARGB(255, 33, 1, 95),
              ),
              child: const Text('Answer 1'),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: answerQuestion,
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 40,
                ),
                backgroundColor: const Color.fromARGB(255, 33, 1, 95),
              ),
              child: const Text('Answer 2'),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: answerQuestion,
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 40,
                ),
                backgroundColor: const Color.fromARGB(255, 33, 1, 95),
              ),
              child: const Text('Answer 3'),
            ),
          ],
        ),
      ),
    );
  }
}
