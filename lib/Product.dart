import 'package:flutter/material.dart';

class Product with ChangeNotifier {
  final String name;
  final String image;
  final double price;
  bool isCheck;
  Product({
    required this.name,
    required this.image,
    required this.price,
    this.isCheck = false,
  });
  void toggleisCheck() {
    isCheck = !isCheck;
    notifyListeners();
  }
}
