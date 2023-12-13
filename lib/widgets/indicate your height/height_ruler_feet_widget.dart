import 'package:flutter/material.dart';

class HeightRulerFeet extends StatelessWidget {
  final double height;
  final ValueChanged<double>? onChanged;

  HeightRulerFeet({required this.height, this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 510,
      width: 150,
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: 100,
        itemBuilder: (context, index) {
          final value = (205 - index) / 30.48; // Конвертируем в футы

          // Определить цвет и размер для цифр
          Color textColor = index % 2 == 0 ? Colors.black : Colors.grey;
          double fontSize = index % 2 == 0 ? 16.0 : 10.0;
          Color lineColor = index % 2 == 0 ? Colors.black : Colors.grey;
          double lineWidth = index % 2 == 0 ? 20.0 : 10;

          return GestureDetector(
            onTap: () {
              if (onChanged != null) {
                onChanged!(value.toDouble());
              }
            },
            child: Row(
              children: [
                Container(
                  width: 30,
                  height: 20,
                  alignment: Alignment.center,
                  color: Colors.transparent,
                  child: Text(
                    '${value.toStringAsFixed(2)}', // Ограничиваем количество знаков после запятой
                    style: TextStyle(
                      color: textColor,
                      fontSize: fontSize,
                    ),
                  ),
                ),
                Container(
                  width: lineWidth,
                  height: 1,
                  color: lineColor,
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
