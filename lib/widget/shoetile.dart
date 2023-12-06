import 'package:flutter/material.dart';
// import 'package:sneakers_ui/widget/model/shoemodel.dart';

class shoetile extends StatelessWidget {
  final String imagepath;
  final String shoename;
  final String shoedecription;
  var price;

  shoetile(
      {super.key,
      required this.imagepath,
      required this.shoename,
      required this.shoedecription,
      required this.price});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      width: 280,
      height: 350,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), color: Colors.grey.shade200),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // shoe image
          Image.asset(imagepath),
          SizedBox(
            height: 10,
          ),

          //shoe name
          Text(shoename),

          // shoe decription
          Text(shoedecription),

          //  shoe price
          Text(price),
        ],
      ),
    );
  }
}
