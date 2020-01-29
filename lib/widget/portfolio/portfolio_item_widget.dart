import 'package:cryptofolio/model/portfolio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

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
            Container(
              width: 48,
              height: 48,
              child: _portfolio.logo.contains(".svg") ?
              SvgPicture.network(_portfolio.logo,
                fit: BoxFit.contain,
              ):
              Image.network(_portfolio.logo,
                fit: BoxFit.contain,),
              padding: EdgeInsets.all(5),
            ),            Text(_portfolio.symbol)
          ],
        ),
        Column(children: <Widget>[
          Text(_portfolio.price),
          Row(
            children: <Widget>[
              Text(
                  _portfolio.priceChange
              ),
              Icon(Icons.arrow_drop_up)
            ],
          )
        ],),

        Column(
          children: <Widget>[
            Text(_portfolio.totalPrice),
            Row(
              children: <Widget>[
                Text(
                    _portfolio.symbol
                ),
                Text(_portfolio.coinValue)
              ],
            )
          ],
        )
      ],
    );
  }

}