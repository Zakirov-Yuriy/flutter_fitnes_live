// exercise_details_bottom_sheet.dart

import 'package:flutter/material.dart';

class ExerciseDetailsBottomSheet extends StatelessWidget {
  final String imagePath;
  final String exerciseText;
  final String subtitleText;
  final String setText;
  final String durationText;

  ExerciseDetailsBottomSheet({
    required this.imagePath,
    required this.exerciseText,
    required this.subtitleText,
    required this.setText,
    required this.durationText,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image(
              image: AssetImage(imagePath),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 10, top: 16),
              child: Row(
                children: [
                  Text(
                    exerciseText,
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                    softWrap: true,
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  setText,
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
                Text(
                  durationText,
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
              ],
            ),
            Divider(
              color: Color.fromRGBO(255, 51, 119, 1),
              thickness: 1,
            ),
            SizedBox(height: 8),
            Text(
              subtitleText,
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            SizedBox(height: 26),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop(); // Закрытие BottomSheet
              },
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(double.infinity, 50),
                backgroundColor: Color.fromRGBO(
                    255, 51, 119, 1), // Цвет кнопки при отсутствии onPressed
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              child: Text(
                'Закрыть',
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
