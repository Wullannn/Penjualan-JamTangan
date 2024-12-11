import 'package:flutter/material.dart';
import 'package:jamtangan/models/product.dart';


class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  List<Product> allProduct = [

  ];

  List<Product> filteredproduct = [];
  String searchQuery = '';
  final TextEditingController _searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
    filteredproduct= allProduct;
  }

  void updateSearchQuery(String query) {
    setState(() {
      searchQuery = query;
      filteredproduct = allProduct
          .where((watch) => watch.nama.toLowerCase().contains(query.toLowerCase()))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pencarian'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Colors.blueGrey[50],
              ),
              child: const TextField(
                autofocus: false,
                // TODO: 6. Implementasikan fitur pencarian
                decoration: InputDecoration(
                  hintText: 'Cari candi...',
                  prefixIcon: Icon(Icons.search),
                  // TODO: 7. Implementasikan pengosongan input
                  border: InputBorder.none,
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blueGrey)),
                  contentPadding: EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 12,
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: filteredproduct.length,
              itemBuilder: (context, index) {
                final watch = filteredproduct[index];
                return Card(
                  margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  child: Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(8.0),
                        width: 100,
                        height: 100,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child: Image.asset(
                            watch.imageAsset,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),

                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

