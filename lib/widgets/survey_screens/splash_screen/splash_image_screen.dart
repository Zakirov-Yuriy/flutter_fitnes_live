//Загрущочный экран
// Загружаем необходимые библиотеки
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_fitnes_live/screens/survey_screens/next_anna_screen.dart';

// Класс для создания загрузочного экрана
class SplashImageScreen extends StatefulWidget {
  const SplashImageScreen({super.key});

  @override
  _SplashImageScreenState createState() => _SplashImageScreenState();
}

class _SplashImageScreenState extends State<SplashImageScreen>
    with SingleTickerProviderStateMixin {
  // Контроллер для управления анимацией
  late AnimationController _controller;

  // Анимация для изменения размера
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();

    // Инициализация контроллера анимации
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 3),
    );

    // Инициализация анимации
    _animation = Tween(begin: 1.0, end: 1.2).animate(_controller);

    // Запуск анимации
    _controller.forward();

    // Имитация задержки загрузки (в данном случае 3 секунды)
    Future.delayed(const Duration(seconds: 3), () {
      // После завершения задержки перейдите на следующий экран
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => NextScreen(),
        ),
      );
    });
  }

  @override
  void dispose() {
    _controller
        .dispose(); // Обязательно освободите ресурсы контроллера анимации
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        fit: StackFit.expand,
        children: [
          // Фоновая картинка с анимацией размера
          AnimatedBuilder(
            animation: _animation,
            builder: (context, child) {
              return Transform.scale(
                scale: _animation.value,
                child: Image.asset(
                  'assets/images/survey_screens_image/bg.jpeg',
                  fit: BoxFit.cover,
                ),
              );
            },
          ),

          // Текст
          Positioned(
            bottom: 230.0,
            width: MediaQuery.of(context).size.width,
            child: const Center(
              child: Column(
                children: [
                  // Заголовок "Workout" с белым цветом и размером шрифта 48.0
                  Text(
                    'Workout',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 48.0,
                    ),
                  ),
                  // Подзаголовок "for women" с цветом #FF3377 и размером шрифта 48.0
                  Text(
                    'for women',
                    style: TextStyle(
                      color: Color.fromRGBO(255, 51, 119, 1),
                      fontSize: 48.0,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
