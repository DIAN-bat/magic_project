import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;
import 'package:magic_project/models/models.dart';

// SERVICE AND DATA INJECTION
class CardsProvider extends ChangeNotifier {
  final String _baseUrl = 'api.scryfall.com';
  final int year = DateTime.now().year;

  List<CardData> lastCards = [];

  CardsProvider() {
    getLastCards();
  }

  Future httpRequest<T>(
    String endpoint, {
    Map<String, dynamic>? queryParameters,
  }) async {
    final Uri url = Uri.https(_baseUrl, endpoint, queryParameters);

    final response = await http.get(url);

    return response.body;
  }

  getLastCards() async {
    final response = await httpRequest(
      'cards/search',
      queryParameters: {'q': 'date>=$year'},
    );

    final lastCardsResponse = LastCardsResponse.fromJson(response);

    lastCards = lastCardsResponse.data;

    notifyListeners();
  }
}
