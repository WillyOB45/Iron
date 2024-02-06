import 'package:flutter/material.dart';
import 'package:sneakers_ui/pages/shoepage.dart';
import 'package:sneakers_ui/pages/sneakers_homepage.dart';
import 'package:sneakers_ui/pages/splashscreen.dart';
import 'package:sneakers_ui/pages/splashscreen1.dart';

void main() {
  // SystemChrome.setEnabledSystemUIMode([SystemUiOverlayStyle(statusBarColor: Colors.transparent)])
  runApp(const myApp());
}

class myApp extends StatelessWidget {
  const myApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      routes: {
        "/splashscreen": (context) => const splashScreenM(),
        "/secondscreen": (context) => const spalshscreen(),
        "/sneakershomepage": (context) => const sneakershome(),
        "/shoepage": (context) => const ShoePage(ShoesDetails: ShoesDetails),
      },
      home: const splashScreenM(),
    );
  }
}
