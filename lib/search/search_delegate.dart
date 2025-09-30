import 'package:flutter/material.dart';

class CardSearchDelegate extends SearchDelegate {
  @override
  List<Widget>? buildActions(BuildContext context) {
    return [IconButton(icon: Icon(Icons.clear), onPressed: () => query = '')];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return null;
  }

  @override
  Widget buildResults(BuildContext context) {
    return Text('Results');
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return Text('Suggestions');
  }
}
