import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter_ui/screens/favorite_screen.dart';
import 'package:flutter_ui/screens/home_screen.dart';
import 'package:flutter_ui/screens/profile_screen.dart';

class NavigationScreen extends StatefulWidget {
  const NavigationScreen({super.key});

  @override
  State<NavigationScreen> createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen> {
  int pageIndex = 0;
  List<Widget> pages = [HomeScreen(), Card(), FavoriteScreen(), ProfileScreen()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(index: pageIndex, children: pages),
      floatingActionButton: FloatingActionButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(48)),
        onPressed: () {},
        backgroundColor: Colors.deepPurple,
        elevation: 0,
        child: Icon(Icons.qr_code, size: 26, color: Colors.white),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: AnimatedBottomNavigationBar(
        onTap: (idx) {
          setState(() {
            pageIndex = idx;
          });
        },
        icons: [CupertinoIcons.home, CupertinoIcons.shopping_cart, CupertinoIcons.heart, CupertinoIcons.profile_circled],
        activeIndex: pageIndex,
        activeColor: Colors.deepPurple,
        inactiveColor: Colors.black54,
        gapLocation: GapLocation.center,
        notchSmoothness: NotchSmoothness.softEdge,
        leftCornerRadius: 12,
        rightCornerRadius: 12,
        iconSize: 28,
        elevation: 0,
      ),
    );
  }
}
