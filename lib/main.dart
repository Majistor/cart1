import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/GridProdcuts.dart';
import 'package:flutter_application_1/Product.dart';
import 'package:flutter_application_1/Products.dart';
import 'package:flutter_application_1/cartProduct.dart';
import 'package:flutter_application_1/cartScreen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => Products(),
        ),
        ChangeNotifierProvider(
          create: (context) => cartProduct(),
        )
      ],
      child: MaterialApp(
          theme: ThemeData(
            colorSchemeSeed: Colors.redAccent,
            scaffoldBackgroundColor: Color.fromARGB(255, 253, 103, 103),
          ),
          title: 'shopping app',
          routes: {
            "/": (context) => Homepage(),
            "cart": (context) => cartScreen(),
          }),
    );
  }
}

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  Widget build(BuildContext context) {
    final productDate = Provider.of<Products>(context);
    final products = productDate.products;
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
              title: Text(
                'Welcome',
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
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
              backgroundColor: const Color.fromARGB(255, 250, 117, 117),
            ),
            body: Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 245, 243, 243),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              child: GridView.builder(
                  itemCount: 14,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 0.68,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10),
                  itemBuilder: (context, index) {
                    return ChangeNotifierProvider<Product>.value(
                      value: products[index],
                      child: GridProducts(
                          //  name: products[index].name,
                          //image: products[index].image,
                          //price: products[index].price,

                          ),
                    );
                  }),
            )));
  }
}
