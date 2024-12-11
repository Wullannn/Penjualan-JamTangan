import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../widgets/CartButtomNavBar.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[200],
        body: Column(
            children: [
              // Custom App Bar
              Container(
                padding: const EdgeInsets.only(
                    top: 50, left: 20, right: 20, bottom: 20),
                decoration: const BoxDecoration(
                  color: Colors.blueGrey,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(25),
                    bottomRight: Radius.circular(25),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Keranjang Mu",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.shopping_cart_checkout,
                        color: Colors.white,
                        size: 28,
                      ),
                    ),
                  ],
                ),
              )
            ],
        ),
      bottomNavigationBar: Cartbuttomnavbar(),
    );

  }
}
