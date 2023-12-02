/*
  Этот файл содержит виджет для отображения элемента выбора цели в приложении.
  Виджет представляет собой контейнер с изображением и описанием цели.
  При выборе цели виджет меняет стиль и отображает дополнительную информацию.
*/

// Импорт необходимых библиотек и кастомных иконок
import 'package:flutter/material.dart';
import 'package:flutter_fitnes_live/costom_icons.dart';

// Виджет для отображения элемента выбора цели
class SolePurposeWidget extends StatefulWidget {
  final String labelText; // Текстовое описание цели
  final String imagePath; // Путь к изображению цели
  final bool isSelected; // Флаг выбора цели
  final VoidCallback onTap; // Callback-функция при нажатии на виджет

  SolePurposeWidget({
    Key? key,
    required this.labelText,
    required this.imagePath,
    required this.isSelected,
    required this.onTap,
  }) : super(key: key);

  @override
  _SolePurposeWidgetState createState() => _SolePurposeWidgetState();
}

// Состояние виджета выбора цели
class _SolePurposeWidgetState extends State<SolePurposeWidget> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.only(left: 20, right: 3),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              border: Border.all(
                width: widget.isSelected ? 2 : 2,
                color: widget.isSelected
                    ? const Color.fromRGBO(255, 51, 119, 1)
                    : const Color.fromARGB(255, 210, 210, 210),
              ),
              color: widget.isSelected
                  ? const Color.fromRGBO(255, 225, 234, 1)
                  : Colors.white,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Text(
                    widget.labelText,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: widget.isSelected ? Colors.black : Colors.black,
                    ),
                  ),
                ),
                Container(
                  height: 110,
                  width: MediaQuery.of(context).size.width * 0.4,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10.0),
                    child: Image.asset(
                      widget.imagePath,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),
          if (widget.isSelected)
            Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: const Color.fromRGBO(241, 244, 247, 1),
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(
                    CostomIcons.muscle_wd7nyxe8dhrx,
                    color: Colors.amber,
                    size: 50,
                  ),
                  SizedBox(width: 20),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Пришло время стать сильнее!',
                            style: TextStyle(
                                fontSize: 16,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 5),
                          Text(
                            'Ваш тренер поможет активировать каждую мышцу',
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
        ],
      ),
    );
  }
}
