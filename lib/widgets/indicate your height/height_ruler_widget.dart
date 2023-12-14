import 'package:flutter/material.dart';

class HeightRulerCentimeters extends StatelessWidget {
  final double height;
  final ValueChanged<double>? onChanged;

  HeightRulerCentimeters({required this.height, this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 510,
      width: 150,
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: 100,
        itemBuilder: (context, index) {
          final value = 205 - index;

          Color textColor = Colors.black;
          double fontSize = 16.0;
          Color lineColor = Colors.black;
          double lineWidth = 20.0;

          if (value % 10 != 0) {
            textColor = Colors.grey;
            fontSize = 10.0;
            lineColor = Colors.grey;
            lineWidth = 10;
          }

          return GestureDetector(
            onTap: () {
              if (onChanged != null) {
                onChanged!(value.toDouble());
              }
              onChanged?.call(value.toDouble());
            },
            child: Row(
              children: [
                Container(
                  width: 30,
                  height: 20,
                  alignment: Alignment.center,
                  color: Colors.transparent,
                  child: Text(
                    '$value',
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
