import 'package:flutter/material.dart';

class Cardtiles extends StatelessWidget {
  void Function()? onPressed;
  IconData? icon;
  Cardtiles({super.key, required this.icon, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: IconButton(
        onPressed: onPressed,
        icon: Icon(
          icon,
          size: (20),
        ),
      ),
    );
  }
}
