import 'package:flutter/material.dart';
import 'package:sneakers_ui/widget/util/bannercard.dart';
import 'package:sneakers_ui/widget/util/drawer.dart';
import 'package:sneakers_ui/widget/util/rectacard.dart';
import 'package:sneakers_ui/widget/util/searchbar.dart';
import 'package:sneakers_ui/widget/util/squaretiles.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class homePage extends StatefulWidget {
  const homePage({super.key});

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  List productdetails = [
    ShoesDetails(
        shoename: "air max", shoeprice: 200, shoeimage: "assets/shoe2.png"),
    ShoesDetails(
        shoename: "air max 90", shoeprice: 300, shoeimage: "assets/shoe3.png"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      drawer: const myDrawer(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          physics: const NeverScrollableScrollPhysics(),
          child: Column(
            children: [
              const SizedBox(
                height: 30,
              ),

              // icons
              Row(
                // mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Builder(builder: (context) {
                    return Cardtiles(
                      onPressed: () {
                        Scaffold.of(context).openDrawer();
                      },
                      icon: Icons.sort,
                    );
                  }),
                  const SizedBox(
                    width: 250,
                  ),
                  Cardtiles(
                    onPressed: () {},
                    icon: Icons.shopping_cart_checkout_outlined,
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),

              //search bar
              const Mysearchbar(
                hintText: "search for something...",
              ),
              const SizedBox(
                height: 10,
              ),

              //animated text kits
              SizedBox(
                height: 50,
                child: AnimatedTextKit(repeatForever: true, animatedTexts: [
                  FadeAnimatedText("Air Max Series",
                      textStyle: const TextStyle(
                          fontSize: (20), fontWeight: FontWeight.bold)),
                  ScaleAnimatedText("Nike Dunk Series",
                      textStyle: const TextStyle(
                          fontSize: (20), fontWeight: FontWeight.bold)),
                  FadeAnimatedText("Air SB series",
                      textStyle: const TextStyle(
                          fontSize: (20), fontWeight: FontWeight.bold)),
                  ScaleAnimatedText("Air Force 1",
                      textStyle: const TextStyle(
                          fontSize: (20), fontWeight: FontWeight.bold))
                ]),
              ),
              const SizedBox(
                height: 20,
              ),

              //banner card
              const Bannercard(
                imagePath: "assets/shoe2.png",
                heading: "Special Offer",
                subtitle: "40% Off",
                insidebuttontexts: "Shop Here",
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                alignment: Alignment.topLeft,
                child: const Text(
                  "Top Selling Shoes",
                  style: TextStyle(
                      fontSize: (25),
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.start,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Expanded(
                  child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: productdetails.length,
                itemBuilder: (context, index) {
                  final ShoesDetails = productdetails[index];
                  return rectacard(
                    firstheading: ShoesDetails.shoename,
                    price: ShoesDetails.shoeprice,
                    imageurl: ShoesDetails.shoeimage,
                  );
                },
              ))
            ],
          ),
        ),
      ),
    );
  }
}

class ShoesDetails {
  String? shoename;
  String? shoeimage;
  double? shoeprice;

  ShoesDetails({this.shoename, this.shoeprice, this.shoeimage});
}
