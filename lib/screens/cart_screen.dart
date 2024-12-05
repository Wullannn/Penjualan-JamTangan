import 'package:flutter/material.dart';
import 'package:jamtangan/widgets/cart_app_bar.dart';

import '../widgets/cart_buttomNavBar.dart';
import '../widgets/cart_item_samples.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          cart_app_bar(),

          Container(
            height: 700,
            padding: EdgeInsets.only(top: 15),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(35),
                  topRight: Radius.circular(35),
                )
            ),
            child: Column(
              children: [
                cart_item_samples(),
                Container(
                  //decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),),
                  margin: EdgeInsets.symmetric(vertical: 20, horizontal: 15),
                  padding: EdgeInsets.all(10),
                  child: Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.blueGrey,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Icon(Icons.add,
                            color: Colors.white,
                          ),
                        ),
                        Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            child: Text(
                              "tambah vocher",
                              style: TextStyle(
                                color: Colors.blue,
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            )
                        )
                      ]),
                )
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: cart_buttomNavBar(),
    );
  }
}