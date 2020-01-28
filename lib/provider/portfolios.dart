
import 'dart:convert';
import 'dart:math';

import 'package:cryptofolio/model/currency.dart';
import 'package:cryptofolio/model/portfolio.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Portfolios with ChangeNotifier{
    List<Portfolio> _items = [
        Portfolio.name(
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
        ),
    ];

    List<Portfolio> get items => _items;
}