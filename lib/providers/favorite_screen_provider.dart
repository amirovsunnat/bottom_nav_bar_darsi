import 'package:flutter/widgets.dart';

class FavoriteScreenProvider extends ChangeNotifier {
  int counter = 0;
  void counterIncrement() {
    counter++;
    notifyListeners();
  }

  void counterDecrement() {
    counter--;
    notifyListeners();
  }


}
