import 'package:flutter/material.dart';
import '../../widgets/app_screens/calendar_screen/calendar_screen.dart';
import '../../widgets/app_screens/workout_screen/training_screen/Container_Carousel_Five/Tight_toned_arms/container_carousel_widget_one.dart';
import '../../widgets/app_screens/workout_screen/training_screen/Container_Carousel_Four/Bigger_booty/container_carousel_widget_one.dart';
import '../../widgets/app_screens/workout_screen/training_screen/Container_Carousel_One/your_body/container_carousel_widget_one.dart';
import '../../widgets/app_screens/workout_screen/training_screen/Container_Carousel_Six/Face Exercises/container_carousel_widget_one.dart';
import '../../widgets/app_screens/workout_screen/training_screen/Container_Carousel_Three/Belly_fat_burner/container_carousel_widget_one.dart';
import '../../widgets/app_screens/workout_screen/training_screen/Container_Carousel_Two/Legs_and_thighs/container_carousel_widget_one.dart';

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
          icon: const Icon(Icons.edit_calendar_outlined),
          color: const Color.fromRGBO(255, 51, 119, 1),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const CalendarScreen()),
            );
          },
        ),
        // Остальные параметры AppBar
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              alignment: Alignment.bottomLeft,
              child: const Padding(
                padding: EdgeInsets.only(left: 10, bottom: 10),
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
              child: const Padding(
                padding: EdgeInsets.only(left: 10, bottom: 5),
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
            const SizedBox(height: 20),
            ContainerCarouselTwo(),
            const SizedBox(height: 20),
            ContainerCarouselThree(),
            const SizedBox(height: 20),
            ContainerCarouselFour(),
            const SizedBox(height: 20),
            ContainerCarouselFive(),
            const SizedBox(height: 20),
            ContainerCarouselSix(),
            const SizedBox(height: 20),
            // Дополнительный контент
          ],
        ),
      ),
    );
  }
}
