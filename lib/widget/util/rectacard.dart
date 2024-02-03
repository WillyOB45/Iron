import 'package:flutter/material.dart';

class rectacard extends StatelessWidget {
  final String? firstheading;
  final String? price;
  final String? imageurl;
  rectacard(
      {super.key,
      required this.firstheading,
      required this.price,
      required this.imageurl});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Card(
        child: Row(
          children: [
            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      firstheading!,
                      style: const TextStyle(
                          color: Colors.black,
                          fontSize: (20),
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      price!,
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: (20),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      alignment: Alignment.center,
                      height: 30,
                      width: 100,
                      decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(5)),
                      child: const Text(
                        "view details",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: (15),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Image.asset(
              imageurl!,
              height: 100,
              width: 100,
            )
          ],
        ),
      ),
    );
  }
}
