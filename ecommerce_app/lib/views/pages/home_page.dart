import 'package:ecommerce_app/views/pages/cart_page.dart';
import 'package:ecommerce_app/views/pages/shop_page.dart';
import 'package:ecommerce_app/views/widgets/bottom_nav_bar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // this selected index is to control the bottom nav bar
  int _selectedIndex = 0;

  // this method will update our selected index
  // when the user taps on the bottom bar
  void navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  // pages to display
  final List<Widget> _pages = [
    // shop page
    ShopPage(),

    // cart page
    CartPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      bottomNavigationBar: BottomNavBar(
        onTabChange: (index) => navigateBottomBar(index),
      ),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: Builder(
          builder: (context) => IconButton(
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
            icon: Icon(Icons.menu, color: Colors.black),
          ),
        ),
      ),
      drawer: Drawer(
        backgroundColor: Colors.grey[900],
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // logo
            Column(
              children: [
                DrawerHeader(
                  child: Image.asset(
                    "assets/images/logo/vansRed.png",
                    color: Colors.white,
                  ),
                ),

                // other pages
                Padding(
                  padding: const EdgeInsets.only(left: 12.0, top: 12.0),
                  child: ListTile(
                    leading: Icon(Icons.home),
                    title: Text("Home"),
                    textColor: Colors.white,
                    iconColor: Colors.white,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 12.0, top: 12.0),
                  child: ListTile(
                    leading: Icon(Icons.settings),
                    title: Text("Settings"),
                    textColor: Colors.white,
                    iconColor: Colors.white,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 12.0, top: 12.0),
                  child: ListTile(
                    leading: Icon(Icons.person),
                    title: Text("Profile"),
                    textColor: Colors.white,
                    iconColor: Colors.white,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 12.0, top: 12.0),
                  child: ListTile(
                    leading: Icon(Icons.info),
                    title: Text("About"),
                    textColor: Colors.white,
                    iconColor: Colors.white,
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 12.0, bottom: 36.0),
              child: ListTile(
                leading: Icon(Icons.login),
                title: Text("Logout"),
                textColor: Colors.white,
                iconColor: Colors.white,
              ),
            ),
          ],
        ),
      ),
      body: _pages[_selectedIndex],
    );
  }
}
