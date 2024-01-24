import 'package:flutter/material.dart';

class cart {
  final String name;
  final String image;
  final String price;

  cart({required this.image, required this.name, required this.price});
}

class cartProduct extends ChangeNotifier {
  Map<String, cart> _items = {};
  Map<String, cart> get items {
    return {..._items};
  }

  void add_item(
      {required String name, required String image, required String price}) {
    cart(
        image: image.toString(),
        name: name.toString(),
        price: price.toString());
    notifyListeners();
  }

  double get Total {
    double total = 0.0;
    _items.forEach((key, value) {
      total = total + double.parse(value.price);
    });
    return total;
  }

  void removeItem(String productId) {
    _items.remove(productId);
    notifyListeners();
  }
}
