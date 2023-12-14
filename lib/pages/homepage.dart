import 'package:flutter/material.dart';
import 'package:sneakers_ui/pages/cartpage.dart';
import 'package:sneakers_ui/pages/shopage.dart';

class homePage extends StatefulWidget {
  homePage({super.key});

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  int _selectedindex = 0;

  final List<Widget> _pages = [
    shopage(),
    cartpage(),
  ];
  void _navigatebar(_pages) {
    setState(() {
      _selectedindex = _pages;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.fromLTRB(40, 0, 40, 0),
        child: BottomNavigationBar(
            currentIndex: _selectedindex,
            onTap: (value) => _navigatebar,
            backgroundColor: Colors.grey[300],
            iconSize: (30),
            elevation: 0,
            selectedItemColor: Colors.grey.shade900,
            unselectedItemColor: Colors.grey.shade500,
            showUnselectedLabels: false,
            items: [
              BottomNavigationBarItem(
                  icon: Icon(Icons.home_max_sharp),
                  label: "Home",
                  backgroundColor: Colors.amber),
              BottomNavigationBarItem(
                  icon: Icon(Icons.shopping_cart_sharp),
                  label: "Cart",
                  backgroundColor: Colors.blue),
              BottomNavigationBarItem(
                icon: Icon(Icons.settings),
                label: "Settings",
              )
            ]),
      ),
      body: _pages[_selectedindex],
      appBar: AppBar(
        backgroundColor: Colors.grey.shade300,
        elevation: 0,
        leading: Builder(
          builder: (context) => IconButton(
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              icon: Icon(
                Icons.menu_sharp,
                color: Colors.grey.shade700,
              )),
        ),
      ),
      drawer: Drawer(
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
            SizedBox(
              height: 20,
            ),

            ListTile(
              onTap: () {
                Navigator.popAndPushNamed(context, "/shopage");
              },
              splashColor: Colors.white,
              leading: Icon(
                Icons.home,
                color: Colors.white,
              ),
              title: Text(
                "H o m e",
                style: TextStyle(fontSize: (16), color: Colors.white),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            ListTile(
              onTap: () {},
              splashColor: Colors.white,
              leading: Icon(
                Icons.shopping_cart,
                color: Colors.white,
              ),
              title: Text(
                "C a r t",
                style: TextStyle(fontSize: (16), color: Colors.white),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            ListTile(
              onTap: () {},
              splashColor: Colors.white,
              leading: Icon(
                Icons.settings,
                color: Colors.white,
              ),
              title: Text(
                "S e t t i n g",
                style: TextStyle(fontSize: (16), color: Colors.white),
              ),
            ),
            SizedBox(
              height: 300,
            ),
            Divider(
              thickness: (2),
              color: Colors.grey.shade100,
            ),
            ListTile(
              onTap: () {},
              splashColor: Colors.white,
              leading: Icon(
                Icons.logout,
                color: Colors.white,
              ),
              title: Text(
                "L o g o u t",
                style: TextStyle(fontSize: (16), color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
