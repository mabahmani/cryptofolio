
import 'dart:convert';
import 'dart:math';

import 'package:cryptofolio/model/currency.dart';
import 'package:cryptofolio/model/portfolio.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Portfolios with ChangeNotifier{
    List<Portfolio> _items = [
/*        Portfolio.name(
            "",
            "ETH",
            "176.2",
            "2.33",
            "13235564",
            "12356"
        ),

        Portfolio.name(
            "",
            "BTC",
            "8400.2",
            "1.33",
            "13235564",
            "12356"
        ),        Portfolio.name(
            "",
            "BTC",
            "8400.2",
            "1.33",
            "13235564",
            "12356"
        ),        Portfolio.name(
            "",
            "BTC",
            "8400.2",
            "1.33",
            "13235564",
            "12356"
        ),        Portfolio.name(
            "",
            "BTC",
            "8400.2",
            "1.33",
            "13235564",
            "12356"
        ),        Portfolio.name(
            "",
            "BTC",
            "8400.2",
            "1.33",
            "13235564",
            "12356"
        ),        Portfolio.name(
            "",
            "BTC",
            "8400.2",
            "1.33",
            "13235564",
            "12356"
        ),        Portfolio.name(
            "",
            "BTC",
            "8400.2",
            "1.33",
            "13235564",
            "12356"
        ),        Portfolio.name(
            "",
            "BTC",
            "8400.2",
            "1.33",
            "13235564",
            "12356"
        ),        Portfolio.name(
            "",
            "BTC",
            "8400.2",
            "1.33",
            "13235564",
            "12356"
        ),*/
    ];

    List<Portfolio> get items => _items;

    Future<List<Portfolio>> fetchPortfolio() async {
        print("fetchPortfolio");
        final response =
        await http.get('https://api.nomics.com/v1/currencies/ticker?ids=BTC,ETH,XRP,BCH,BSV,USDT,EOS,LTC,BNB,ADA,ETC,XLM,TRX,XMR&interval=1d&key=08d0cd7ea589eb82ad9b3d8a897f098a');

        if (response.statusCode == 200) {

            print(response.body);
            List<dynamic> body = jsonDecode(response.body);

            List<Portfolio> portfolios = body
                .map(
                    (dynamic item) {
                    final portfolio = Portfolio.fromJson(item);
                    addPortfolio(portfolio);
                    return portfolio;
                },
            ).toList();

            return portfolios;
        } else {
            print("error");
            throw Exception('Failed to load post');
        }
    }

  void addPortfolio(portfolio) {
        _items.add(portfolio);
        notifyListeners();
  }
}