class Product {
  final String name;
  final String imageAsset;
  final double price;

  Product({
    required this.name,
    required this.imageAsset,
    required this.price,
  });
}

List<Product> sampleProducts = [
  Product(
    name: 'Alba',
    imageAsset: 'Alba.jpg', // Replace with real URLs
    price: 299.99,
  ),
  Product(
    name: 'Sport Watch',
    imageAsset: 'https://via.placeholder.com/150',
    price: 149.99,
  ),
  Product(
    name: 'Casual Watch',
    imageAsset: 'https://via.placeholder.com/150',
    price: 99.99,
  ),
];
