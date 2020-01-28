import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AddPortfolioItem extends StatelessWidget {
  final _portfolio;

  AddPortfolioItem(this._portfolio);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            children: <Widget>[
              Container(
                width: 48,
                height: 48,
                child: _portfolio.logo.contains(".svg")
                    ? SvgPicture.network(
                        _portfolio.logo,
                        fit: BoxFit.contain,
                      )
                    : Image.network(
                        _portfolio.logo,
                        fit: BoxFit.contain,
                      ),
                padding: EdgeInsets.all(5),
              ),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      _portfolio.name,
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 12),
                    ),
                    Text(
                      _portfolio.symbol,
                      style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                          fontSize: 10),
                    ),
                  ],
                ),
                padding: EdgeInsets.all(10),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Icon(Icons.add_box)
            ],
          )
        ],
      ),
    );
  }
}
