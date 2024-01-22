// divider_widget.dart

import 'package:flutter/material.dart';

class CustomDivider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 115, right: 16),
      child: Divider(
        color: Colors.grey,
        thickness: 1,
      ),
    );
  }
}
