import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:sneakers_ui/pages/shoepage.dart';
import 'package:sneakers_ui/widget/util/bannercard.dart';
import 'package:sneakers_ui/widget/util/drawer.dart';
import 'package:sneakers_ui/widget/util/rectacard.dart';
import 'package:sneakers_ui/widget/util/searchbar.dart';
import 'package:sneakers_ui/widget/util/squaretiles.dart';

class sneakershome extends StatefulWidget {
  const sneakershome({super.key});

  @override
  State<sneakershome> createState() => _sneakershomeState();
}

class _sneakershomeState extends State<sneakershome> {
  List productdetails = [
    ShoesDetails(
        shoename: "air max",
        shoeprice: "#450,000",
        shoeimage: "assets/shoe2.png"),
    ShoesDetails(
        shoename: "Nike air max 90",
        shoeprice: "#500,000",
        shoeimage: "assets/shoe3.png"),
    ShoesDetails(
        shoename: "Nike Retro sneaker",
        shoeprice: "#300,000",
        shoeimage: "assets/shoe7.png"),
    ShoesDetails(
        shoename: "air max 90",
        shoeprice: "#500,000",
        shoeimage: "assets/shoe1.png"),
    ShoesDetails(
        shoename: "air max 90",
        shoeprice: "#500,000",
        shoeimage: "assets/shoe1.png"),
  ];

  navigatetoshoepage() {
    Navigator.popAndPushNamed(context, "/shoepage");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      drawer: myDrawer(),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(children: [
          const SizedBox(
            height: 30,
          ),
          Row(
            // mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Builder(
                builder: (context) => Cardtiles(
                  onPressed: () {
                    Scaffold.of(context).openDrawer();
                  },
                  icon: Icons.sort,
                ),
              ),
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
          Bannercard(
            onTap: navigatetoshoepage,
            imagePath: "assets/shoe2.png",
            heading: "Special Offer",
            subtitle: "40% Off",
            insidebuttontexts: "Shop Here",
          ),

          const SizedBox(
            height: 10,
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

          rectacard(
              firstheading: "nike retro",
              price: "100000",
              imageurl: "assets/shoe2.png")
        ]),
      ),
    );
  }
}

class ShoesDetails {
  String? shoename;
  String? shoeimage;
  String? shoeprice;

  ShoesDetails({this.shoename, this.shoeprice, this.shoeimage});
}
