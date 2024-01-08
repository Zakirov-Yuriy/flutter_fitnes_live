import 'package:flutter/material.dart';
import '../../widgets/app_screens/main_screen/container_carousel_widget.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            icon: Icon(Icons.calendar_today),
            onPressed: () {
              // Действие по нажатию на иконку календаря
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              alignment: Alignment.bottomLeft,
              child: Text(
                'Фитнес для женщин',
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 0),
              ),
            ),
            // Контент страницы
            // Карусель с двумя контейнерами
            ContainerCarousel(),
            SizedBox(height: 20),
            ContainerCarousel(),
            SizedBox(height: 20),
            ContainerCarousel(),
            SizedBox(height: 20),
            ContainerCarousel(),
            // Дополнительный контент
          ],
        ),
      ),
    );
  }
}
