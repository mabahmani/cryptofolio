
import 'dart:convert';

import 'package:cryptofolio/model/currency.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Currencies with ChangeNotifier{
    List<Currency> _items = [];

    List<Currency> get items => _items;

    Future<List<Currency>> fetchCurrency() async {
        print("fetchCurrency");
        final response =
        await http.get('https://api.nomics.com/v1/currencies/ticker?interval=1d&key=08d0cd7ea589eb82ad9b3d8a897f098a');

        if (response.statusCode == 200) {

            print(response.body);
            List<dynamic> body = jsonDecode(response.body);

            List<Currency> currencies = body
                .map(
                    (dynamic item) {
                        final currency = Currency.fromJson(item);
                        addCurrency(currency);
                        return currency;
                    },
            ).toList();

            return currencies;
        } else {
            print("error");
            throw Exception('Failed to load post');
        }
    }

    void addCurrency(Currency currency){
        _items.add(currency);
        notifyListeners();
    }
}