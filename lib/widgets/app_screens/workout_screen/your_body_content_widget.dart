import 'package:flutter/material.dart';

import '../divider_your_body_widget.dart';
import 'exercise_widget.dart';

class YourBodyContent extends StatelessWidget {
  const YourBodyContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Divider(
          color: Colors.grey,
          thickness: 1,
        ),
        ExerciseWidget(
          imagePath: 'assets/images/workout_image/Burpees.gif',
          exerciseText: 'Burpees',
          setText: 'Длительность',
          durationText: '31s',
          subtitleText:
              'Как делать бурпи - преимущества, прорабатываемые мышцы Бурпе - это плиометрическое упражнение. Плиометрика - это взрывные аэробные движения, которые увеличивают скорость, быстроту и силу и прорабатывают все тело.',
        ),
        CustomDivider(),
        ExerciseWidget(
          imagePath: 'assets/images/workout_image/walking_in_place.gif',
          exerciseText: 'Хадьба на месте',
          setText: 'Длительность',
          durationText: '31s',
          subtitleText:
              'Эта тренировка является отличным кардионагрузочным упражнением и может быть эффективной частью фитнес-регима. Она улучшает выносливость, укрепляет ноги и ягодицы, а также способствует сжиганию калорий.',
        ),
        CustomDivider(),
        ExerciseWidget(
          imagePath: 'assets/images/12.gif',
          exerciseText: 'Упражнение 3',
          setText: 'Длительность',
          durationText: '31s',
          subtitleText:
              'Ваш подзаголовок здесьВаш подзаголовок здесьВаш подзаголовок здесьВаш подзаголовок здесьВаш подзаголовок здесьВаш подзаголовок здесьВаш подзаголовок здесьВаш подзаголовок здесь',
        ),
        CustomDivider(),
      ],
    );
  }
}
