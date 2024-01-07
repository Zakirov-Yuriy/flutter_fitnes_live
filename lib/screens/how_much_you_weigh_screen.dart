import 'package:flutter/material.dart';
import 'package:flutter_fitnes_live/screens/mesmerizing_figure%20_screen.dart';
import 'package:flutter_fitnes_live/widgets/how%20much%20you%20weigh/height_ruler_kilograms_widget.dart';
import 'package:flutter_fitnes_live/widgets/how%20much%20you%20weigh/height_ruler_pounds_widget.dart';

import '../widgets/button/next_how_button.dart';

class BMIIndicator extends StatelessWidget {
  final double bmi;

  BMIIndicator({required this.bmi});

  String getCategory(double bmi) {
    if (bmi < 18.5) {
      return 'Недостаточный вес. Измени вес с фитнес-приложением: трени, следи за прогрессом, достигай целей! 💪';
    } else if (bmi >= 18.5 && bmi <= 24.9) {
      return 'Нормальный вес. Поддерживаю! Изменяй вес с фитнес-приложением: тренируйся, достигай целей, обрети здоровье! 💪';
    } else if (bmi >= 25.0 && bmi <= 29.9) {
      return 'Избыточный вес. Победи избыточный вес! Фитнес-приложение - твой гид. Трени, достигай целей, обретай здоровье! 💪';
    } else if (bmi >= 30.0 && bmi <= 34.9) {
      return 'Ожирение I степени. Борись с ожирением I степени! Фитнес-приложение поможет. Тренируйся, преодолевай, стремись к здоровью! 💪';
    } else if (bmi >= 35.0 && bmi <= 39.9) {
      return 'Ожирение II степени. Побеждай ожирение II степени! Фитнес-приложение - твой путь. Тренируйся, стремись к здоровью, преодолевай! 💪';
    } else {
      return 'Ожирение III степени. Преодолей ожирение III степени! Фитнес-приложение - твой союзник. Тренируйся, стремись к здоровью, сила в движении! 💪';
    }
  }

  @override
  Widget build(BuildContext context) {
    String category = getCategory(bmi);

    return Container(
      width: double.infinity,
      height: 200,
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 230, 228, 228),
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Column(
        children: [
          Padding(padding: EdgeInsets.only(top: 20)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                'ТУКЕЩИЙ ИМТ:',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(width: 70),
              Text(
                bmi.toStringAsFixed(1),
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 28, 122, 199),
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          Row(
            children: [
              Flexible(
                child: Text(
                  textAlign: TextAlign.center,
                  'У вас: $category',
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

enum MeasurementUnit { Kilograms, Pounds }

class HowMuchYouWeigh extends StatefulWidget {
  @override
  _HowMuchYouWeighState createState() => _HowMuchYouWeighState();
}

class _HowMuchYouWeighState extends State<HowMuchYouWeigh> {
  List<bool> isSelected = [true, false];
  MeasurementUnit selectedUnit = MeasurementUnit.Kilograms;
  double weightValue = 60.0;
  double heightValue = 1.75; // Пример значения роста (в метрах)
  double bmiValue = 0.0; // Инициализация ИМТ

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
              'Сколько вы весите?',
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
            buildSelectedRuler(),
            SizedBox(height: 20),
            BMIIndicator(bmi: bmiValue),
            NextHowCustomButtonWidget(
              buttonText: 'СЛЕДУЮЩЕЕ',
              destinationWidget: MesmerizingFigure(),
              isButtonEnabled: (isSelected[0] || isSelected[1]) && bmiValue > 0,
              onPressed: (isSelected[0] || isSelected[1]) && bmiValue > 0
                  ? () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => MesmerizingFigure(),
                        ),
                      );
                    }
                  : null,
            ),
            // Expanded(
            //   child: Align(
            //     alignment: FractionalOffset.bottomCenter,
            //     child: ElevatedButton(
            //       onPressed: (isSelected[0] || isSelected[1]) && bmiValue > 0
            //           ? () {
            //               Navigator.push(
            //                 context,
            //                 MaterialPageRoute(
            //                   builder: (context) => MesmerizingFigure(),
            //                 ),
            //               );
            //             }
            //           : null,
            //       style: ElevatedButton.styleFrom(
            //         minimumSize: const Size(double.infinity, 50),
            //         backgroundColor:
            //             (isSelected[0] || isSelected[1]) && bmiValue > 0
            //                 ? const Color.fromRGBO(255, 51, 119, 1)
            //                 : Colors.grey,
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

  void handleToggleButtons(int index) {
    setState(() {
      for (int buttonIndex = 0;
          buttonIndex < isSelected.length;
          buttonIndex++) {
        isSelected[buttonIndex] = buttonIndex == index;
      }
      selectedUnit =
          index == 0 ? MeasurementUnit.Kilograms : MeasurementUnit.Pounds;
    });
  }

  Widget buildSelectedRuler() {
    if (selectedUnit == MeasurementUnit.Kilograms) {
      return Column(
        children: [
          HeightRulerKilograms(
            height: weightValue,
            onChanged: handleWeightChange,
          ),
        ],
      );
    } else {
      return Column(
        children: [
          HeightRulerPounds(
            weightInPounds: weightValue,
          ),
        ],
      );
    }
  }

  void handleWeightChange(double value) {
    setState(() {
      weightValue = value;
    });

    double bmi = weightValue / (heightValue * heightValue);

    updateBMI(bmi);
  }

  void updateBMI(double bmi) {
    setState(() {
      bmiValue = bmi;
    });
  }
}
