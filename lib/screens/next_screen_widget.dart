import 'package:flutter/material.dart';
import 'package:flutter_fitnes_live/screens/goal_screen.dart';

class NextScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Фотография (занимает половину экрана)
          Container(
            height: MediaQuery.of(context).size.height / 2,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                    'assets/images/anna_photo.jpg'), // Замените на вашу фотографию
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
                  'Привет, я Анна!',
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
                        text: 'персональный план',
                        style: TextStyle(
                          color: Color.fromARGB(255, 230, 108, 108),
                        ),
                      ),
                      TextSpan(
                        text: ' для вас.',
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 80),
                // Кнопка "Начать"
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => GoalScreen()),
                    );
                    // Добавьте здесь код для обработки нажатия кнопки
                  },
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(double.infinity, 50),
                    backgroundColor: const Color.fromARGB(255, 230, 108, 108),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  child: const Text(
                    'Начать',
                    style: TextStyle(
                      fontSize: 30.0,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
