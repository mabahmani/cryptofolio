
import 'package:cryptofolio/model/currency.dart';
import 'package:flutter/material.dart';

class Currencies with ChangeNotifier{
    List<Currency> _items = [
        Currency("BTC", "BTC", "BTC", "Bitcoin", "url", "1", "8,3568", "157.3", "+5.03"),
        Currency("ETH", "ETH", "ETH", "Etherium", "url", "2", "166.5", "10.3", "-2.03")
    ];

    List<Currency> get items => _items;

    void addCurrency(){
        notifyListeners();
    }
}