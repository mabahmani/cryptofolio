import 'package:cryptofolio/provider/currencies.dart';
import 'package:cryptofolio/provider/portfolios.dart';
import 'package:cryptofolio/widget/portfolio/portfolio_app_bar_flex.dart';
import 'package:cryptofolio/widget/portfolio/portfolio_app_bar_title.dart';
import 'package:cryptofolio/widget/portfolio/portfolio_item_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Portfolio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final portfoliosData = Provider.of<Portfolios>(context);
    final portfolios = portfoliosData.items;

    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(slivers: <Widget>[
        SliverAppBar(
          title: PortfolioAppBarTitle(),
          pinned: true,
          flexibleSpace: FlexibleSpaceBar(background: PortfolioAppBarFlex()),
          expandedHeight: 150,
        ),
        SliverList(
            delegate: SliverChildBuilderDelegate(
          (context, index) => ListTile(
            title: PortfolioItemWidget(portfolios[index]),
            subtitle: Divider(),
          ),
          childCount: portfolios.length,
        ))
      ]),
    );
  }
}
