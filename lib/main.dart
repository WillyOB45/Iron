import 'package:flutter/material.dart';
import 'package:sneakers_ui/pages/homepage.dart';
import 'package:sneakers_ui/pages/shopage.dart';
import 'package:sneakers_ui/pages/splashscreen.dart';

void main() {
  runApp(myApp());
}

class myApp extends StatelessWidget {
  const myApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      themeMode: ThemeMode.system,
      initialRoute: "/",
      routes: {
        "/": (context) => spalshscreen(),
        "/homepage": (context) => homePage(),
        "/shopage": (context) => shopage(),
      },
    );
  }
}
