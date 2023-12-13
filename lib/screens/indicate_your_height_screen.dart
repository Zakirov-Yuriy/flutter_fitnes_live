/*Этот файл представляет собой виджет Flutter для создания экрана, на котором пользователь может указать свой рост. */

// Импорт необходимых пакетов Flutter
import 'package:flutter/material.dart';
import 'package:flutter_fitnes_live/screens/sole_purpose_screen.dart';
import 'package:flutter_fitnes_live/widgets/indicate%20your%20height/height_ruler_feet_widget.dart';
import 'package:flutter_fitnes_live/widgets/indicate%20your%20height/height_ruler_widget.dart';

// Перечисление для единиц измерения
enum MeasurementUnit { Centimeters, Feet }

// Виджет для указания роста
class IndicateYourHeight extends StatefulWidget {
  @override
  _IndicateYourHeightState createState() => _IndicateYourHeightState();
}

class _IndicateYourHeightState extends State<IndicateYourHeight> {
  // Список флагов для кнопок выбора единиц измерения
  List<bool> isSelected = [true, false];

  // Выбранная единица измерения
  MeasurementUnit selectedUnit = MeasurementUnit.Centimeters;

  // Значение роста по умолчанию
  double heightValue = 140.0;

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
            // Заголовок
            Text(
              'Укажите свой рост',
              style: TextStyle(fontSize: 29, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 30),
            // Контейнер для кнопок выбора единиц измерения
            Container(
              height: 35,
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 230, 228, 228),
                  borderRadius: BorderRadius.circular(30)),
              child: ToggleButtons(
                children: [
                  // Кнопка для сантиметров
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        bottomLeft: Radius.circular(30),
                        bottomRight: Radius.circular(30),
                        topRight: Radius.circular(30),
                      ),
                      color: isSelected[0]
                          ? const Color.fromRGBO(255, 51, 119, 1)
                          : const Color.fromARGB(255, 230, 228, 228),
                    ),
                    width: 75,
                    height: 35,
                    alignment: Alignment.center,
                    child: Text(
                      'см',
                      style: TextStyle(
                        fontSize: 18,
                        color: isSelected[0] ? Colors.white : Colors.black,
                      ),
                    ),
                  ),
                  // Кнопка для футов
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(30),
                        bottomRight: Radius.circular(30),
                        topLeft: Radius.circular(30),
                        bottomLeft: Radius.circular(30),
                      ),
                      color: isSelected[1]
                          ? const Color.fromRGBO(255, 51, 119, 1)
                          : const Color.fromARGB(255, 230, 228, 228),
                    ),
                    width: 75,
                    height: 35,
                    alignment: Alignment.center,
                    child: Text(
                      'ft.',
                      style: TextStyle(
                        fontSize: 18,
                        color: isSelected[1] ? Colors.white : Colors.black,
                      ),
                    ),
                  ),
                ],
                isSelected: isSelected,
                onPressed: (int index) {
                  setState(() {
                    for (int buttonIndex = 0;
                        buttonIndex < isSelected.length;
                        buttonIndex++) {
                      isSelected[buttonIndex] = buttonIndex == index;
                    }

                    selectedUnit = index == 0
                        ? MeasurementUnit.Centimeters
                        : MeasurementUnit.Feet;
                  });
                },
                selectedColor: Colors.transparent,
                fillColor: Colors.transparent,
                borderColor: Colors.transparent,
                borderWidth: 0,
              ),
            ),
            SizedBox(height: 20),
            // Ряд для отображения линейки и изображения
            Container(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  SizedBox(width: 10),
                  Expanded(
                    child: Stack(
                      children: [
                        // Линейка в зависимости от выбранной единицы измерения
                        selectedUnit == MeasurementUnit.Centimeters
                            ? HeightRulerCentimeters(
                                height: heightValue,
                                onChanged: (value) {
                                  setState(() {
                                    heightValue = value;
                                  });
                                },
                              )
                            : HeightRulerFeet(
                                height: heightValue,
                                onChanged: (value) {
                                  setState(() {
                                    heightValue = value;
                                  });
                                },
                              ),
                        // Горизонтальная линия
                        Positioned(
                          top: 60,
                          left: 50,
                          right:
                              -30, // Измените это значение, чтобы линия заходила на изображение
                          child: Container(
                            height: 3,
                            color: Color.fromRGBO(255, 51, 119, 1),
                          ),
                        ),
                      ],
                    ),
                  ),
                  // Изображение с дополнительной горизонтальной линией
                  Stack(
                    children: [
                      Image.asset(
                        'assets/images/girl-over.png',
                        height: 450,
                        fit: BoxFit.contain,
                      ),
                      Positioned(
                        top: 0,
                        left: 0,
                        right:
                            105, // Измените это значение, чтобы линия заходила на изображение
                        child: Container(
                          height: 3,
                          color: Color.fromRGBO(255, 51, 119, 1),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            // Кнопка для перехода на следующий экран
            ElevatedButton(
              onPressed: (isSelected[0] || isSelected[1])
                  ? () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SolePurpose()),
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
}
