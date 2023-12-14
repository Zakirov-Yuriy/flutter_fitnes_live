/*Этот файл представляет собой виджет Flutter для создания экрана, на котором пользователь может указать свой рост. */

import 'package:flutter/material.dart';
import 'package:flutter_fitnes_live/screens/how_much_you_weigh_screen.dart';

import 'package:flutter_fitnes_live/widgets/indicate%20your%20height/height_ruler_feet_widget.dart';
import 'package:flutter_fitnes_live/widgets/indicate%20your%20height/height_ruler_widget.dart';

enum MeasurementUnit { Centimeters, Feet }

class IndicateYourHeight extends StatefulWidget {
  @override
  _IndicateYourHeightState createState() => _IndicateYourHeightState();
}

class _IndicateYourHeightState extends State<IndicateYourHeight> {
  List<bool> isSelected = [true, false];
  MeasurementUnit selectedUnit = MeasurementUnit.Centimeters;
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
            Text(
              'Укажите свой рост',
              style: TextStyle(fontSize: 29, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 30),
            Container(
              height: 35,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 230, 228, 228),
                borderRadius: BorderRadius.circular(30),
              ),
              child: ToggleButtons(
                children: [
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
            Container(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  SizedBox(width: 10),
                  Expanded(
                    child: Stack(
                      children: [
                        selectedUnit == MeasurementUnit.Centimeters
                            ? HeightRulerCentimeters(
                                height: heightValue,
                                onChanged: handleHeightChange,
                              )
                            : HeightRulerFeet(
                                height: heightValue,
                                onChanged: handleHeightChange,
                              ),
                        Positioned(
                          top: 60,
                          left: 50,
                          right: -30,
                          child: Container(
                            height: 2,
                            color: Color.fromRGBO(255, 51, 119, 1),
                          ),
                        ),
                        Positioned(
                          top: 30,
                          left: 113,
                          child: Container(
                            padding: EdgeInsets.only(right: 10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            child: Text(
                              '$heightValue',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 30.0,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
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
                        right: 125,
                        child: Container(
                          height: 2,
                          color: Color.fromRGBO(255, 51, 119, 1),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: (isSelected[0] || isSelected[1])
                  ? () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => HowMuchYouWeigh()),
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

  void handleHeightChange(double value) {
    setState(() {
      heightValue = value;
    });
  }
}
