import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class splashScreenM extends StatefulWidget {
  const splashScreenM({super.key});

  @override
  State<splashScreenM> createState() => _splashScreenMState();
}

class _splashScreenMState extends State<splashScreenM> {
  @override
  void initState() {
    navigatetohome();
    super.initState();
  }

  navigatetohome() async {
    await Future.delayed(const Duration(seconds: 10));
    Navigator.pushNamed(context, "/secondscreen");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            children: [
              Image.asset(
                "assets/nikelogo.png",
                height: 100,
                width: 200,
              ),
              const SizedBox(
                width: 20,
              ),
              AnimatedTextKit(repeatForever: true, animatedTexts: [
                WavyAnimatedText("N I K E",
                    textStyle:
                        TextStyle(color: Colors.grey.shade900, fontSize: (30)))
              ])
            ],
          ),
        ),
      ),
    );
  }
}
