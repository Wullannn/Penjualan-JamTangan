import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CartItem extends StatelessWidget {
  const CartItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        for (int i = 1; i < 4; i++) // Simulasi loop untuk beberapa item
          Container(
            height: 120,
            margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.3),
                  spreadRadius: 1,
                  blurRadius: 8,
                  offset: const Offset(0, 3),
                ),
              ],
            ),
            child: Row(
              children: [
                // Radio Button
                Radio(
                  value: "",
                  groupValue: "",
                  activeColor: Colors.blueGrey,
                  onChanged: (index) {},
                ),

                // Gambar Item
                Container(
                  height: 80,
                  width: 80,
                  margin: EdgeInsets.only(right: 15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      image: AssetImage("assets/images/Alba.jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),

                // Detail Item
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Alba Watch",
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.black87,
                          ),
                        ),
                        Text(
                          "\$150.00",
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.blueGrey,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                // Aksi (Delete & Quantity)
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // Tombol Hapus
                      GestureDetector(
                        onTap: () {
                          // Aksi untuk menghapus item
                        },
                        child: Icon(
                          Icons.delete,
                          color: Colors.red,
                        ),
                      ),

                      // Kontrol Kuantitas
                      Row(
                        children: [
                          // Tombol Plus
                          GestureDetector(
                            onTap: () {
                              // Aksi untuk menambah kuantitas
                            },
                            child: Container(
                              padding: const EdgeInsets.all(6),
                              decoration: BoxDecoration(
                                color: Colors.deepPurple,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: const Icon(
                                CupertinoIcons.plus,
                                color: Colors.white,
                                size: 18,
                              ),
                            ),
                          ),

                          // Kuantitas
                          Container(
                            margin: const EdgeInsets.symmetric(horizontal: 10),
                            child: const Text(
                              "01",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.black87,
                              ),
                            ),
                          ),

                          // Tombol Minus
                          GestureDetector(
                            onTap: () {
                              // Aksi untuk mengurangi kuantitas
                            },
                            child: Container(
                              padding: const EdgeInsets.all(6),
                              decoration: BoxDecoration(
                                color: Colors.grey[200],
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: const Icon(
                                CupertinoIcons.minus,
                                color: Colors.black87,
                                size: 18,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
      ],
    );
  }
}
