/*Этот файл содержит виджет для отображения вопроса с вариантами ответа. Виджет реагирует на касание, позволяя пользователю выбирать варианты ответа. */

import 'package:flutter/material.dart';
import 'package:flutter_fitnes_live/widgets/question%20answer/%D1%81omponent_questin_widget.dart';

// Виджет для отображения вопроса с вариантами ответа
class QuestionAnswerWidget extends StatefulWidget {
  final IconData iconData; // Переменная для передачи иконки в виджет
  final String labelText; // Переменная для передачи текста в виджет

  // Конструктор с обязательным параметром иконки
  QuestionAnswerWidget(
      {Key? key, required this.iconData, required this.labelText})
      : super(key: key);

  @override
  _QuestionAnswerWidgetState createState() => _QuestionAnswerWidgetState();
}

class _QuestionAnswerWidgetState extends State<QuestionAnswerWidget> {
  bool isSelected1 = false; // Флаг выбора ответа
  // final String _labelText = 'Чувствовать себя уверенно'; // Текст вопроса

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isSelected1 = !isSelected1; // Переключение флага выбора при тапе
        });
      },
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          border: Border.all(
            width: isSelected1 ? 2 : 2,
            color: isSelected1
                ? const Color.fromRGBO(255, 51, 119, 1)
                : const Color.fromARGB(255, 210, 210, 210),
          ),
          color: isSelected1
              ? const Color.fromRGBO(255, 225, 234, 1)
              : Colors.white,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
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
            ),

            const SizedBox(width: 40),
            Icon(
              isSelected1
                  ? Icons.check_circle_outlined
                  : Icons.radio_button_unchecked,
              color: isSelected1
                  ? Colors.black
                  : const Color.fromRGBO(229, 229, 229, 1),
            ),
          ],
        ),
      ),
    );
  }
}
