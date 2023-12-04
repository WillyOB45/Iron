import 'package:flutter/material.dart';

class spalshscreen extends StatelessWidget {
  const spalshscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 20,
            ),
            // logo
            Image.asset(
              "assets/pngwing.com (1).png",
              height: 220,
              width: 330,
            ),
            SizedBox(
              height: 30,
            ),

            // heading

            Text(
              "Just Do It",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: (25),
              ),
            ),
            SizedBox(
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
            SizedBox(
              height: 60,
            ),

            //button
            GestureDetector(
              onTap: () {
                Navigator.pushReplacementNamed(context, "/homepage");
              },
              child: Container(
                width: 300,
                padding: EdgeInsets.all(25),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Colors.black),
                child: Text(
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
