import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CurrencyItem extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return CurrencyItemState();
  }
}

class CurrencyItemState extends State<CurrencyItem> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: <Widget>[
        Card(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
              Text("1"),
              FlutterLogo(),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text("FlutterCoin"),
                  Row(
                    children: <Widget>[
                      Text("FTC"),
                      Icon(Icons.arrow_drop_up),
                      Text("+5.33")
                    ],
                  )
                ],
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text("\$8,641.19"),
                  Row(
                    children: <Widget>[
                      Text("MCap"),
                      Text("\$157.01"),
                      Text("Bn")
                    ],
                  )
                ],
              ),
              Icon(Icons.star_border)
            ],
          ))
        ],
      );
    }
}
