import 'package:flutter/cupertino.dart';

class AddProductProvider extends ChangeNotifier {
 

   bool isWithPot = true;
  bool isWithFertilizer = true;
  switchIsWithPot(bool v) {
    isWithPot = v;
    notifyListeners();
  }

  switchIsWithFertilizer(bool v) {
    isWithFertilizer = v;
    notifyListeners();
  }

  TextEditingController titleController = TextEditingController();
  TextEditingController diametrController = TextEditingController(text: '20');
  TextEditingController heightController = TextEditingController(text: '45');
  TextEditingController additionalInfoController =
      TextEditingController();

  sintezInt({required String v, required bool isHeight}) {
    if (isHeight) {
      heightController.text = v;
    } else {
      diametrController.text = v;
    }

    notifyListeners();
  }

  smIncrement(bool isHeight) {
    if (isHeight) {
      heightController = TextEditingController(
          text: (int.parse(heightController.text) + 1).toString());
    } else {
      diametrController = TextEditingController(
          text: (int.parse(diametrController.text) + 1).toString());
    }
    notifyListeners();
  }

  smDecrement(bool isHeight) {
    if (isHeight) {
      if (int.parse(heightController.text) > 1) {
        heightController = TextEditingController(
            text: (int.parse(heightController.text) - 1).toString());
        notifyListeners();
      } else {
        if (int.parse(diametrController.text) > 1) {
          diametrController = TextEditingController(
              text: (int.parse(diametrController.text) - 1).toString());
          notifyListeners();
        }
      }
    }
  }

  int selectedCurrency = 0;
  List<String> currencies = [
    "so'm",
    'usd',
    'yen',
    'lira',
  ];
  currensyChanged(int index) {
    selectedCurrency = index;
    notifyListeners();
  }

  double price = 0;
  TextEditingController priceController = TextEditingController(text: "20000");

  incrementPrice() {
    priceController = TextEditingController(
      text: (double.parse(priceController.text) + 100.0).toString(),
    );
    notifyListeners();
  }

  decrementPrice() {
    if (double.parse(priceController.text) > 100) {
      priceController = TextEditingController(
        text: (double.parse(priceController.text) - 100.0).toString(),
      );
    }
    notifyListeners();
  }

  final List<String> plantTypes = const [
    "Ramashka",
    "Geran",
    "Fialka",
    "Pul darahti",
    "Kaktus",
    "Lola",
    "Yana nimadir",
  ];
  int selected = 0;
  onChanged(int v) {
    selected = v;
    notifyListeners();
  }
}
