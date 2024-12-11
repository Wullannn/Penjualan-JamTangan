import 'package:flutter/material.dart';
import 'package:jamtangan/models/product.dart';

class SearchScreen extends StatefulWidget {
  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  List<Product> _filteredproduct = productList;
  String _searchQuery = '';
  final TextEditingController _searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _filteredproduct = _allproduct;
  }

  void _filterWatches(String query) {
    final filtered = _allWatches
        .where((watch) => watch.toLowerCase().contains(query.toLowerCase()))
        .toList();
    setState(() {
      _filteredWatches = filtered;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Search Watches'),
        backgroundColor: Colors.blueAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _searchController,
              decoration: InputDecoration(
                hintText: 'Search for a watch...',
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
              onChanged: _filterWatches,
            ),
            SizedBox(height: 16.0),
            Expanded(
              child: _filteredWatches.isNotEmpty
                  ? ListView.builder(
                itemCount: _filteredWatches.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(_filteredWatches[index]),
                    leading: Icon(Icons.watch),
                    onTap: () {
                      // Add action when a watch is tapped
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text('Selected: ${_filteredWatches[index]}'),
                        ),
                      );
                    },
                  );
                },
              )
                  : Center(
                child: Text(
                  'No results found',
                  style: TextStyle(fontSize: 16.0, color: Colors.grey),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}