import 'package:bottomnavbar_darsi/screens/favorite_screen.dart';
import 'package:bottomnavbar_darsi/screens/home_screen.dart';
import 'package:bottomnavbar_darsi/screens/profile_screen.dart';
import 'package:flutter/widgets.dart';

class BottomNavBarProvider extends ChangeNotifier {
  int selectedIndex = 0;

  // screens
  List<Widget> screens = [
    HomeScreen(),
    FavoriteScreen(),
    ProfileScreen(),
  ];

  // void navigation between screen
  void navigateScreens(int currentIndex) {
    selectedIndex = currentIndex;
    notifyListeners();
  }
}
