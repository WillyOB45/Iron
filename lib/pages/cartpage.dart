import 'package:flutter/material.dart';

class cartpage extends StatefulWidget {
  const cartpage({super.key});

  @override
  State<cartpage> createState() => _cartpageState();
}

class _cartpageState extends State<cartpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey.shade300,
        body: Center(
          child: Column(
            children: [
              SizedBox(
                height: 200,
              ),
              AlertDialog(
                actions: [Text("am a alert dialogue")],
              )
            ],
          ),
        ));
  }
}
