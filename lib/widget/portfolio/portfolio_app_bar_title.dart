import 'package:cryptofolio/model/portfolio.dart';
import 'package:cryptofolio/provider/portfolios.dart';
import 'package:cryptofolio/screen/add_portfolios_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class PortfolioAppBarTitle extends StatelessWidget {
  final List<Portfolio> portfolios;


  PortfolioAppBarTitle(this.portfolios);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Text("دارایی",
            style: TextStyle(fontWeight: FontWeight.bold,
                fontSize: 18,
                color: Colors.black)),
        IconButton(
          icon: Icon(Icons.add, color: Colors.black,),
          onPressed: () {

          Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => ChangeNotifierProvider(
            create: (context) => Portfolios(),
            child:AddPortfolio(portfolios) ,
          )),
          );
        },
        )
      ],
    );
  }

}