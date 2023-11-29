import 'package:flutter/material.dart';

// import 'package:flutter_fitnes_live/icons/app_icons.dart';

class QuestionAnswerWidget extends StatefulWidget {
  @override
  _QuestionAnswerWidgetState createState() => _QuestionAnswerWidgetState();
}

class _QuestionAnswerWidgetState extends State<QuestionAnswerWidget> {
  bool isSelected1 = false;
  bool isSelected2 = false;
  // Переменная для текста
  final String _labelText = 'Чувствовать себя уверенно';

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isSelected1 = !isSelected1;
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
          children: [
            // const IconsQuestionWidget(
            //   iconCode: 0xe518, // замените на правильное значение кодовой точки
            // ),
            Icon(
              Icons.access_alarm_rounded,
              color: isSelected1 ? Colors.black : Colors.black,
            ),
            const SizedBox(width: 10),
            Text(
              _labelText,
              style: TextStyle(
                fontSize: 18,
                color: isSelected1 ? Colors.black : Colors.black,
              ),
            ),
            const SizedBox(width: 40),
            Icon(
              isSelected1 ? Icons.check_circle : Icons.radio_button_unchecked,
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
