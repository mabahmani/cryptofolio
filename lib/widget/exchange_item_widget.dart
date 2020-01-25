import 'dart:ffi';
import 'dart:ui';

import 'package:cryptofolio/model/currency.dart';
import 'package:cryptofolio/model/exchange.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart' as intl;

class ExchangeItem extends StatefulWidget {
  final Exchange exchange;

  ExchangeItem(this.exchange);

  @override
  State<StatefulWidget> createState() {
    return ExchangeItemState(exchange);
  }
}

class ExchangeItemState extends State<ExchangeItem> {
  Exchange exchange;
  ExchangeItemState(this.exchange);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title:
        Container(
          child: Column(
            children: <Widget>[
              Container(
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.all(10),
                child: Text(exchange.exchange.toUpperCase(),
                style: TextStyle(color:Colors.blueAccent,fontSize: 24,fontWeight: FontWeight.bold),),
              ),

              Container(
                alignment: Alignment.bottomRight,
                child: Row(
                  children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Text(exchange.base,
                      style: TextStyle(color:Colors.amber,fontSize: 14,fontWeight: FontWeight.bold),),
                  ),
                  Icon(Icons.keyboard_tab,color: Colors.blueGrey,),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Text(exchange.quote,
                      style: TextStyle(color:Colors.redAccent,fontSize: 14,fontWeight: FontWeight.bold),),
                  ),
                ],),
              )
            ],
        ),
        ),
    );
  }
}
