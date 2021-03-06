import 'package:cryptofolio/provider/currencies.dart';
import 'package:cryptofolio/provider/exchanges.dart';
import 'package:cryptofolio/widget/home/currency_item_list_widget.dart';
import 'package:cryptofolio/widget/home/exchange_item_list_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
              icon: Image.asset('images/blockchain.png'), onPressed: null),
          title: Text("Cryptofolio"),
          centerTitle: true,
          brightness: Brightness.dark,
          actions: <Widget>[
            IconButton(
                icon: Icon(Icons.search),
                onPressed: () {
                  showSearch(context: context, delegate: DataSearch());
                })
          ],
          bottom: TabBar(
            tabs: [Tab(text: "ارزهای دیجیتال"), Tab(text: "صرافی ها")],
            labelColor: Colors.blue,
            unselectedLabelColor: Colors.black,
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            ChangeNotifierProvider(
              create: (context) => Currencies(),
              child: CurrencyItemList(),
            ),
            ChangeNotifierProvider(
              create: (context) => Exchanges(),
              child: ExchangeItemList(),
            )
          ],
        ),
      ),
    );
  }
}

class DataSearch extends SearchDelegate<String> {
  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
          icon: Icon(Icons.clear),
          onPressed: () {
            query = "";
          })
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
        icon: Icon(Icons.arrow_back),
        onPressed: () {
          close(context, null);
        });
  }

  @override
  Widget buildResults(BuildContext context) {
    return null;
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return ListView.builder(itemBuilder: (context, index) => ListTile());
  }

  @override
  ThemeData appBarTheme(BuildContext context) {
    assert(context != null);
    final ThemeData theme = Theme.of(context);
    assert(theme != null);
    return theme.copyWith(
        primaryColor: Colors.white,
        primaryIconTheme: theme.primaryIconTheme.copyWith(color: Colors.grey),
        primaryColorBrightness: Brightness.light,
        primaryTextTheme: theme.textTheme,
        textTheme: TextTheme(title: TextStyle(fontSize: 14.0)),
        inputDecorationTheme: InputDecorationTheme(
            hintStyle: TextStyle(
          fontSize: 14.0,
          fontWeight: FontWeight.bold,
        )));
  }

  @override
  String get searchFieldLabel => 'جستجو در ارزها';
}
