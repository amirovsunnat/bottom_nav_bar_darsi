import 'package:bottomnavbar_darsi/bottom_nav_bar_sim.dart';
import 'package:flutter/material.dart';

main() {
  runApp(BottomNavbarDarsi());
}

class BottomNavbarDarsi extends StatelessWidget {
  const BottomNavbarDarsi({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BottomNavBarSim(),
    );
  }
}
