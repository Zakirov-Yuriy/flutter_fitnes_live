<<<<<<< HEAD
/*
  Этот файл содержит виджет для отображения вопроса с вариантами ответа.
  Виджет реагирует на касание, позволяя пользователю выбирать варианты ответа.
*/

// Импорт необходимых библиотек
=======
/*Этот файл содержит виджет для отображения вопроса с вариантами ответа. Виджет реагирует на касание, позволяя пользователю выбирать варианты ответа. */

>>>>>>> origin/main
import 'package:flutter/material.dart';
import 'package:flutter_fitnes_live/widgets/question%20answer/%D1%81omponent_questin_widget.dart';

<<<<<<< HEAD
// Виджет для вопроса с вариантами ответа
class QuestionAnswerWidget extends StatefulWidget {
  final IconData iconData; // Иконка для отображения варианта ответа
  final String labelText; // Текст варианта ответа
  final ValueChanged<bool>? onSelected; // Callback-функция для обработки выбора

  // Конструктор с параметрами
  const QuestionAnswerWidget({
    Key? key,
    required this.iconData,
    required this.labelText,
    this.onSelected,
  }) : super(key: key);
=======
// Виджет для отображения вопроса с вариантами ответа
class QuestionAnswerWidget extends StatefulWidget {
  final IconData iconData; // Переменная для передачи иконки в виджет
  final String labelText; // Переменная для передачи текста в виджет

  // Конструктор с обязательным параметром иконки
  QuestionAnswerWidget(
      {Key? key, required this.iconData, required this.labelText})
      : super(key: key);
>>>>>>> origin/main

  @override
  _QuestionAnswerWidgetState createState() => _QuestionAnswerWidgetState();
}

// Состояние виджета вопроса с вариантами ответа
class _QuestionAnswerWidgetState extends State<QuestionAnswerWidget> {
<<<<<<< HEAD
  bool isSelected = false; // Флаг выбора ответа
=======
  bool isSelected1 = false; // Флаг выбора ответа
  // final String _labelText = 'Чувствовать себя уверенно'; // Текст вопроса
>>>>>>> origin/main

  // Метод для построения виджета
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
<<<<<<< HEAD
          isSelected = !isSelected; // Переключение флага выбора при касании
          widget.onSelected
              ?.call(isSelected); // Вызов callback-функции при выборе
=======
          isSelected1 = !isSelected1; // Переключение флага выбора при тапе
>>>>>>> origin/main
        });
      },
      child: Container(
        height: 87,
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          border: Border.all(
            width: isSelected ? 2 : 2,
            color: isSelected
                ? const Color.fromRGBO(255, 51, 119, 1)
                : Colors.grey,
          ),
          color: isSelected
              ? const Color.fromRGBO(255, 225, 234, 1)
              : Colors.white,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
<<<<<<< HEAD
            Container(
              width: 40, // Фиксированная ширина контейнера для иконки
              child: Icon(
                widget.iconData,
                size: 30.0,
                color: Colors.black,
              ),
            ),
            const SizedBox(width: 10),
            Expanded(
              child: Text(
                widget.labelText,
                style: TextStyle(
                  fontSize: 18.0,
                  color: Colors.black,
                  fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
                ),
              ),
=======
            // Используем виджет ComponentWidget с переданной иконкой
            Row(
              children: [
                ComponentWidget(
                  iconData: widget.iconData,
                ),
                const SizedBox(width: 10),
                Text(
                  widget.labelText,
                  style: TextStyle(
                    fontSize: 18,
                    color: isSelected1 ? Colors.black : Colors.black,
                  ),
                ),
              ],
>>>>>>> origin/main
            ),

            const SizedBox(width: 40),
            Icon(
<<<<<<< HEAD
              isSelected
                  ? Icons.check_circle_outlined
                  : Icons.radio_button_unchecked,
              color: isSelected ? Colors.black : Colors.grey,
=======
              isSelected1
                  ? Icons.check_circle_outlined
                  : Icons.radio_button_unchecked,
              color: isSelected1
                  ? Colors.black
                  : const Color.fromRGBO(229, 229, 229, 1),
>>>>>>> origin/main
            ),
          ],
        ),
      ),
    );
  }
}
