
import 'package:cryptofolio/model/portfolio.dart';
import 'package:cryptofolio/provider/portfolios.dart';
import 'package:cryptofolio/widget/portfolio/add_portfolio_item_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AddPortfolio extends StatelessWidget {
  final List<Portfolio> portfolios;

  AddPortfolio(this.portfolios);

  @override
  Widget build(BuildContext context) {
    print("portfolios:" + portfolios.length.toString());
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(icon:Icon(Icons.arrow_back), onPressed: () {
          Navigator.of(context).pop();
        },),
        title: Text(
          "افزودن دارایی",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
        ),
      ),
      body: ListView.separated(
        itemCount: portfolios.length,
        itemBuilder: (context, index) => AddPortfolioItem(portfolios[index]),
        separatorBuilder: (context, index) {
          return Divider();
        },
      ),
    );
  }
}
