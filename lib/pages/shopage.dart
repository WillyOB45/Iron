import 'package:flutter/material.dart';

class shopage extends StatelessWidget {
  const shopage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            //search bar
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              width: 400,
              height: 40,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 2, spreadRadius: 2, color: Colors.grey)
                  ]),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "find something here...",
                ),
              ),
            )

            // heading

            //sub
          ],
        ),
      ),
    );
  }
}
