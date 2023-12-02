<<<<<<< HEAD
/*
  Этот файл представляет собой экран "Цель" в приложении.
  Здесь задается вопрос, отображаются варианты ответов, и пользователь может выбрать ответ.
  После выбора ответа он может перейти к следующему вопросу.
*/

// Импорт необходимых библиотек и виджетов
=======
/*Этот файл представляет собой экран "Цель" в приложении.
Здесь задается вопрос, отображаются варианты ответов, и пользователь может выбрать ответ.
 После выбора ответа он может перейти к следующему вопросу.
*/

>>>>>>> origin/main
import 'package:flutter/material.dart';
import 'package:flutter_fitnes_live/screens/sole_purpose_screen.dart';
import 'package:flutter_fitnes_live/widgets/question%20answer/question_answer_widget.dart';

// Основной виджет для экрана "Цель"
// Класс для создания экрана с целью
class GoalScreen extends StatefulWidget {
  @override
  _GoalScreenState createState() => _GoalScreenState();
}

<<<<<<< HEAD
// Состояние виджета "Цель"
class _GoalScreenState extends State<GoalScreen> {
  int completedAnswers = 0; // Счетчик выбранных ответов
  final String _labelTitle =
      'Что мотивирует вас больше всего?'; // Заголовок вопроса

  bool isButtonEnabled = false; // Флаг активации кнопки "СЛЕДУЮЩЕЕ"

  // Основной метод для построения виджета
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Виджет "Оболочка" для создания базовой структуры экрана
      appBar: AppBar(
        title: const Text('Цель'), // Заголовок экрана
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
      ),
      body: Container(
        // Виджет "Контейнер" для создания отступов и управления внешним видом
        color: Colors.white,
=======
class _GoalScreenState extends State<GoalScreen> {
  int completedAnswers = 0; // Переменная для отслеживания выполненных ответов
  final String _labelTitle =
      'Что мотивирует вас больше всего?'; // Заголовок вопроса

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Цель'), // Заголовок AppBar
        centerTitle: true, // Центрирование заголовка
        elevation: 0,
        backgroundColor: Colors.white, // Белый фон для AppBar
        foregroundColor: Colors.black, // Черный цвет текста
      ),
      body: Container(
        color: Colors.white, // Белый фон для body
>>>>>>> origin/main
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text(
<<<<<<< HEAD
              _labelTitle,
              style: TextStyle(fontSize: 29, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20.0),
            // Виджет для вопроса с вариантами ответов
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
            // Виджет "Поднятая кнопка" для перехода к следующему вопросу
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
=======
              _labelTitle, // Отображение заголовка вопроса
              style: TextStyle(fontSize: 29, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center, // Центрирование текста
            ),
            const SizedBox(height: 20.0), // Вертикальный отступ

            // Заполнитель для виджета первого вопроса-ответа
            SizedBox(height: 30.0),
            QuestionAnswerWidget(
              iconData: Icons.thumb_up_outlined,
              labelText: 'Чувствовать себя уверенно',
            ),
            SizedBox(height: 25.0),
            QuestionAnswerWidget(
              iconData: Icons.sentiment_satisfied_alt_outlined,
              labelText: 'Снять стресс',
            ),
            SizedBox(height: 25.0),
            QuestionAnswerWidget(
              iconData: Icons.favorite_border_outlined,
              labelText: 'Улучшить здоровье',
            ),
            SizedBox(height: 25.0),
            QuestionAnswerWidget(
              iconData: Icons.electric_bolt_outlined,
              labelText: 'Зарядится энергий',
            ),
            SizedBox(height: 25.0),
            QuestionAnswerWidget(
              iconData: Icons.self_improvement_outlined,
              labelText: 'Набрать форму',
            ),
            SizedBox(height: 25.0),

            // Заполнитель для виджета второго вопроса-ответа
            // QuestionAnswerWidget(),
            // SizedBox(height: 25.0),

            const SizedBox(height: 60.0), // Вертикальный отступ

            // Кнопка "Следующее"
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SolePurpose()),
                );
                setState(() {
                  completedAnswers++; // Увеличиваем счетчик выполненных ответов
                });
              },
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(double.infinity, 50),
                backgroundColor: const Color.fromRGBO(255, 51, 119, 1),
>>>>>>> origin/main
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              child: Text(
<<<<<<< HEAD
                'СЛЕДУЮЩЕЕ',
=======
                'СЛЕДУЩЕЕ', // Применяем капс
>>>>>>> origin/main
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
<<<<<<< HEAD

  // Метод для обновления состояния кнопки "СЛЕДУЮЩЕЕ"
  void updateButtonState(bool isSelected) {
    setState(() {
      isButtonEnabled = isSelected;
    });
  }
=======
>>>>>>> origin/main
}
