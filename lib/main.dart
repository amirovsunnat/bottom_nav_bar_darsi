import 'package:bottomnavbar_darsi/bottom_nav_bar_sim.dart';
import 'package:bottomnavbar_darsi/providers/bottom_nav_bar_provider.dart';
import 'package:bottomnavbar_darsi/providers/favorite_screen_provider.dart';
import 'package:bottomnavbar_darsi/providers/home_screen_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

main() {
  runApp(BottomNavbarDarsi());
}

class BottomNavbarDarsi extends StatelessWidget {
  const BottomNavbarDarsi({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => HomeScreenProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => BottomNavBarProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => FavoriteScreenProvider(),
        ),
      ],
      child: MaterialApp(
        home: BottomNavBarSim(),
      ),
    );
  }
}
