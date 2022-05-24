import 'package:flutter/cupertino.dart';

class ListOfAddsProvider extends ChangeNotifier {
  double ratio = .75;
  ratioChanger(double v) {
    ratio = v;
    notifyListeners();
  }

  List<bool> isLoveds = List.generate(15, (index) => false);

  loved(int __) {
    isLoveds[__] = !isLoveds[__];
    notifyListeners();
  }
}
