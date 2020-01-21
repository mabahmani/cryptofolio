import 'package:cryptofolio/provider/currencies.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'currency_item_widget.dart';

class CurrencyItemList extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    final currenciesData = Provider.of<Currencies>(context);
    final currencies = currenciesData.items;
    return ListView.separated(
      itemCount: currencies.length,
      itemBuilder: (context, index) => CurrencyItem(currencies[index]),
      separatorBuilder: (context, index) {
        return Divider();
      },
    );
  }

}