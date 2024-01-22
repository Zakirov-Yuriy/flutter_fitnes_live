import 'package:flutter/material.dart';
import 'your_body_content_widget.dart';

class YourBodyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Ваш существующий код для YourBodyWidget
    return Padding(
      padding: const EdgeInsets.only(top: 15),
      child: Center(
        child: Column(
          children: [
            Text(
              'Всё тело'.toUpperCase(),
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w800,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15),
              child: Text(
                'Научно доказано, что похудение улучшает \nсердечно-сосудистую функцию',
                style: TextStyle(
                  fontSize: 18,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15),
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        Text(
                          '10',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w800,
                            color: Color.fromRGBO(255, 51, 119, 1),
                          ),
                        ),
                        Text(
                          'Упражнений',
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),
                    Container(
                      height: 45,
                      width: 1,
                      color: Colors.blueGrey,
                      margin: const EdgeInsets.symmetric(
                        horizontal: 20,
                      ),
                    ),
                    Column(
                      children: [
                        Text(
                          '10',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w800,
                            color: Color.fromRGBO(255, 51, 119, 1),
                          ),
                        ),
                        Text(
                          'Минут',
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16, bottom: 5),
              child: Divider(
                color: Colors.grey,
                thickness: 3,
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 16, bottom: 5),
                child: Text(
                  'Список упражнений',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            YourBodyContent(),
          ],
        ),
      ),
    );
  }
}
