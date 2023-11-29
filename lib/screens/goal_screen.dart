// goal_screen.dart

import 'package:flutter/material.dart';
import 'package:flutter_fitnes_live/widgets/question%20answer/question_answer_widget.dart';

class GoalScreen extends StatefulWidget {
  @override
  _GoalScreenState createState() => _GoalScreenState();
}

class _GoalScreenState extends State<GoalScreen> {
  int completedAnswers = 0; // Переменная для отслеживания выполненных ответов
  final String _labelTitle = 'Что мотивирует вас больше всего?';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Цель'),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white, // Белый фон для шапки
        foregroundColor: Colors.black, // Текст черный
      ),
      body: Container(
        color: Colors.white, // Белый фон для body
        padding: const EdgeInsets.all(16.0),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              _labelTitle,
              style: TextStyle(fontSize: 29, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20.0),

            SizedBox(height: 30.0),
            QuestionAnswerWidget(),
            SizedBox(height: 25.0),
            QuestionAnswerWidget(),
            SizedBox(height: 25.0),

            SizedBox(height: 60.0),
            // Кнопка "Следующее"
            ElevatedButton(
              onPressed: () {
                // Добавьте здесь код для обработки нажатия кнопки
                // (например, переход на следующий вопрос)
                setState(() {
                  completedAnswers++; // Увеличиваем счетчик выполненных ответов
                });
              },
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(double.infinity, 50),
                backgroundColor: const Color.fromARGB(255, 230, 108, 108),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              child: const Text(
                'Next',
                style: TextStyle(
                  fontSize: 24.0,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
