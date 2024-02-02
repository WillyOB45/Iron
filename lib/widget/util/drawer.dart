import 'package:flutter/material.dart';

class myDrawer extends StatelessWidget {
  const myDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.grey.shade900,
      shadowColor: Colors.grey.shade300,
      child: Column(
        children: [
          //logo
          DrawerHeader(
              child: Image.asset(
            "assets/nikelogo.png",
            color: Colors.white,
            height: 200,
            width: 200,
          )),
          Divider(
            thickness: (2),
            color: Colors.grey.shade100,
          ),
          const SizedBox(
            height: 20,
          ),

          ListTile(
            onTap: () {
              Navigator.popAndPushNamed(context, "/shopage");
            },
            splashColor: Colors.white,
            leading: const Icon(
              Icons.home,
              color: Colors.white,
            ),
            title: const Text(
              "H o m e",
              style: TextStyle(fontSize: (16), color: Colors.white),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          ListTile(
            onTap: () {},
            splashColor: Colors.white,
            leading: const Icon(
              Icons.shopping_cart,
              color: Colors.white,
            ),
            title: const Text(
              "C a r t",
              style: TextStyle(fontSize: (16), color: Colors.white),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          ListTile(
            onTap: () {},
            splashColor: Colors.white,
            leading: const Icon(
              Icons.settings,
              color: Colors.white,
            ),
            title: const Text(
              "S e t t i n g",
              style: TextStyle(fontSize: (16), color: Colors.white),
            ),
          ),
          const SizedBox(
            height: 300,
          ),
          Divider(
            thickness: (2),
            color: Colors.grey.shade100,
          ),
          ListTile(
            onTap: () {},
            splashColor: Colors.white,
            leading: const Icon(
              Icons.logout,
              color: Colors.white,
            ),
            title: const Text(
              "L o g o u t",
              style: TextStyle(fontSize: (16), color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
