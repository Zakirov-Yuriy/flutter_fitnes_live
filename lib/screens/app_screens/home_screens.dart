import 'package:flutter/material.dart';
import '../../widgets/app_screens/main_screen/container_carousel_widget.dart';
import '../../widgets/app_screens/workout_screen/container_carousel_widget_one.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.edit_calendar_outlined),
          color: Color.fromRGBO(255, 51, 119, 1),
          onPressed: () {
            // Действие по нажатию на иконку календаря
          },
        ),
        // Остальные параметры AppBar

        actions: [
          // Дополнительные действия AppBar, если есть
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              alignment: Alignment.bottomLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 10, bottom: 10),
                child: Text(
                  'Фитнес для женщин',
                  style: TextStyle(
                      fontSize: 23,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 0),
                ),
              ),
            ),

            Container(
              alignment: Alignment.bottomLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 10, bottom: 5),
                child: Text(
                  'Программа',
                  style: TextStyle(
                      fontSize: 16, letterSpacing: 0, color: Colors.blueGrey),
                ),
              ),
            ),

            // Контент страницы
            // Карусель с двумя контейнерами
            ContainerCarouselOne(),
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
