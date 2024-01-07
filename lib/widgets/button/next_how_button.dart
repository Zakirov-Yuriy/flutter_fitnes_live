import 'package:flutter/material.dart';

class NextHowCustomButtonWidget extends StatelessWidget {
  final String buttonText;
  final Widget destinationWidget;
  final bool isButtonEnabled;
  final VoidCallback? onPressed;

  NextHowCustomButtonWidget({
    required this.buttonText,
    required this.destinationWidget,
    required this.isButtonEnabled,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Align(
        alignment: FractionalOffset.bottomCenter,
        child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
            minimumSize: const Size(double.infinity, 50),
            backgroundColor: isButtonEnabled
                ? const Color.fromRGBO(255, 51, 119, 1)
                : Colors.grey,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
          ),
          child: Text(
            buttonText,
            style: TextStyle(
              fontSize: 24.0,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
