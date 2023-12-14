/*Пользователь видит вопрос "Сколько вы весите?" и выбирает единицы измерения между килограммами (kg) и фунтами (ld). */
import 'package:flutter/material.dart';
import 'package:flutter_fitnes_live/screens/indicate_your_height_screen.dart';
import 'package:flutter_fitnes_live/widgets/how%20much%20you%20weigh/height_ruler_kilograms_widget.dart';
import 'package:flutter_fitnes_live/widgets/how%20much%20you%20weigh/height_ruler_pounds_widget.dart';

// Определение перечисления для единиц измерения
enum MeasurementUnit { Centimeters, Feet }

class HowMuchYouWeigh extends StatefulWidget {
  @override
  _HowMuchYouWeighState createState() => _HowMuchYouWeighState();
}

class _HowMuchYouWeighState extends State<HowMuchYouWeigh> {
  List<bool> isSelected = [
    true,
    false
  ]; // Индикаторы выбора для кнопок "kg" и "ld"
  MeasurementUnit selectedUnit =
      MeasurementUnit.Centimeters; // Выбранная единица измерения
  double weightValue = 60.0; // Исходное значение веса

  @override
  Widget build(BuildContext context) {
    // Создание основного интерфейса приложения
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
            // Заголовок вопроса о весе
            Text(
              'Сколько вы весите?',
              style: TextStyle(fontSize: 29, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 30),
            // Кнопки для выбора единиц измерения
            Container(
              height: 35,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 230, 228, 228),
                borderRadius: BorderRadius.circular(30),
              ),
              child: ToggleButtons(
                children: [
                  buildToggleButton('kg', 0),
                  buildToggleButton('ld', 1),
                ],
                isSelected: isSelected,
                onPressed: handleToggleButtons,
                selectedColor: Colors.transparent,
                fillColor: Colors.transparent,
                borderColor: Colors.transparent,
                borderWidth: 0,
              ),
            ),
            SizedBox(height: 30),
            // Вывод линейки в зависимости от выбранной единицы измерения
            buildSelectedRuler(),
            SizedBox(height: 20),
            // Кнопка "СЛЕДУЮЩЕЕ"
            ElevatedButton(
              onPressed: (isSelected[0] || isSelected[1])
                  ? () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => IndicateYourHeight(),
                        ),
                      );
                    }
                  : null,
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(double.infinity, 50),
                backgroundColor: isSelected[0] || isSelected[1]
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

  // Создание кнопки для выбора единиц измерения
  Widget buildToggleButton(String label, int index) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.horizontal(
          left: Radius.circular(30),
          right: Radius.circular(30),
        ),
        color: isSelected[index]
            ? const Color.fromRGBO(255, 51, 119, 1)
            : const Color.fromARGB(255, 230, 228, 228),
      ),
      width: 75,
      height: 35,
      alignment: Alignment.center,
      child: Text(
        label,
        style: TextStyle(
          fontSize: 18,
          color: isSelected[index] ? Colors.white : Colors.black,
        ),
      ),
    );
  }

  // Обработка нажатия на кнопки выбора единиц измерения
  void handleToggleButtons(int index) {
    setState(() {
      for (int buttonIndex = 0;
          buttonIndex < isSelected.length;
          buttonIndex++) {
        isSelected[buttonIndex] = buttonIndex == index;
      }

      // Установка выбранной единицы измерения в зависимости от индекса кнопки
      selectedUnit =
          index == 0 ? MeasurementUnit.Centimeters : MeasurementUnit.Feet;
    });
  }

  // Вывод линейки в зависимости от выбранной единицы измерения
  Widget buildSelectedRuler() {
    if (selectedUnit == MeasurementUnit.Centimeters) {
      return HeightRulerKilograms(
        height: weightValue,
        onChanged: handleWeightChange,
      );
    } else {
      return HeightRulerPounds(
        weightInPounds: weightValue,
      );
    }
  }

  // Обработка изменения веса
  void handleWeightChange(double value) {
    setState(() {
      weightValue = value;
    });
  }
}
