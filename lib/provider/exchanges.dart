
import 'dart:convert';

import 'package:cryptofolio/model/currency.dart';
import 'package:cryptofolio/model/exchange.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Exchanges with ChangeNotifier{
    List<Exchange> _items = [];

    List<Exchange> get items => _items;

    Future<List<Exchange>> fetchExchange() async {
        final response =
        await http.get('https://api.nomics.com/v1/markets?key=08d0cd7ea589eb82ad9b3d8a897f098a');

        if (response.statusCode == 200) {

            print(response.body);
            List<dynamic> body = jsonDecode(response.body);

            List<Exchange> exchanges = body
                .map(
                    (dynamic item) {
                        final exchange = Exchange.fromJson(item);
                        addExchange(exchange);
                        return exchange;
                    },
            ).toList();

            return exchanges;
        } else {
            print("error");
            throw Exception('Failed to load post');
        }
    }

    void addExchange(Exchange exchange){
        _items.add(exchange);
        notifyListeners();
    }
}