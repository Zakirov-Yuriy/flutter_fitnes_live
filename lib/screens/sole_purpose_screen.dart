import 'package:flutter/material.dart';
import 'package:flutter_fitnes_live/widgets/sole%20purpose/sole_purpose_widget.dart';

class SolePurpose extends StatefulWidget {
  @override
  _SolePurposeState createState() => _SolePurposeState();
}

class _SolePurposeState extends State<SolePurpose> {
  int completedAnswers = 0;
  final String _labelTitle = 'Какая у вас главная \nцель?';

  int openedWidgetIndex = -1;

  void updateOpenedWidgetIndex(int index) {
    setState(() {
      openedWidgetIndex = openedWidgetIndex == index ? -1 : index;
    });
  }

  @override
  Widget build(BuildContext context) {
<<<<<<< HEAD
    bool isButtonEnabled = openedWidgetIndex != -1;

    return Scaffold(
      backgroundColor: Colors.white,
=======
    return Scaffold(
>>>>>>> origin/main
      appBar: AppBar(
        title: const Text('Цель'),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Text(
                _labelTitle,
                style: TextStyle(fontSize: 29, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 40.0),
              SolePurposeWidget(
                labelText: 'Сбросить вес',
                imagePath: 'assets/images/snap1.png',
                isSelected: openedWidgetIndex == 0,
                onTap: () => updateOpenedWidgetIndex(0),
              ),
              SizedBox(height: 25.0),
              SolePurposeWidget(
                labelText: 'Нарастить мышечную массу',
                imagePath: 'assets/images/snap2.png',
                isSelected: openedWidgetIndex == 1,
                onTap: () => updateOpenedWidgetIndex(1),
              ),
              SizedBox(height: 25.0),
              SolePurposeWidget(
                labelText: 'Быть в форме',
                imagePath: 'assets/images/snap3.png',
                isSelected: openedWidgetIndex == 2,
                onTap: () => updateOpenedWidgetIndex(2),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        elevation: 0,
        padding: EdgeInsets.only(bottom: 40),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
          child: ElevatedButton(
<<<<<<< HEAD
            onPressed: isButtonEnabled
                ? () {
                    setState(() {
                      completedAnswers++;
                    });
                  }
                : null,
            style: ElevatedButton.styleFrom(
              minimumSize: const Size(double.infinity, 50),
              backgroundColor: isButtonEnabled
                  ? const Color.fromRGBO(255, 51, 119, 1)
                  : Colors.grey, // Измените цвет, как вам нужно
=======
            onPressed: () {
              setState(() {
                completedAnswers++;
              });
            },
            style: ElevatedButton.styleFrom(
              minimumSize: const Size(double.infinity, 50),
              backgroundColor: const Color.fromRGBO(255, 51, 119, 1),
>>>>>>> origin/main
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
        ),
      ),
    );
  }
}
