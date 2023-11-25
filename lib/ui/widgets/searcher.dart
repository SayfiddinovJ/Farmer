import 'package:flutter/material.dart';

class TextSearchDelegate extends SearchDelegate {
  final List<String> strings;

  TextSearchDelegate(this.strings);

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: const Icon(Icons.clear),
        onPressed: () {
          query = '';
        },
      ),
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.arrow_back_ios),
      onPressed: () {
        close(context, null);
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    final List<String> searchResults = strings
        .where((product) => product.toLowerCase().contains(query.toLowerCase()))
        .toList();

    return ListView.builder(
      itemCount: searchResults.length,
      itemBuilder: (context, index) {
        final product = searchResults[index];
        return ListTile(
          title: Text(product),
        );
      },
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final List<String> searchResults = strings
        .where((product) => product.toLowerCase().contains(query.toLowerCase()))
        .toList();
    return ListView.builder(
      itemCount: searchResults.length,
      itemBuilder: (context, index) {
        final product = searchResults[index];
        return ListTile(title: Text(product));
      },
    );
  }
}
