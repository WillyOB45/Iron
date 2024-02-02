import 'package:flutter/material.dart';

class Bannercard extends StatelessWidget {
  final String? imagePath;
  final String? heading;
  final String? subtitle;
  final String? insidebuttontexts;

  const Bannercard(
      {super.key,
      required this.imagePath,
      required this.heading,
      required this.subtitle,
      required this.insidebuttontexts});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Card(
        color: Colors.black,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset(
              imagePath!,
              height: 100,
              width: 150,
            ),
            Expanded(
                child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const SizedBox(
                    height: 30,
                  ),
                  const Text(
                    "Special Offer",
                    style: TextStyle(fontSize: (25), color: Colors.white),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    "40% Off",
                    style:
                        TextStyle(fontSize: (20), color: Colors.grey.shade300),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Container(
                    alignment: Alignment.center,
                    height: 40,
                    width: 100,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                    child: const Text(
                      "Shop Here",
                      style: TextStyle(fontSize: (15), color: Colors.black),
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}
