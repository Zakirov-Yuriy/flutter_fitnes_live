import 'package:flutter/material.dart';
import 'package:flutter_fitnes_live/screens/survey_screens/how_much_you_weigh_screen.dart';
import 'package:flutter_fitnes_live/widgets/survey_screens/indicate%20your%20height/height_ruler_centimeters_widget.dart';
import 'package:flutter_fitnes_live/widgets/survey_screens/indicate%20your%20height/height_ruler_feet_widget.dart';

import '../../widgets/survey_screens/button/next_ruler_button.dart';

class IndicateYourHeightScreen extends StatefulWidget {
  @override
  _IndicateYourHeightScreenState createState() =>
      _IndicateYourHeightScreenState();
}

class _IndicateYourHeightScreenState extends State<IndicateYourHeightScreen> {
  double heightValue = 165.0; // Исходное значение роста
  List<bool> isSelected = [true, false]; // Первая кнопка активна по умолчанию
  bool isHeightSelected = false; // Переменная для отслеживания выбора роста

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Данные о теле'),
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
              'Каков ваш рост?',
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
                  buildToggleButton('cm', 0),
                  buildToggleButton('ft', 1),
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
            Visibility(
              visible: isSelected[0],
              child: HeightRulerCentimetersVertical(
                height: heightValue,
                onChanged: handleHeightChange,
              ),
            ),
            Visibility(
              visible: isSelected[1],
              child: HeightRulerFeetVertical(
                height: heightValue,
                onChanged: handleHeightChange,
              ),
            ),

            NextRulerCustomButtonWidget(
              buttonText: 'СЛЕДУЮЩЕЕ',
              destinationWidget: HowMuchYouWeigh(),
              isButtonEnabled: isHeightSelected,
              onPressed: isHeightSelected
                  ? () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HowMuchYouWeigh(),
                        ),
                      );
                    }
                  : null,
            ),
            // Expanded(
            //   child: Align(
            //     alignment: FractionalOffset.bottomCenter,
            //     child: ElevatedButton(
            //       onPressed: isHeightSelected
            //           ? () {
            //               Navigator.push(
            //                 context,
            //                 MaterialPageRoute(
            //                   builder: (context) => HowMuchYouWeigh(),
            //                 ),
            //               );
            //             }
            //           : null,
            //       style: ElevatedButton.styleFrom(
            //         minimumSize: const Size(double.infinity, 50),
            //         backgroundColor: isHeightSelected
            //             ? const Color.fromRGBO(255, 51, 119, 1)
            //             : Colors.grey,
            //         shape: RoundedRectangleBorder(
            //           borderRadius: BorderRadius.circular(30),
            //         ),
            //       ),
            //       child: Text(
            //         'СЛЕДУЮЩЕЕ',
            //         style: TextStyle(
            //           fontSize: 24.0,
            //           color: Colors.white,
            //         ),
            //       ),
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }

  void handleHeightChange(double value) {
    setState(() {
      heightValue = value;
      isHeightSelected = true;
    });
  }

  void handleToggleButtons(int index) {
    setState(() {
      for (int buttonIndex = 0;
          buttonIndex < isSelected.length;
          buttonIndex++) {
        if (buttonIndex == index) {
          isSelected[buttonIndex] = true;
        } else {
          isSelected[buttonIndex] = false;
        }
      }
    });
  }

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
}
