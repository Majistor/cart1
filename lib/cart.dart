import 'package:cart/add_remove.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class cart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Your Cart',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
        backgroundColor: const Color.fromARGB(255, 253, 103, 103),
      ),
      body: Expanded(
        child: Container(
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 245, 243, 243),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
          ),
          child: Consumer<cartProduct>(
            builder: (context, value, child) {
              return ListView.builder(
                  itemCount: value.products.length,
                  itemBuilder: (context, index) {
                    return Card(
                        child: Padding(
                      padding: EdgeInsets.all(8),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              /* Image(
                                  height: 10,
                                  width: 10,
                                  image:
                                      AssetImage(value.products[index].image)),
                              Text(value.products[index].name)*/
                            ],
                          )
                        ],
                      ),
                    ));
                  });
            },
          ),
        ),
      ),
    );
  }
}
