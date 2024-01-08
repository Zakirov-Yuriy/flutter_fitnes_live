// Файл main.dart представляет собой входную точку приложения Flutter.

// Импорт необходимых библиотек и экрана-заставки
import 'package:flutter/material.dart';
import 'widgets/survey_screens/splash_screen/splash_screen.dart';

// Главная функция, запускающая приложение
void main() {
  runApp(MyApp());
}

// Класс приложения (наследуется от StatelessWidget)
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // Возвращаем MaterialApp, конфигурируемый для отображения заставочного экрана
    return MaterialApp(
      debugShowCheckedModeBanner:
          false, // Отключение баннера отладки в режиме разработки

      home: SplashScreen(),

      // Установка экрана-заставки в качестве начального экрана
    );
  }
}
