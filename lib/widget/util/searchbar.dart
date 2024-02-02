import 'package:flutter/material.dart';

class Mysearchbar extends StatelessWidget {
  final String? hintText;
  const Mysearchbar({super.key, required this.hintText});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: TextField(
        decoration: InputDecoration(
          fillColor: Colors.white,
          focusedBorder:
              OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
          hintText: hintText,
          hintStyle: TextStyle(
            color: Colors.grey.shade400,
          ),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(
                color: Colors.grey.shade300,
              )),
          filled: true,
        ),
      ),
    );
  }
}
