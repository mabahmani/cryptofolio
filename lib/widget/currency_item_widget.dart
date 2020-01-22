import 'dart:ffi';

import 'package:cryptofolio/model/currency.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
              Expanded(
                child: Container(
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
                        child: currency.logoUrl.contains(".svg") ?
                        SvgPicture.network(currency.logoUrl,
                          width: 32,
                          height: 32,
                        ):
                        Image.network(currency.logoUrl,
                          width: 32,
                          height: 32,),
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
                                  currency.priceChangePct,
                                  style: TextStyle(
                                    color: Colors.redAccent,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 10,
                                  ),
                                  textDirection: TextDirection.ltr,
                                )
                                :
                                Text(
                                  currency.priceChangePct,
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
              ),
              Expanded(
                child: Row(
                  children: <Widget>[
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(bottom: 6),
                            child: Text(
                              "\$" + currency.price,
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
                                  "Bn",
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 10),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(right: 3),
                                child: Text(
                                  "\$" + currency.marketCap,
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 10),
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
                    Expanded(
                      child: Center(
                        child: Container(
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
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
