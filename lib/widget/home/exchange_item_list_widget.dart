import 'package:cryptofolio/provider/currencies.dart';
import 'package:cryptofolio/provider/exchanges.dart';
import 'package:cryptofolio/widget/home/exchange_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'currency_item_widget.dart';

class ExchangeItemList extends StatefulWidget {
  @override
  _ExchangeItemListState createState() => _ExchangeItemListState();
}

class _ExchangeItemListState extends State<ExchangeItemList> {
  var _isInit = true;

  @override
  void initState() {
    //Provider.of<Currencies>(context).fetchCurrency();
    super.initState();
  }

  @override
  void didChangeDependencies() {
    if (_isInit) Provider.of<Exchanges>(context).fetchExchange();

    _isInit = false;
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    final exchangesData = Provider.of<Exchanges>(context);
    final exchanges = exchangesData.items;
    final bool isLoading = exchangesData.items.isEmpty;

    if (isLoading)
      return Center(child: CircularProgressIndicator());
    else
      return ListView.separated(
        itemCount: exchanges.length,
        itemBuilder: (context, index) => ExchangeItem(exchanges[index]),
        separatorBuilder: (context, index) {
          return Divider();
        },
      );
  }
}
