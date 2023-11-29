import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_fitnes_live/screens/next_screen_widget.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
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

    // Имитация задержки загрузки (в данном случае 5 секунд)
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
                  'assets/images/bg.jpeg',
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
                  Text(
                    'Workout',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 48.0,
                    ),
                  ),
                  Text(
                    'for women',
                    style: TextStyle(
                      color: Color.fromARGB(255, 230, 108, 108),
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
