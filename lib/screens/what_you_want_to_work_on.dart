import 'package:flutter/material.dart';
import 'package:flutter_fitnes_live/screens/sole_purpose_screen.dart';
import 'package:flutter_fitnes_live/widgets/what%20you%20want%20to%20work%20on/what_you_want_to_work_on_widget.dart';

class WhatYouWantToWorkOn extends StatefulWidget {
  @override
  _WhatYouWantToWorkOnState createState() => _WhatYouWantToWorkOnState();
}

class _WhatYouWantToWorkOnState extends State<WhatYouWantToWorkOn> {
  int completedAnswers = 0;
  final String _labelTitle = 'Что хотите \nпроработать?';

  List<bool> isSelectedList = List.generate(6, (index) => false);
  bool isButtonEnabled = false;

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
              _labelTitle,
              style: TextStyle(fontSize: 29, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20.0),
            Row(
              children: [
                Image.asset(
                  'assets/images/girl-with.png',
                  width: 222,
                  height: 490,
                ),
                Column(
                  children: [
                    WhatYouWantToWorkOnWidget(
                      labelText: 'Руки',
                      onSelected: (isSelected) =>
                          updateButtonState(isSelected, 0),
                      startPoint: Offset(0, 30),
                      endPoint: Offset(-100, 30),
                      ballRadius: 0.0,
                      secondLineEnd: Offset(-110, 85),
                      secondBallRadius: 5.0,
                    ),
                    SizedBox(height: 20.0),
                    WhatYouWantToWorkOnWidget(
                      labelText: 'Грудь',
                      onSelected: (isSelected) =>
                          updateButtonState(isSelected, 1),
                      startPoint: Offset(30, 30),
                      endPoint: Offset(-60, 50),
                      ballRadius: 0.0,
                      secondLineEnd: Offset(-150, 30),
                      secondBallRadius: 5.0,
                    ),
                    SizedBox(height: 20.0),
                    WhatYouWantToWorkOnWidget(
                      labelText: 'Живот',
                      onSelected: (isSelected) =>
                          updateButtonState(isSelected, 2),
                      startPoint: Offset(10, 10),
                      endPoint: Offset(-20, 20),
                      ballRadius: 5.0,
                      secondLineEnd: Offset(-145, -10),
                      secondBallRadius: 5.0,
                    ),
                    SizedBox(height: 20.0),
                    WhatYouWantToWorkOnWidget(
                      labelText: 'Ягодицы',
                      onSelected: (isSelected) =>
                          updateButtonState(isSelected, 3),
                      startPoint: Offset(40, 30),
                      endPoint: Offset(-20, 20),
                      ballRadius: 5.0,
                      secondLineEnd: Offset(-105, -70),
                      secondBallRadius: 5.0,
                    ),
                    SizedBox(height: 20.0),
                    WhatYouWantToWorkOnWidget(
                      labelText: 'Икры',
                      onSelected: (isSelected) =>
                          updateButtonState(isSelected, 4),
                      startPoint: Offset(10, 30),
                      endPoint: Offset(-50, -22),
                      ballRadius: 5.0,
                      secondLineEnd: Offset(-150, 10),
                      secondBallRadius: 5.0,
                    ),
                    SizedBox(height: 20.0),
                    // WhatYouWantToWorkOnWidget(
                    //   labelText: 'Все тело',
                    //   onSelected: (isSelected) =>
                    //       updateButtonState(isSelected, 5),
                    //   startPoint: Offset(0, 0),
                    //   endPoint: Offset(0, 0),
                    //   ballRadius: 0.0,
                    //   secondLineEnd: Offset(0, 0),
                    //   secondBallRadius: 0,
                    // ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 70.0),
            ElevatedButton(
              onPressed: isButtonEnabled
                  ? () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SolePurpose()),
                      );
                      setState(() {
                        completedAnswers++;
                      });
                    }
                  : null,
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(double.infinity, 50),
                backgroundColor: isButtonEnabled
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

  void updateButtonState(bool isSelected, int index) {
    setState(() {
      isSelectedList[index] = isSelected;

      if (index == 5 && isSelected) {
        for (int i = 0; i < isSelectedList.length - 1; i++) {
          isSelectedList[i] = true;
        }
      }

      isButtonEnabled = isSelectedList.any((isSelected) => isSelected);
    });
  }
}
