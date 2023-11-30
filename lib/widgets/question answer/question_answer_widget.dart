import 'package:flutter/material.dart';

class QuestionAnswerWidget extends StatefulWidget {
  final IconData iconData;
  final String labelText;
  final ValueChanged<bool>? onSelected;

  const QuestionAnswerWidget({
    Key? key,
    required this.iconData,
    required this.labelText,
    this.onSelected,
  }) : super(key: key);

  @override
  _QuestionAnswerWidgetState createState() => _QuestionAnswerWidgetState();
}

class _QuestionAnswerWidgetState extends State<QuestionAnswerWidget> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isSelected = !isSelected;
          widget.onSelected?.call(isSelected);
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
            ),
            const SizedBox(width: 40),
            Icon(
              isSelected
                  ? Icons.check_circle_outlined
                  : Icons.radio_button_unchecked,
              color: isSelected ? Colors.black : Colors.grey,
            ),
          ],
        ),
      ),
    );
  }
}
