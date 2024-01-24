import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/cartProduct.dart';
import 'package:provider/provider.dart';

class cartScreen extends StatelessWidget {
  const cartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<cartProduct>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Your Cart',
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        backgroundColor: const Color.fromARGB(255, 250, 117, 117),
      ),
      body: Column(
        children: [
          Card(
            margin: const EdgeInsets.all(20),
            child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Total'),
                    Spacer(),
                    Chip(label: Text(" ${cart.Total}")),
                    ElevatedButton(onPressed: () {}, child: Text('Buy Now'))
                  ],
                )),
          ),
          const SizedBox(
            height: 20,
          ),
          Expanded(
              child: ListView.builder(
                  itemCount: cart.items.length,
                  itemBuilder: (context, index) {
                    return Card(
                      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                      child: ListTile(
                        leading: Text(cart.items.values.toList()[index].price),
                        title: Text(cart.items.values.toList()[index].name),
                        trailing: Image.asset(
                            cart.items.values.toList()[index].image),
                      ),
                    );
                  }))
        ],
      ),
    );
  }
}
