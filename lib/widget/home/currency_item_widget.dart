import 'dart:ffi';
import 'dart:ui';

import 'package:cryptofolio/model/currency.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart' as intl;

class CurrencyItem extends StatefulWidget {
  final Currency currency;

  CurrencyItem(this.currency);

  @override
  State<StatefulWidget> createState() {
    return CurrencyItemState(currency);
  }
}

class CurrencyItemState extends State<CurrencyItem> {
  Currency currency;
  CurrencyItemState(this.currency);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Container(
                child: Row(
                  children: <Widget>[
                    Container(
                      child: Text(
                        currency.rank,
                        style: TextStyle(
                            color: Colors.blueGrey,
                            fontWeight: FontWeight.bold,
                            fontSize: 10),
                      ),
                      padding: EdgeInsets.all(2),
                    ),
                    Container(
                      width: 48,
                      height: 48,
                      child: currency.logoUrl.contains(".svg") ?
                      SvgPicture.network(currency.logoUrl,
                        fit: BoxFit.contain,
                      ):
                      Image.network(currency.logoUrl,
                        fit: BoxFit.contain,),
                      padding: EdgeInsets.all(5),
                    ),
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            currency.name,
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 12
                            ),
                          ),
                          Row(
                            children: <Widget>[
                              Text(
                                currency.symbol,
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 10),
                              ),

                              double.parse(currency.priceChangePct) < 0 ?
                              Icon(
                                Icons.arrow_drop_down,
                                color: Colors.redAccent,
                              ) :
                              Icon(
                                Icons.arrow_drop_up,
                                color: Colors.green,
                              ),
                              double.parse(currency.priceChangePct) < 0 ?
                              Text(
                                intl.NumberFormat("% #0.00").format(double.parse(currency.priceChangePct)),
                                style: TextStyle(
                                  color: Colors.redAccent,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 10,
                                ),
                                textDirection: TextDirection.ltr,
                              )
                              :
                              Text(
                                intl.NumberFormat("% #0.00").format(double.parse(currency.priceChangePct)),
                                style: TextStyle(
                                  color: Colors.green,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 10,
                                ),
                                textDirection: TextDirection.ltr,
                              )
                            ],
                          )
                        ],
                      ),
                      padding: EdgeInsets.all(10),
                    ),
                  ],
                ),
              ),
              Spacer(),
              Row(
                children: <Widget>[
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(bottom: 6),
                          child: Text(
                            "\$"+intl.NumberFormat.decimalPattern().format(double.parse(currency.price)),
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 12
                            ),
                          ),
                        ),
                        Row(
                          children: <Widget>[
                            Container(
                              margin: EdgeInsets.only(right: 3),
                              child: Text(
                                intl.NumberFormat.compactLong().format(double.parse(currency.marketCap)),
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 10),
                              textDirection: TextDirection.ltr,
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(right: 3),
                              child: Text(
                                "MCap",
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 10),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                    padding: EdgeInsets.all(10),
                  ),
                  Container(
                    child:
                    currency.favorite ?
                    IconButton(
                      icon:Icon(Icons.star,
                      color: Colors.amber,),
                      onPressed: (){
                        setState(() {
                          currency.favorite = !currency.favorite;
                        });
                      },
                    )
                    :
                    IconButton(
                      icon:Icon(Icons.star_border,
                      color: Colors.grey,),
                      onPressed: (){
                        setState(() {
                          currency.favorite = !currency.favorite;
                        });
                      },
                  ),
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
