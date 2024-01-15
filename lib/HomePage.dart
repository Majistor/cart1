import 'package:cart/GridView.dart';
import 'package:cart/Product.dart';
import 'package:cart/add_remove.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  final List<Product> product = [
    Product("Watch 1", 'assets/images/1.jpeg', " 1000"),
    Product("Watch 2", 'assets/images/2.jpeg', "1000"),
    Product("Watch 3", 'assets/images/3.jpeg', "1000"),
    Product("Watch 4", 'assets/images/4.jpeg', "1000"),
    Product("Watch 5", 'assets/images/5.jpeg', "1000"),
    Product("Watch 6", 'assets/images/6.jpeg', "1000"),
    Product("Watch 7", 'assets/images/7.jpeg', "1000"),
    Product("Watch 8", 'assets/images/8.jpeg', "1000"),
    Product("Watch 9", 'assets/images/9.jpeg', "1000"),
    Product("Watch 10", 'assets/images/10.jpeg', "1000"),
    Product("Watch 11", 'assets/images/11.jpeg', "1000"),
    Product("Watch 12", 'assets/images/12.jpeg', "1000"),
    Product("Watch 13", 'assets/images/13.jpeg', "1000"),
    Product("Watch 14", 'assets/images/14.jpeg', "1000"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Welcome',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.pushNamed(context, "cart");
              },
              icon: Icon(
                CupertinoIcons.cart_fill,
                color: Colors.white,
              ))
        ],
        backgroundColor: const Color.fromARGB(255, 253, 103, 103),
      ),
      body: Container(
        padding: EdgeInsets.only(top: 15),
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 245, 243, 243),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: GridView.builder(
          itemCount: product.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 0.68,
            mainAxisSpacing: 4,
            crossAxisSpacing: 0,
          ),
          itemBuilder: (context, index) {
            return gridView(
              image: product[index].image,
              name: product[index].name,
              price: product[index].price,
            );
          },
        ),
      ),
    );
  }
}
