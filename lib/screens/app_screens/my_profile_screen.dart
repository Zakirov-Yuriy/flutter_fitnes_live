import 'package:flutter/material.dart';

class MyProfileScreen extends StatefulWidget {
  @override
  _MyProfileScreenState createState() => _MyProfileScreenState();
}

class _MyProfileScreenState extends State<MyProfileScreen> {
  // Переменные для данных профиля
  String avatarUrl =
      'https://example.com/avatar.jpg'; // Замените на свою ссылку на аватар
  int height = 175; // Рост в см
  int weight = 70; // Вес в кг
  String gender = 'Мужской'; // Мужской или Женский
  int birthYear = 1990; // Год рождения

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Мой профиль'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Аватарка
            Center(
              child: CircleAvatar(
                radius: 50,
                backgroundImage: NetworkImage(avatarUrl),
              ),
            ),

            SizedBox(height: 20),

            // Строка с ростом
            buildProfileRow('Рост', '$height см'),

            // Строка с весом
            buildProfileRow('Вес', '$weight кг'),

            // Строка с полом
            buildGenderRow(),

            // Строка с годом рождения
            buildProfileRow('Год рождения', '$birthYear'),

            // Дополнительный контент
          ],
        ),
      ),
    );
  }

  // Метод для построения строки профиля
  Widget buildProfileRow(String label, String value) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          label,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          value,
          style: TextStyle(
            fontSize: 16,
          ),
        ),
        SizedBox(height: 20),
      ],
    );
  }

  // Метод для построения строки с выбором пола
  Widget buildGenderRow() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Пол',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        Row(
          children: [
            ElevatedButton(
              onPressed: () {
                // Действие при выборе мужского пола
                setState(() {
                  gender = 'Мужской';
                });
              },
              child: Text('М'),
            ),
            SizedBox(width: 10),
            ElevatedButton(
              onPressed: () {
                // Действие при выборе женского пола
                setState(() {
                  gender = 'Женский';
                });
              },
              child: Text('Ж'),
            ),
          ],
        ),
        SizedBox(height: 20),
      ],
    );
  }
}
