import 'package:cart/add_remove.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:provider/provider.dart';

class gridView extends StatelessWidget {
  @override
  const gridView(
      {Key? key, required this.name, required this.image, required this.price})
      : super(key: key);
  final String name, image, price;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final cart = Provider.of<cartProduct>(context);
    return Consumer<cartProduct>(builder: (context, value, child) {
      return GridTile(
          child: Padding(
              padding: const EdgeInsets.all(5),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                      color: Color.fromARGB(255, 253, 103, 103), width: 1.5),
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                    image: AssetImage(image),
                  ),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: SizedBox(
                              height: 20,
                              child: FloatingActionButton(
                                heroTag: "btn2",
                                elevation: 3,
                                onPressed: () {
                                  cart.add(name: name);
                                },
                                child: Text('+cart'),
                                backgroundColor:
                                    Color.fromARGB(255, 248, 135, 135),
                              ),
                            )),
                        Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: SizedBox(
                              height: 20,
                              child: FloatingActionButton(
                                heroTag: "btn1",
                                elevation: 3,
                                onPressed: () {
                                  //Provider.of<cartProduct>(context).remove(
                                  // 'watch 1', 'assets/images/1.jpeg', 1000.00);
                                },
                                child: Icon(Icons.remove),
                                backgroundColor:
                                    Color.fromARGB(255, 248, 135, 135),
                              ),
                            )),
                      ],
                    ),
                    Expanded(child: Container()),
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 6),
                        child: Text(
                          'Watch 1',
                          style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              color: Colors.redAccent),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 6),
                        child: Text(
                          'Rs 1000',
                          style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              color: Color.fromARGB(255, 248, 117, 117)),
                        ),
                      ),
                    ),
                    /* Row(
                          children: [
                            IconButton(
                              icon: Icon(Icons.remove),
                              onPressed: () {},
                            ),
                          ],
                        ),*/
                  ],
                ),
              )));
    });
  }
}
