import 'package:flutter/material.dart';
import 'package:flutter_application_1/Product.dart';

import 'package:flutter_application_1/cartProduct.dart';
import 'package:provider/provider.dart';

class GridProducts extends StatelessWidget {
  const GridProducts({
    Key? key,
    // required this.name, required this.image, required this.price
  }) : super(key: key);
  // final String name, image;
  // final double price;
  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<cartProduct>(context);
    return Consumer<Product>(builder: (context, products, _) {
      return Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(18), color: Colors.white),
        child: GridTile(
          child: Image.asset(
            products.image,
            fit: BoxFit.contain,
          ),
          header: GridTileBar(
            title: Text(
              products.name,
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
            leading: IconButton(
              icon: Icon(Icons.add),
              color: const Color.fromARGB(255, 87, 85, 85),
              onPressed: () {
                cart.add_item(
                  name: products.name,
                  image: products.image,
                  price: products.price.toString(),
                );
              },
            ),
            trailing: IconButton(
              icon: Icon(Icons.remove_circle),
              color: const Color.fromARGB(255, 87, 85, 85),
              onPressed: () {},
            ),
          ),
          footer: GridTileBar(
            title: Text(
              products.price.toString(),
              textAlign: TextAlign.left,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            backgroundColor: Colors.black54,
          ),
        ),
      );
    });
  }
}
