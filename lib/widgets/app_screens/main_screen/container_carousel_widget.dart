import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ContainerCarousel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200, // Задайте высоту карусели по вашему желанию
      child: PageView(
        children: [
          // Первый контейнер
          Container(
            color: Colors.red,
            child: const Center(
              child: Text(
                'Контейнер 1',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),

          // Второй контейнер
          Container(
            color: Colors.green,
            child: const Center(
              child: Text(
                'Контейнер 2',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
