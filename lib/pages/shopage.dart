import 'package:flutter/material.dart';
import 'package:sneakers_ui/widget/model/shoemodel.dart';
import 'package:sneakers_ui/widget/shoetile.dart';

class shopage extends StatelessWidget {
  const shopage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              //search bar
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10),
                width: 400,
                height: 50,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 1, spreadRadius: 1, color: Colors.grey)
                    ]),
                child: TextField(
                  decoration: InputDecoration(
                      hintText: "find something here...",
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Colors.grey, style: BorderStyle.none))),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              // title
              Text(
                "What you do is up to you. Just do it.",
                style: TextStyle(
                    // fontWeight: FontWeight.bold,
                    fontSize: (20),
                    color: Colors.grey.shade600),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 20,
              ),
              // hot kicks
              Row(
                children: [
                  Text(
                    "Hot kicks",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: (30),
                        color: Colors.black),
                    textAlign: TextAlign.center,
                  ),
                  Container(
                    child: Image.asset(
                      "assets/pngwing.com (9).png",
                      height: 50,
                      width: 50,
                    ),
                  ),
                  SizedBox(
                    width: 80,
                  ),
                  Text(
                    "See all...",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: (17),
                        color: Colors.grey.shade600),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Column(
                children: [
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        shoetile(
                            imagepath: "assets/shoe4.png",
                            shoename: "Air nike",
                            shoedecription: "cool shoe",
                            price: "#250,000"),
                        SizedBox(
                          width: 10,
                        ),
                        shoetile(
                            imagepath: "assets/shoe2.png",
                            shoename: "Air nike",
                            shoedecription: "cool shoe",
                            price: "#250,000"),
                        SizedBox(
                          width: 10,
                        ),
                        shoetile(
                            imagepath: "assets/shoe1.png",
                            shoename: "Air nike",
                            shoedecription: "cool shoe",
                            price: "#250,000"),
                        SizedBox(
                          width: 10,
                        ),
                        shoetile(
                            imagepath: "assets/pngwing.com (4).png",
                            shoename: "Air nike",
                            shoedecription: "cool shoe",
                            price: "#250,000"),
                        SizedBox(
                          width: 10,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    "Trending...",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: (25),
                        color: Colors.black),
                    textAlign: TextAlign.start,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Column(
                      children: [
                        shoetile(
                            imagepath: "assets/shoe4.png",
                            shoename: "Air nike",
                            shoedecription: "cool shoe",
                            price: "#250,000"),
                        SizedBox(
                          height: 10,
                        ),
                        shoetile(
                            imagepath: "assets/shoe2.png",
                            shoename: "Air nike",
                            shoedecription: "cool shoe",
                            price: "#250,000"),
                        SizedBox(
                          height: 10,
                        ),
                        shoetile(
                            imagepath: "assets/shoe1.png",
                            shoename: "Air nike",
                            shoedecription: "cool shoe",
                            price: "#250,000"),
                        SizedBox(
                          height: 10,
                        ),
                        shoetile(
                            imagepath: "assets/pngwing.com (4).png",
                            shoename: "Air nike",
                            shoedecription: "cool shoe",
                            price: "#250,000"),
                        SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                  )
                ],
              )

              //sub
            ],
          ),
        ),
      ),
    );
  }
}
