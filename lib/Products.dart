import 'package:flutter/cupertino.dart';
import 'package:flutter_application_1/Product.dart';

class Products with ChangeNotifier {
  final List<Product> _products = [
    Product(name: 'watch 1', image: 'assets/images/1.jpeg', price: 1000),
    Product(name: 'watch 2', image: 'assets/images/2.jpeg', price: 1100),
    Product(name: 'watch 3', image: 'assets/images/3.jpeg', price: 1050),
    Product(name: 'watch 4', image: 'assets/images/4.jpeg', price: 900),
    Product(name: 'watch 5', image: 'assets/images/5.jpeg', price: 1300),
    Product(name: 'watch 6', image: 'assets/images/6.jpeg', price: 1600),
    Product(name: 'watch 7', image: 'assets/images/7.jpeg', price: 1450),
    Product(name: 'watch 8', image: 'assets/images/8.jpeg', price: 1020),
    Product(name: 'watch 9', image: 'assets/images/9.jpeg', price: 2000),
    Product(name: 'watch 10', image: 'assets/images/10.jpeg', price: 4000),
    Product(name: 'watch 11', image: 'assets/images/11.jpeg', price: 2050),
    Product(name: 'watch 12', image: 'assets/images/12.jpeg', price: 1050),
    Product(name: 'watch 13', image: 'assets/images/13.jpeg', price: 1430),
    Product(name: 'watch 14', image: 'assets/images/14.jpeg', price: 1760),
  ];
  List<Product> get products => _products;
  // void addProduct(value) {
  //   _products.add(value);
  //   notifyListeners();
  // }
  // Product findById(String id) {
  //   return products.firstWhere((product) => products.na);
  // }
}
