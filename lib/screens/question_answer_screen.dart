/*Этот файл представляет собой экран "Цель" в приложении.
Здесь задается вопрос, отображаются варианты ответов, и пользователь может выбрать ответ.
 После выбора ответа он может перейти к следующему вопросу.
*/
// goal_screen.dart
import 'package:flutter/material.dart';
import 'package:flutter_fitnes_live/screens/sole_purpose_screen.dart';
import 'package:flutter_fitnes_live/widgets/question%20answer/question_answer_widget.dart';

class GoalScreen extends StatefulWidget {
  @override
  _GoalScreenState createState() => _GoalScreenState();
}

class _GoalScreenState extends State<GoalScreen> {
  int completedAnswers = 0;
  final String _labelTitle = 'Что мотивирует вас больше всего?';

  bool isButtonEnabled = false; // Флаг активации кнопки

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Цель'),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
      ),
      body: Container(
        color: Colors.white,
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text(
              _labelTitle,
              style: TextStyle(fontSize: 29, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20.0),
            QuestionAnswerWidget(
              iconData: Icons.thumb_up_outlined,
              labelText: 'Чувствовать себя уверенно',
              onSelected: (isSelected) => updateButtonState(isSelected),
            ),
            SizedBox(height: 20.0),
            QuestionAnswerWidget(
              iconData: Icons.sentiment_satisfied_alt_outlined,
              labelText: 'Снять стресс',
              onSelected: (isSelected) => updateButtonState(isSelected),
            ),
            SizedBox(height: 20.0),
            QuestionAnswerWidget(
              iconData: Icons.favorite_border_outlined,
              labelText: 'Улучшить здоровье',
              onSelected: (isSelected) => updateButtonState(isSelected),
            ),
            SizedBox(height: 20.0),
            QuestionAnswerWidget(
              iconData: Icons.electric_bolt_outlined,
              labelText: 'Зарядится энергий',
              onSelected: (isSelected) => updateButtonState(isSelected),
            ),
            SizedBox(height: 20.0),
            QuestionAnswerWidget(
              iconData: Icons.self_improvement_outlined,
              labelText: 'Набрать форму',
              onSelected: (isSelected) => updateButtonState(isSelected),
            ),
            SizedBox(height: 40.0),
            ElevatedButton(
              onPressed: isButtonEnabled
                  ? () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SolePurpose()),
                      );
                      setState(() {
                        completedAnswers++;
                      });
                    }
                  : null,
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(double.infinity, 50),
                backgroundColor: isButtonEnabled
                    ? const Color.fromRGBO(255, 51, 119, 1)
                    : Colors.grey,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              child: Text(
                'СЛЕДУЮЩЕЕ',
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

  void updateButtonState(bool isSelected) {
    setState(() {
      isButtonEnabled = isSelected;
    });
  }
}
