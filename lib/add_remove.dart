import 'package:cart/Products.dart';
import 'package:flutter/material.dart';

class cartProduct extends ChangeNotifier {
  Map<String, Products> _products = {};
  Map<String, Products> get products {
    return {..._products};
  }

  void add({required String name, image, price}) {
   Products();

    notifyListeners();
  }

  void remove({required String name, image, price}) {
    _products.update(
        name,
        (value) =>Products( name: name, image: image, price: price)

    notifyListeners();
  }
}
