import 'package:cryptofolio/model/portfolio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PortfolioItemWidget extends StatelessWidget{
  final _portfolio;


  PortfolioItemWidget(this._portfolio);

  @override
  Widget build(BuildContext context) {

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Row(
          children: <Widget>[
            FlutterLogo(size: 32,),
            Text("ETH")
          ],
        ),
        Column(children: <Widget>[
          Text("\$172.98"),
          Row(
            children: <Widget>[
              Text(
                  "\$2.56"
              ),
              Icon(Icons.arrow_drop_up)
            ],
          )
        ],),

        Column(
          children: <Widget>[
            Text("\44,283.98"),
            Row(
              children: <Widget>[
                Text(
                    "ETH"
                ),
                Text("256.00")
              ],
            )
          ],
        )
      ],
    );
  }

}