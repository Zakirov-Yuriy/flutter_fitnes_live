import 'package:flutter/material.dart';
import '../../../../divider_your_body_widget.dart';
import '../../../exercise_widget.dart';

class FaceExercisesThighsContent extends StatelessWidget {
  const FaceExercisesThighsContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Divider(
          color: Colors.grey,
          thickness: 1,
        ),
        const ExerciseWidget(
          imagePath:
              'assets/images/training_image/workout_image/Face exercises/_AEIOU_.png',
          exerciseText: 'AEIOU',
          setText: 'Длительность',
          durationText: '3 повторение 30s',
          subtitleText:
              'Упражнение для лица: Формирование "О" губами и удерживание этой позы на несколько секунд, затем расслабление. Это упражнение может помочь укрепить мышцы щек и губ.',
          videoUrl:
              'https://firebasestorage.googleapis.com/v0/b/fitnes-live-db.appspot.com/o/video%2FFace_exercises%2F_AEIOU_.mp4?alt=media&token=81f76b66-4b07-49ba-8c86-69372844c38f',
        ),
        CustomDivider(),
        const ExerciseWidget(
          imagePath:
              'assets/images/training_image/workout_image/Face exercises/CHEEK_FIRMER.png',
          exerciseText: 'CHEEK FIRMER',
          setText: 'Длительность',
          durationText: '3 повторение 30s',
          subtitleText:
              'Улыбнитесь широко, вытягивая губы к ушам. Напрягите щеки к зубам, удерживая 5-10 секунд. Расслабьте мускулатуру. Повторите 10-15 раз.Это упражнение поможет укрепить и тонизировать мышцы щек и подтянуть контуры лица.',
          videoUrl:
              'https://firebasestorage.googleapis.com/v0/b/fitnes-live-db.appspot.com/o/video%2FFace_exercises%2FCHEEK%20FIRMER.mp4?alt=media&token=04abd626-5d3a-4d87-b83f-85395ba449cd',
        ),
        CustomDivider(),
        const ExerciseWidget(
          imagePath:
              'assets/images/training_image/workout_image/Face exercises/DRAWN_CHEEKS.png',
          exerciseText: 'DRAWN CHEEKS',
          setText: 'Длительность',
          durationText: '3 повторение 30s',
          subtitleText:
              'Усаживайтесь прямо, помогите себе руками, чтобы натянуть кожу на скулах. Напрягите мышцы щек и удерживайте это положение на 5-10 секунд. Расслабьте щеки и повторите упражнение 10-15 раз. Это упражнение помогает укрепить и подтянуть мускулатуру щек для более контурного и подтянутого вида лица.',
          videoUrl:
              'https://firebasestorage.googleapis.com/v0/b/fitnes-live-db.appspot.com/o/video%2FFace_exercises%2FDRAWN%20CHEEKS.mp4?alt=media&token=ed8bfa2e-f5a6-47d6-a6aa-600768643e65',
        ),
        CustomDivider(),
        const ExerciseWidget(
          imagePath:
              'assets/images/training_image/workout_image/Face exercises/EYE_LIFT.png',
          exerciseText: 'EYE LIFT',
          setText: 'Длительность',
          durationText: '3 повторение 30s',
          subtitleText:
              'Сядьте прямо и закройте глаза.Напрягите мышцы вокруг глаз, поднимая брови как можно выше. Удерживайте эту позу на 5-10 секунд. Расслабьте мышцы и повторите 10-15 раз. Это упражнение помогает укрепить и подтянуть кожу вокруг глаз, уменьшая появление морщин и придавая лицу более молодой и бодрый вид.',
          videoUrl:
              'https://firebasestorage.googleapis.com/v0/b/fitnes-live-db.appspot.com/o/video%2FFace_exercises%2FEYE%20LIFT.mp4?alt=media&token=5f3c4c14-ac8f-49b2-be47-f0461c41aebf',
        ),
        CustomDivider(),
        const ExerciseWidget(
          imagePath:
              'assets/images/training_image/workout_image/Face exercises/EYES_CIRCLES.png',
          exerciseText: 'EYES CIRCLES',
          setText: 'Длительность',
          durationText: '3 повторение 30s',
          subtitleText:
              'Сядьте прямо и закройте глаза. Нарисуйте медленные круговые движения глазами в одном направлении. Повторите круговые движения в другом направленииВыполните по 10-15 повторений в каждом направлении. Это упражнение помогает улучшить циркуляцию крови вокруг глаз, снять напряжение и усталость, а также улучшить тонус кожи и уменьшить появление морщин в этой области.',
          videoUrl:
              'https://firebasestorage.googleapis.com/v0/b/fitnes-live-db.appspot.com/o/video%2FFace_exercises%2FEYES%20CIRCLES.mp4?alt=media&token=3391646c-6e98-415a-bf9a-48e45720a791',
        ),
        CustomDivider(),
        const ExerciseWidget(
          imagePath:
              'assets/images/training_image/workout_image/Face exercises/JAW_LINE.png',
          exerciseText: 'JAW LINE',
          setText: 'Длительность',
          durationText: '3 повторение 30s',
          subtitleText:
              'Сядьте прямо и наклонитесь назад, поднимая лицо к потолку.Сморщите губы, чтобы поднять нижнюю часть лица и подбородок.Удерживайте эту позу на 5-10 секунд. Расслабьте мышцы и повторите 10-15 раз. Это упражнение помогает укрепить мышцы подбородка и подтянуть линию челюсти для более контурного и подтянутого вида лица.',
          videoUrl:
              'https://firebasestorage.googleapis.com/v0/b/fitnes-live-db.appspot.com/o/video%2FFace_exercises%2FJAW%20LINE.mp4?alt=media&token=a824229a-a12e-48bc-b2ca-2ba0de77f7fd',
        ),
        CustomDivider(),
        const ExerciseWidget(
          imagePath:
              'assets/images/training_image/workout_image/Face exercises/LION.png',
          exerciseText: 'LION',
          setText: 'Длительность',
          durationText: '3 повторение 30s',
          subtitleText:
              'Сядьте прямо и откройте рот как можно шире, высунув язык.Поверните глаза вверх и напрягите мышцы лица. Удерживайте эту позу на 5-10 секунд. Расслабьте мышцы и повторите 10-15 раз. Это упражнение помогает растянуть и укрепить мышцы лица, улучшая контур и тонус кожи.',
          videoUrl:
              'https://firebasestorage.googleapis.com/v0/b/fitnes-live-db.appspot.com/o/video%2FFace_exercises%2FLION.mp4?alt=media&token=6c1dc0ba-6351-4f06-a29f-992742fc7a12',
        ),
        CustomDivider(),
        const ExerciseWidget(
          imagePath:
              'assets/images/training_image/workout_image/Face exercises/LIPS_DOWN_PULL.png',
          exerciseText: 'LIPS DOWN PULL',
          setText: 'Длительность',
          durationText: '3 повторение 30s',
          subtitleText:
              'Сядьте прямо и наклонитесь назад, поднимая лицо к потолку.Сомкните губы и вытяните их вниз, словно тянете их к подбородку. Удерживайте это положение на 5-10 секунд. Расслабьте губы и повторите упражнение 10-15 раз. Это упражнение помогает укрепить мышцы подбородка и контуры лица, способствуя более подтянутому и упругому виду кожи.',
          videoUrl:
              'https://firebasestorage.googleapis.com/v0/b/fitnes-live-db.appspot.com/o/video%2FFace_exercises%2FLIPS%20DOWN%20PULL.mp4?alt=media&token=3cf81356-1c95-425b-bf94-54137422070e',
        ),
        CustomDivider(),
        const ExerciseWidget(
          imagePath:
              'assets/images/training_image/workout_image/Face exercises/MARILYN.png',
          exerciseText: 'MARILYN',
          setText: 'Длительность',
          durationText: '3 повторение 30s',
          subtitleText:
              'Улыбнитесь и сверните губы внутрь, образуя трубочку. Напрягите губы и удерживайте эту позу на несколько секунд.  Потяните губы вперед, растягивая трубочку. Удерживайте эту позу на несколько секунд, затем расслабьте губы. Повторите упражнение несколько раз. Это упражнение помогает укрепить мышцы губ и подтянуть их контуры.',
          videoUrl:
              'https://firebasestorage.googleapis.com/v0/b/fitnes-live-db.appspot.com/o/video%2FFace_exercises%2FMARILYN.mp4?alt=media&token=fb08cf51-7533-418f-8b15-636fa4272c32',
        ),
        CustomDivider(),
        const ExerciseWidget(
          imagePath:
              'assets/images/training_image/workout_image/Face exercises/MOUTH_CIRCLES.png',
          exerciseText: 'MOUTH CIRCLES',
          setText: 'Длительность',
          durationText: '3 повторение 30s',
          subtitleText:
              'Сядьте прямо и закройте губы. Начните медленно вращать головой вокруг оси в одном направлении, воображая, что ваш рот рисует круги. Продолжайте вращать головой в течение 10-15 секунд. Затем повторите вращение в противоположном направлении. Это упражнение помогает укрепить мышцы вокруг рта и улучшить контур губ.',
          videoUrl:
              'https://firebasestorage.googleapis.com/v0/b/fitnes-live-db.appspot.com/o/video%2FFace_exercises%2FMOUTH%20CIRCLES.mp4?alt=media&token=5eeae0d3-5871-4679-8157-e7730c6a9eae',
        ),
        CustomDivider(),
        const ExerciseWidget(
          imagePath:
              'assets/images/training_image/workout_image/Face exercises/NECK_LIFT.png',
          exerciseText: 'NECK LIFT',
          setText: 'Длительность',
          durationText: '3 повторение 30s',
          subtitleText:
              'Сядьте прямо или станьте на прямую спину. Поднимите голову вверх, чтобы ваш взгляд был направлен к потолку. Медленно начните наклонять голову назад, растягивая переднюю часть шеи. Удерживайте позу на несколько секунд. Вернитесь в исходное положение и повторите упражнение. Это упражнение помогает укрепить мышцы шеи и улучшить ее тонус.',
          videoUrl:
              'https://firebasestorage.googleapis.com/v0/b/fitnes-live-db.appspot.com/o/video%2FFace_exercises%2FNECK%20LIFT.mp4?alt=media&token=5a7980ed-f628-40dc-b687-4609b58a607a',
        ),
        CustomDivider(),
        const ExerciseWidget(
          imagePath:
              'assets/images/training_image/workout_image/Face exercises/NOSE_TOUCHING.png',
          exerciseText: 'NOSE TOUCHING',
          setText: 'Длительность',
          durationText: '3 повторение 30s',
          subtitleText:
              'Сядьте прямо и расслабьте плечи. Вытяните язык так, чтобы кончик языка касался носа или приближался к нему. Удерживайте позицию на несколько секунд, чувствуя растяжение на лице. Вернитесь в исходное положение и повторите несколько раз. Это упражнение помогает укрепить и растянуть мышцы языка и лица, улучшая их тонус и гибкость.',
          videoUrl:
              'https://firebasestorage.googleapis.com/v0/b/fitnes-live-db.appspot.com/o/video%2FFace_exercises%2FNOSE%20TOUCHING.mp4?alt=media&token=43c2bcfe-ba33-4d16-9d1f-94a5a571cf2b',
        ),
        CustomDivider(),
        const ExerciseWidget(
          imagePath:
              'assets/images/training_image/workout_image/Face exercises/PUFFY_CHEEKS.png',
          exerciseText: 'PUFFY CHEEKS',
          setText: 'Длительность',
          durationText: '3 повторение 30s',
          subtitleText:
              'Сядьте прямо и расслабьте плечи. Надуйте щеки, наполняя их воздухом. Удерживайте воздух в щеках в течение 5-10 секунд. Медленно выпустите воздух из щек и расслабьте мышцы. Повторите упражнение несколько раз. Это упражнение помогает укрепить и тонизировать мышцы щек, что может помочь уменьшить пухлость и придать лицу более подтянутый вид.',
          videoUrl:
              'https://firebasestorage.googleapis.com/v0/b/fitnes-live-db.appspot.com/o/video%2FFace_exercises%2FPUFFY%20CHEEKS.mp4?alt=media&token=ad8be357-e50c-4338-9b11-fa68bb894222',
        ),
        CustomDivider(),
        const ExerciseWidget(
          imagePath:
              'assets/images/training_image/workout_image/Face exercises/SMILE.png',
          exerciseText: 'SMILE',
          setText: 'Длительность',
          durationText: '3 повторение 30s',
          subtitleText:
              'Сядьте прямо и расслабьте плечи. Улыбнитесь широко, поднимая уголки губ к ушам. Удерживайте улыбку на несколько секунд. Расслабьте лицевые мышцы и повторите несколько раз. Это упражнение помогает укрепить и подтянуть мышцы лица, делая контур более ярким и выразительным.',
          videoUrl:
              'https://firebasestorage.googleapis.com/v0/b/fitnes-live-db.appspot.com/o/video%2FFace_exercises%2FSMILE.mp4?alt=media&token=12941ffa-b6a7-441b-a686-3a9005482f5a',
        ),
        CustomDivider(),
        const ExerciseWidget(
          imagePath:
              'assets/images/training_image/workout_image/Face exercises/UNDERCHIN_DUCK.png',
          exerciseText: 'UNDERCHIN DUCK',
          setText: 'Длительность',
          durationText: '3 повторение 30s',
          subtitleText:
              'Подберите подбородок внутрь, стараясь максимально прижать его к шее. Удерживайте это положение на несколько секунд, чувствуя напряжение в мышцах подбородка и шеи. Расслабьте мышцы и повторите упражнение несколько раз. Это упражнение помогает укрепить мышцы подбородка и шеи, что может помочь в борьбе с двойным подбородком и создании более подтянутого контура лица.',
          videoUrl:
              'https://firebasestorage.googleapis.com/v0/b/fitnes-live-db.appspot.com/o/video%2FFace_exercises%2FUNDERCHIN%20DUCK.mp4?alt=media&token=de0de133-0d95-4c5f-bc9e-8aaa348c951c',
        ),
        CustomDivider(),
        const ExerciseWidget(
          imagePath:
              'assets/images/training_image/workout_image/Face exercises/SMILING_FISH_FACE.png',
          exerciseText: 'SMILING FISH FACE',
          setText: 'Длительность',
          durationText: '3 повторение 30s',
          subtitleText:
              'Усаживайтесь прямо и расслабьте плечи. Улыбнитесь широко, поднимая уголки губ к ушам. Затем сделайте "рыбью гримасу", сдвигая уголки губ в стороны и выпячивая щеки. Удерживайте эту позу на несколько секунд. Вернитесь в исходное положение и повторите упражнение несколько раз. Это упражнение помогает укрепить и тонизировать различные группы мышц лица, в том числе щеки и губы, для более подтянутого и выразительного вида.',
          videoUrl:
              'https://firebasestorage.googleapis.com/v0/b/fitnes-live-db.appspot.com/o/video%2FFace_exercises%2FSMILING%20FISH%20FACE.mp4?alt=media&token=ffb3d7ee-9e79-4d37-b9fd-5d0960ff87fc',
        ),
        CustomDivider(),
      ],
    );
  }
}
