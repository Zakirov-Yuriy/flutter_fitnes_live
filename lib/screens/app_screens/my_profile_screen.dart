import 'package:flutter/material.dart';
import 'package:flutter_fitnes_live/provider/height_provider.dart';
import 'package:image_picker/image_picker.dart';
import 'package:provider/provider.dart';
import '../../provider/birth_year_provider.dart';
import '../../provider/weight_provider.dart';

class MyProfileScreen extends StatefulWidget {
  final int? height;

  MyProfileScreen({this.height});

  @override
  _MyProfileScreenState createState() => _MyProfileScreenState();
}

class _MyProfileScreenState extends State<MyProfileScreen> {
  // Измени объявление переменной weight
  int weight = 0; // Используй значение по умолчанию, которое нужно

  String formattedWeight() {
    return weight.toString();
  }

  String? avatarUrl;
  // int weight = 70;
  String gender = 'Мужской';
  // int birthYear = 1990;
  String userName = 'Пользователь'; // Имя пользователя
  List<bool> isSelected = [true, false]; // Изначально первая кнопка выбрана
  @override
  @override
  Widget build(BuildContext context) {
    // Используйте провайдер для получения данных о росте и единицах измерения
    int heightValue = Provider.of<HeightProvider>(context).heightValue;
    HeightUnit heightUnit = Provider.of<HeightProvider>(context).heightUnit;
    // Вместо использования переменной birthYear, получите значение из провайдера
    int birthYear = Provider.of<BirthYearProvider>(context).birthYear;
// Вместо использования напрямую значения weight, получите его из провайдера
    weight = Provider.of<WeightProvider>(context).weight.round();
    return Scaffold(
      appBar: AppBar(
        title: Text('Мой профиль'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Аватарка
            buildAvatar(),

            SizedBox(height: 20),

            // Текст "Пользователь"
            buildUserNameText(),
            SizedBox(height: 20),

            // Кнопки переключения
            // Center(
            //   child: Container(
            //     width: 300,
            //     height: 35,
            //     decoration: BoxDecoration(
            //       color: const Color.fromARGB(255, 230, 228, 228),
            //       borderRadius: BorderRadius.circular(10),
            //     ),
            //     child: Center(
            //       child: ToggleButtons(
            //         children: [
            //           buildToggleButton('Kg, Cm.', 0),
            //           buildToggleButton('Ld, Ft.', 1),
            //         ],
            //         isSelected: isSelected,
            //         onPressed: handleToggleButtons,
            //         selectedColor: Colors.transparent,
            //         fillColor: Colors.transparent,
            //         borderColor: Colors.transparent,
            //         borderWidth: 0,
            //       ),
            //     ),
            //   ),
            // ),

            SizedBox(height: 20),
            // Строка с ростом
            buildProfileRow('Рост',
                '$heightValue ${heightUnit == HeightUnit.centimeters ? 'см' : 'ft'}'),

            // Строка с весом
            buildProfileRow('Вес', '${formattedWeight()} кг'),
            SizedBox(height: 20),
            // Строка с полом
            buildGenderRow(),
            SizedBox(height: 20),
            // Строка с годом рождения
            buildProfileRow('Год рождения', '$birthYear'),

            // Дополнительный контент
          ],
        ),
      ),
    );
  }

  Widget buildToggleButton(String label, int index) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.horizontal(
          left: Radius.circular(10),
          right: Radius.circular(10),
        ),
        color: isSelected[index]
            ? const Color.fromRGBO(255, 51, 119, 1)
            : const Color.fromARGB(255, 230, 228, 228),
      ),
      width: 150,
      height: 35,
      alignment: Alignment.center,
      child: Text(
        label,
        style: TextStyle(
          fontSize: 18,
          color: isSelected[index] ? Colors.white : Colors.black,
        ),
      ),
    );
  }

  void handleToggleButtons(int index) {
    setState(() {
      for (int buttonIndex = 0;
          buttonIndex < isSelected.length;
          buttonIndex++) {
        isSelected[buttonIndex] = buttonIndex == index;
      }

      // Обновляем единицы измерения в провайдерах
      Provider.of<HeightProvider>(context, listen: false).toggleHeightUnit();
    });
  }

  Widget buildAvatar() {
    return GestureDetector(
      onTap: () {
        _showImageSourceDialog();
      },
      child: Center(
        child: CircleAvatar(
          radius: 50,
          backgroundImage: avatarUrl != null
              ? NetworkImage(avatarUrl!)
              : AssetImage('assets/images/avatar.jpg') as ImageProvider,
          child: avatarUrl == null
              ? IconButton(
                  icon: Icon(
                    Icons.add_a_photo,
                    color: Colors.grey.withOpacity(0.0),
                  ),
                  onPressed: () {
                    _showImageSourceDialog();
                  },
                )
              : null,
        ),
      ),
    );
  }

  // В методе buildUserNameText() добавьте иконку карандаша
  Widget buildUserNameText() {
    return GestureDetector(
      onTap: () {
        _showNameInputDialog();
      },
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              userName,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(width: 10),
            Icon(
              Icons.mode_edit_outlined, // Иконка карандаша
              size: 23,
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _showNameInputDialog() async {
    String? newName = await showDialog<String>(
      context: context,
      builder: (BuildContext context) {
        String tempName = userName;

        return AlertDialog(
          title: Text('Введите имя и фамилию'),
          content: TextField(
            onChanged: (value) {
              tempName = value;
            },
            decoration: InputDecoration(hintText: 'Имя и фамилия'),
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(); // Закрыть диалог без сохранения
              },
              child: Text('Отмена'),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(tempName); // Сохранить введенное имя
              },
              child: Text('Сохранить'),
            ),
          ],
        );
      },
    );

    // Обновить имя пользователя при необходимости
    if (newName != null && newName.isNotEmpty && newName != userName) {
      setState(() {
        userName = newName;
      });
    }
  }

  Future<void> _showImageSourceDialog() async {
    return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Выберите источник изображения'),
          actions: <Widget>[
            TextButton(
              child: Text('Галерея'),
              onPressed: () {
                _getImage(ImageSource.gallery);
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              child: Text('Камера'),
              onPressed: () {
                _getImage(ImageSource.camera);
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  Future<void> _getImage(ImageSource source) async {
    try {
      final picker = ImagePicker();
      final XFile? pickedFile = await picker.pickImage(source: source);

      if (pickedFile != null) {
        setState(() {
          avatarUrl = pickedFile.path;
        });
      }
    } catch (e) {
      print("Error picking image: $e");
    }
  }

  Widget buildProfileRow(String label, String value) {
    return Row(
      // crossAxisAlignment: CrossAxisAlignment.start,
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
            fontSize: 18,
          ),
        ),
      ],
    );
  }

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
                setState(() {
                  gender = 'Мужской';
                });
              },
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: Colors.pink, // Цвет текста
                padding: EdgeInsets.symmetric(
                    vertical: 8, horizontal: 50), // Поля вокруг текста
              ),
              child: Text(
                'М',
                style: TextStyle(fontSize: 18),
              ),
            ),
            SizedBox(width: 15), // Увеличьте расстояние между кнопками
            ElevatedButton(
              onPressed: () {
                setState(() {
                  gender = 'Женский';
                });
              },
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: Colors.pink, // Цвет текста
                padding: EdgeInsets.symmetric(
                    vertical: 8, horizontal: 50), // Поля вокруг текста
              ),
              child: Text(
                'Ж',
                style: TextStyle(fontSize: 18),
              ),
            ),
          ],
        ),
        SizedBox(height: 20),
      ],
    );
  }
}
