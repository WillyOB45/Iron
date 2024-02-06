import 'package:flutter/material.dart';
// import 'package:sneakers_ui/pages/homepage.dart';

class ShoePage extends StatefulWidget {
  final ShoesDetails;
  const ShoePage({super.key, required this.ShoesDetails});

  @override
  State<ShoePage> createState() => _ShoePageState();
}

class _ShoePageState extends State<ShoePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
    );
  }
}
