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
        Row(
          children: <Widget>[
            Container(
              child: Row(
                children: <Widget>[
                  Container(
                    child: Text(
                      "1",
                      style: TextStyle(
                          color: Colors.blueGrey,
                          fontWeight: FontWeight.bold,
                          fontSize: 12),
                    ),
                    padding: EdgeInsets.all(10),
                  ),
                  Container(
                    child: FlutterLogo(),
                    padding: EdgeInsets.all(5),
                  ),
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "FlutterCoin",
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                        Row(
                          children: <Widget>[
                            Text(
                              "FTC",
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12),
                            ),
                            Icon(
                              Icons.arrow_drop_up,
                              color: Colors.green,
                            ),
                            Text(
                              "+5.33",
                              style: TextStyle(
                                color: Colors.green,
                                fontWeight: FontWeight.bold,
                                fontSize: 12,
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
            Container(
              child: Row(
                children: <Widget>[
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(bottom: 6),
                          child: Text(
                            "\$8,641.19",
                            style: TextStyle(
                                color: Colors.black, fontWeight: FontWeight.bold),
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
                                    fontSize: 12),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(right: 3),
                              child: Text(
                                "\$157.01",
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(right: 3),
                              child: Text(
                                "MCap",
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                    padding: EdgeInsets.all(10),
                  ),
                  Container(
                    child: Icon(Icons.star_border,color: Colors.grey,),
                    padding: EdgeInsets.all(10),
                  )
                ],
              ),
            )
          ],
        )
      ],
    );
  }
}
