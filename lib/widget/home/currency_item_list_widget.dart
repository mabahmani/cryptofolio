import 'package:cryptofolio/provider/currencies.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'currency_item_widget.dart';

class CurrencyItemList extends StatefulWidget {
  @override
  _CurrencyItemListState createState() => _CurrencyItemListState();
}

class _CurrencyItemListState extends State<CurrencyItemList> {
  var _isInit = true;

  @override
  void initState() {
    //Provider.of<Currencies>(context).fetchCurrency();
    super.initState();
  }

  @override
  void didChangeDependencies() {
    if (_isInit) Provider.of<Currencies>(context).fetchCurrency();

    _isInit = false;
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    final currenciesData = Provider.of<Currencies>(context);
    final currencies = currenciesData.items;
    final bool isLoading = currenciesData.items.isEmpty;

    if (isLoading)
      return Center(child: CircularProgressIndicator());
    else
      return ListView.separated(
        itemCount: currencies.length,
        itemBuilder: (context, index) => CurrencyItem(currencies[index]),
        separatorBuilder: (context, index) {
          return Divider();
        },
      );
  }
}
