import 'package:flutter/material.dart';

void main() {
  runApp(DetailScreen());
}

class DetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ProductDetailScreen(
        product: Product(
          name: "Produk A",
          price: 299.99,
          rating: 4.5,
          imageUrl: "https://via.placeholder.com/300",
        ),
      ),
    );
  }
}

class Product {
  final String name;
  final double price;
  final double rating;
  final String imageUrl;

  Product({
    required this.name,
    required this.price,
    required this.rating,
    required this.imageUrl,
  });
}

class ProductDetailScreen extends StatelessWidget {
  final Product product;

  ProductDetailScreen({required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Detail Produk"),
        backgroundColor: Colors.blueAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Product Image
            Center(
              child: Image.network(
                product.imageUrl,
                height: 250,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 16),

            // Product Name
            Text(
              product.name,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),

            // Product Rating
            Row(
              children: [
                Icon(
                  Icons.star,
                  color: Colors.yellow,
                ),
                Text(
                  "${product.rating}",
                  style: TextStyle(fontSize: 18),
                ),
              ],
            ),
            SizedBox(height: 16),

            // Product Price
            Text(
              "Rp ${product.price.toStringAsFixed(2)}",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.green,
              ),
            ),
            SizedBox(height: 20),

            // Button Row (Keranjang, Beli, Pesan)
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // Keranjang Button
                ElevatedButton(
                  onPressed: () {
                    // Action for Keranjang
                    print("Produk ditambahkan ke keranjang");
                  },
                  child: Text("Keranjang"),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange,
                    padding: EdgeInsets.symmetric(horizontal: 30),
                  ),
                ),

                // Beli Button
                ElevatedButton(
                  onPressed: () {
                    // Action for Beli
                    print("Beli produk sekarang");
                  },
                  child: Text("Beli"),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blueAccent,
                    padding: EdgeInsets.symmetric(horizontal: 30),
                  ),
                ),

                // Pesan Button
                ElevatedButton(
                  onPressed: () {
                    // Action for Pesan
                    print("Pesan produk");
                  },
                  child: Text("Pesan"),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    padding: EdgeInsets.symmetric(horizontal: 30),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
