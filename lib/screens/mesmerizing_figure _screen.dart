import 'package:flutter/material.dart';
import 'package:flutter_fitnes_live/screens/how_much_you_weigh_screen.dart';

class MesmerizingFigure extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/girl-measuring.png'),
            fit: BoxFit.cover, // чтобы изображение покрывало весь контейнер
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Заголовок и текст
            SizedBox(height: 550),
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  RichText(
                    textAlign: TextAlign.center,
                    text: const TextSpan(
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30.0,
                        color: Color.fromARGB(255, 255, 255, 255),
                        height: 1.5,
                      ),
                      children: [
                        TextSpan(
                          text: 'Завораживающая \nФигура ',
                        ),
                        TextSpan(
                          style: TextStyle(
                            fontSize: 26,
                            fontWeight: FontWeight.bold,
                            color: Colors.amberAccent,
                            height:
                                1.5, // Установите значение height по вашему усмотрению
                          ),
                          text: '\nза 8-10 минут в день',
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Align(
                alignment: FractionalOffset.bottomCenter,
                child: Padding(
                  padding:
                      const EdgeInsets.only(bottom: 15.0, left: 16, right: 16),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => HowMuchYouWeigh()),
                      );
                      // Добавьте код здесь для обработки нажатия кнопки
                    },
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size(double.infinity, 50),
                      backgroundColor: const Color.fromRGBO(255, 51, 119, 1),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    child: const Text(
                      'НАЧАТЬ', // Текст кнопки "НАЧАТЬ" прописан заглавными буквами
                      style: TextStyle(
                        fontSize: 24.0,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
