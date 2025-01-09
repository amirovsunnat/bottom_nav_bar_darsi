import 'dart:developer';

import 'package:bottomnavbar_darsi/screens/favorite_screen.dart';
import 'package:bottomnavbar_darsi/screens/home_screen.dart';
import 'package:bottomnavbar_darsi/screens/profile_screen.dart';
import 'package:flutter/material.dart';

class BottomNavBarSim extends StatefulWidget {
  const BottomNavBarSim({super.key});

  @override
  State<BottomNavBarSim> createState() => _BottomNavBarSimState();
}

class _BottomNavBarSimState extends State<BottomNavBarSim> {
  int selectedIndex = 0;
  List<Widget> screens = [
    HomeScreen(),
    FavoriteScreen(),
    ProfileScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {
          log(value.toString());
          setState(() {
            selectedIndex = value;
          });
          log(selectedIndex.toString());
        },
        currentIndex: selectedIndex,
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.favorite,
            ),
            label: "Favorite",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
            ),
            label: "Profile",
          ),
        ],
      ),
    );
  }
}
