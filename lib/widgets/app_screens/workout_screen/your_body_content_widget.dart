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
          imagePath: 'assets/images/workout_image/Running.gif',
          exerciseText: 'Бег',
          setText: 'Длительность',
          durationText: '3 повторение 60s',
          subtitleText:
              'Эта тренировка является отличным кардионагрузочным упражнением и может быть эффективной частью фитнес-регима. Она улучшает выносливость, укрепляет ноги и ягодицы, а также способствует сжиганию калорий.',
        ),
        CustomDivider(),
        ExerciseWidget(
          imagePath: 'assets/images/workout_image/Sumo_Squat_Jumps.gif',
          exerciseText: 'Сумо приседания прыжки',
          setText: 'Длительность',
          durationText: '3 повторение 60s',
          subtitleText:
              'Сумо приседания с прыжками: станьте в позу с широким расставлением ног, носки наружу. Приседайте, затем с силой прыгайте вверх. Повторяйте для укрепления ног и кардио.',
        ),
        CustomDivider(),
        ExerciseWidget(
          imagePath: 'assets/images/workout_image/Mountain_Climbers.gif',
          exerciseText: 'Горные альпинисты',
          setText: 'Длительность',
          durationText: '3 повторение 60s',
          subtitleText:
              'Примите планку, подтягивайте колено к груди поочередно, поддерживая высокий темп. Укрепляйте ядро и ноги, улучшайте выносливость. ',
        ),
        CustomDivider(),
        ExerciseWidget(
          imagePath: 'assets/images/workout_image/Touch_Ground_Star.gif',
          exerciseText: 'Звездный прыжок',
          setText: 'Длительность',
          durationText: '3 повторение 60s',
          subtitleText:
              'Стартуйте в широкой постановке, выпрыгивайте вверх, руки и ноги расправлены. Приземляйтесь мягко. Эффективно для кардио и укрепления мышц.',
        ),
        CustomDivider(),
        ExerciseWidget(
          imagePath: 'assets/images/workout_image/Boxing_Jabs.gif',
          exerciseText: 'Боксерские джебы',
          setText: 'Длительность',
          durationText: '3 повторение 60s',
          subtitleText:
              'Стойте в боксерской позе, быстро выполняйте короткие удары левой и правой рукой вперед. Развивайте скорость, координацию и реакцию.',
        ),
        CustomDivider(),
        ExerciseWidget(
          imagePath: 'assets/images/workout_image/High_Knees.gif',
          exerciseText: 'Высокие колени',
          setText: 'Длительность',
          durationText: '3 повторение 60s',
          subtitleText:
              'Бегите на месте, поднимая колени как можно выше. Увеличивайте темп для усиленной кардионагрузки и улучшения силы ног. Эффективно для разминки.',
        ),
        CustomDivider(),
        ExerciseWidget(
          imagePath: 'assets/images/workout_image/Lunge_Jumps.gif',
          exerciseText: 'Прыжки с выпадом',
          setText: 'Длительность',
          durationText: '3 повторение 30s',
          subtitleText:
              'Делайте шаг вперед, выпадая на одну ногу, затем прыгайте вверх и меняйте ноги в воздухе. Укрепляйте ноги и ягодицы. Повторяйте для эффективного тренировочного комплекса.',
        ),
        CustomDivider(),
        ExerciseWidget(
          imagePath: 'assets/images/workout_image/Lateral_Lunges.gif',
          exerciseText: 'Боковые выпады',
          setText: 'Длительность',
          durationText: '3 повторение 30s',
          subtitleText:
              'Стойте прямо, делайте шаг вбок, сгибая одну ногу в колене. Возвращайтесь в исходное положение. Укрепляйте бедра и ягодицы. Повторяйте для баланса и силы.',
        ),
        CustomDivider(),
        ExerciseWidget(
          imagePath: 'assets/images/workout_image/Squat_Dumbbell.gif',
          exerciseText: 'Приседание с гантелью',
          setText: 'Длительность',
          durationText: '3 повторение 30s',
          subtitleText:
              'Возьмите гантель, станьте в позу приседания, опуститесь, сохраняя прямую спину. Поднимайтесь обратно. Укрепляйте ноги и ягодицы. Повторяйте для силы и тонуса.',
        ),
        CustomDivider(),
        ExerciseWidget(
          imagePath: 'assets/images/workout_image/On_Side_Hip_Raises.gif',
          exerciseText: 'Боковые подъемы бедер',
          setText: 'Длительность',
          durationText: '3 повторение 30s',
          subtitleText:
              'Лягте на бок, поднимайте верхнюю ногу вверх, затем опускайте. Укрепляйте боковые мышцы и формируйте талию. Повторяйте для лучших результатов. ',
        ),
        CustomDivider(),
      ],
    );
  }
}
