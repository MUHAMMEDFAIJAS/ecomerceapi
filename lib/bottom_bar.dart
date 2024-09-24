import 'package:flutter/material.dart';
import 'package:machinetest/view/account_screen.dart';
import 'package:machinetest/view/best_itemsscreen.dart';
import 'package:machinetest/view/brand_screen.dart';
import 'package:machinetest/view/category_screen.dart';
import 'package:machinetest/view/home_screen.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int currentindex = 0;

  List screens = [
     HomeScreen(),
    const BrandScreen(),
    const BestItemsscreen(),
    const CategoryScreen(),
    const AccountScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentindex],
      bottomNavigationBar: BottomNavigationBar(
        showUnselectedLabels: true,
        elevation: 0,
        currentIndex: currentindex,
        onTap: (newindex) {
          setState(() {
            currentindex = newindex;
          });
        },
        selectedItemColor: Colors.orange,
        unselectedItemColor: Colors.black,
        backgroundColor: const Color(0xFBc2b280),
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'swan'),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_bag), label: 'brands'),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings), label: 'bestitems'),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings), label: 'categories'),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Account'),
        ],
      ),
    );
  }
}
