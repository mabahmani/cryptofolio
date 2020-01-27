import 'package:cryptofolio/provider/currencies.dart';
import 'package:cryptofolio/widget/portfolio/portfolio_app_bar_flex.dart';
import 'package:cryptofolio/widget/portfolio/portfolio_app_bar_title.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Portfolio extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            title: PortfolioAppBarTitle(),
            floating: false,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
                centerTitle: true,
                collapseMode: CollapseMode.parallax,
                background: PortfolioAppBarFlex()),
            expandedHeight: 200,
          )
          ,
          SliverFillRemaining(
            child: Center(
              child: Text("CHILD"),
            ),
          )
        ],
      ),
    );
  }

}