/*
Файл NextScreen отвечает за экран, который представляет собой приветствие от   тренера (Анны)
 и содержит кнопку для перехода к основному экрану с вопросами о целях пользователя.
 */

// Импорт необходимых библиотек
import 'package:flutter/material.dart';
import 'package:flutter_fitnes_live/screens/question_answer_screen.dart';

import '../widgets/button/start_button.dart';

// Класс для создания NextScreen
class NextScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 40),
          // Фотография (занимает половину экрана)
          Container(
            height: MediaQuery.of(context).size.height / 2,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/anna_photo.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),

          // Заголовок и текст
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 40),
                const Text(
                  'Привет, я Анна!', // Текст приветствия
                  style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 16.0),
                RichText(
                  textAlign: TextAlign.start,
                  text: const TextSpan(
                    style: TextStyle(fontSize: 21.0, color: Colors.black),
                    children: [
                      TextSpan(
                        text:
                            'Я ваш личный тренер.\nУ меня есть пара вопросов к вам, они помогут составить ',
                      ),
                      TextSpan(
                        text:
                            'персональный план', // Текст "персональный план" жирным шрифтом и с определенным цветом
                        style: TextStyle(
                          color: Color.fromRGBO(255, 51, 119, 1),
                        ),
                      ),
                      TextSpan(
                        text: ' для вас.',
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

          // Кнопка "Начать"
          StartCustomButtonWidget(
            buttonText: 'НАЧАТЬ',
            destinationWidget: GoalScreen(),
          ),
          // Expanded(
          //   child: Align(
          //     alignment: FractionalOffset.bottomCenter,
          //     child: Padding(
          //       padding:
          //           const EdgeInsets.only(bottom: 15.0, left: 16, right: 16),
          //       child: ElevatedButton(
          //         onPressed: () {
          //           Navigator.push(
          //             context,
          //             MaterialPageRoute(builder: (context) => GoalScreen()),
          //           );
          //           // Добавьте код здесь для обработки нажатия кнопки
          //         },
          //         style: ElevatedButton.styleFrom(
          //           minimumSize: const Size(double.infinity, 50),
          //           backgroundColor: const Color.fromRGBO(255, 51, 119, 1),
          //           shape: RoundedRectangleBorder(
          //             borderRadius: BorderRadius.circular(30),
          //           ),
          //         ),
          //         child: const Text(
          //           'НАЧАТЬ', // Текст кнопки "НАЧАТЬ" прописан заглавными буквами
          //           style: TextStyle(
          //             fontSize: 24.0,
          //             color: Colors.white,
          //           ),
          //         ),
          //       ),
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }
}
