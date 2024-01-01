import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_fitnes_live/screens/indicate_your_height_screen.dart';

// Основной класс виджета, представляющий экран ввода года рождения пользователя
class EnterYourBirthday extends StatefulWidget {
  @override
  _EnterYourBirthdayState createState() => _EnterYourBirthdayState();
}

// Состояние виджета для управления динамическими изменениями на экране
class _EnterYourBirthdayState extends State<EnterYourBirthday> {
  int completedAnswers = 0; // Счетчик завершенных ответов

  final String _labelTitle = 'Укажите свой год рождения'; // Заголовок экрана

  bool isButtonEnabled = false; // Флаг для активации/деактивации кнопки

  bool isBackgroundChanged = false; // Флаг, отслеживающий изменение фона

  // Выбранный год по умолчанию (начиная с 1994 года)
  int selectedYear = DateTime.now().year - 30;

  // Метод для построения пользовательского интерфейса
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Цель'), // Заголовок верхней панели
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
            ), // Заголовок экрана

            SizedBox(height: 30),

            // Контейнер с текстом, меняющим цвет и фон
            Container(
              margin: EdgeInsets.only(right: 6, left: 6),
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.0),
                color: isBackgroundChanged
                    ? Colors.pink
                    : Color.fromARGB(255, 234, 233, 233),
              ),
              child: Center(
                child: Text(
                  'Это поможет нам скорректировать ваш персональный план.',
                  style: TextStyle(
                    fontSize: 16.0,
                    color: isBackgroundChanged ? Colors.white : Colors.black,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ), // Контейнер с текстом, меняющим цвет и фон

            SizedBox(height: 40.0),

            // Вращающийся барабан с годами
            Container(
              height: 400,
              child: CupertinoPicker(
                itemExtent: 60.0,
                scrollController: FixedExtentScrollController(
                  initialItem: DateTime.now().year - 1959,
                ),
                onSelectedItemChanged: (int index) {
                  setState(() {
                    selectedYear = 1994 + index;
                    updateButtonState(true);
                    if (!isBackgroundChanged) {
                      isBackgroundChanged =
                          true; // Первое изменение фона и цвета текста
                    }
                  });
                },
                children: List.generate(
                  DateTime.now().year - 1931 + 1,
                  (index) => Center(
                    child: Text(
                      '${1932 + index}',
                      style: TextStyle(fontSize: 20.0),
                    ),
                  ),
                ),
              ),
            ), // Вращающийся барабан с годами

            SizedBox(height: 50.0),

            // Кнопка для перехода на следующий экран
            ElevatedButton(
              onPressed: isButtonEnabled
                  ? () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => IndicateYourHeightScreen()),
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
            ), // Кнопка для перехода на следующий экран
          ],
        ),
      ),
    );
  }

  // Метод для обновления состояния кнопки
  void updateButtonState(bool isSelected) {
    setState(() {
      isButtonEnabled = isSelected;
    });
  }
}
