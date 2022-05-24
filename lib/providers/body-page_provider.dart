import 'package:flutter/cupertino.dart';

class BodyProvider extends ChangeNotifier {
  int currentIndex = 0;
  switchCurrentIndex(int v) {
    currentIndex = v;
    notifyListeners();
  }
}
