import 'package:flutter/material.dart';

class spalshscreen extends StatefulWidget {
  const spalshscreen({super.key});

  @override
  State<spalshscreen> createState() => _spalshscreenState();
}

class _spalshscreenState extends State<spalshscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 20,
            ),
            // logo
            Image.asset(
              "assets/nikelogo.png",
              height: 220,
              width: 330,
            ),
            const SizedBox(
              height: 30,
            ),

            // heading

            const Text(
              "Just Do It",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: (25),
                  color: Colors.grey),
            ),
            const SizedBox(
              height: 10,
            ),

            // sub heading
            Text(
              "Brand New Sneakers And Custom Kick Made With Premium Quailty",
              style: TextStyle(
                  // fontWeight: FontWeight.bold,
                  fontSize: (20),
                  color: Colors.grey.shade600),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 60,
            ),

            //button
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, "/homepage");
              },
              child: Container(
                width: 300,
                padding: const EdgeInsets.all(25),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Colors.black),
                child: const Text(
                  "Shop Here",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: (20),
                      color: Colors.white),
                  textAlign: TextAlign.center,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
