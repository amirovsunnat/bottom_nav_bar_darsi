import 'dart:developer';

import 'package:bottomnavbar_darsi/providers/bottom_nav_bar_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class BottomNavBarSim extends StatelessWidget {
  const BottomNavBarSim({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<BottomNavBarProvider>(
      builder: (context, provider, child) {
        return Scaffold(
          body: provider.screens[provider.selectedIndex],
          bottomNavigationBar: BottomNavigationBar(
            backgroundColor: Colors.white38,
            // elevation: 0,
            showUnselectedLabels: false,
            selectedItemColor: Colors.deepOrange,
            unselectedItemColor: Colors.blueGrey,
            iconSize: 35,
            onTap: (currentIndex) {
              log(currentIndex.toString());
              provider.navigateScreens(currentIndex);
            },
            currentIndex: provider.selectedIndex,
            type: BottomNavigationBarType.shifting,
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
      },
    );
  }
}
