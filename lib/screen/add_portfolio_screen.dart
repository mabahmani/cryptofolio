import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AddPortfolio extends StatefulWidget {
  final _portfolio;
  AddPortfolio(this._portfolio);

  @override
  _AddPortfolioState createState() => _AddPortfolioState(_portfolio);
}

class _AddPortfolioState extends State<AddPortfolio> {
  final myController = TextEditingController();
  final _portfolio;


  _AddPortfolioState(this._portfolio);

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    myController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    print(myController.text);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: <Widget>[
          CloseButton(),
        ],
        title: Container(
          child: Row(
            children: <Widget>[
              Container(
                width: 48,
                height: 48,
                child: widget._portfolio.logo.contains(".svg")
                    ? SvgPicture.network(
                        widget._portfolio.logo,
                        fit: BoxFit.contain,
                      )
                    : Image.network(
                        widget._portfolio.logo,
                        fit: BoxFit.contain,
                      ),
                padding: EdgeInsets.all(5),
              ),
              Column(
                children: <Widget>[
                  Text(
                    widget._portfolio.name,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 18),
                  ),
                  Text(
                    widget._portfolio.symbol,
                    style: TextStyle(color: Colors.grey, fontSize: 14),
                  )
                ],
              )
            ],
          ),
        ),
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Center(
              child: Text("مقدار دارایی",
              style: TextStyle(fontWeight: FontWeight.bold,color: Colors.grey),),
            ),
          ),
          Center(
            child: TextField(
              controller: myController,
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
              keyboardType: TextInputType.numberWithOptions(),
              cursorWidth: 2,
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                hintText: '0',
                hintStyle: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
          ),
/*          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              margin: EdgeInsets.only(top: 12),
                child: Center(child: Text((double.parse(_portfolio.price) * double.parse(myController.text == "" ? "0":myController.text)).toString()))),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: Text("ارزش نهایی",
                  style: TextStyle(fontWeight: FontWeight.bold,color: Colors.grey)),
            ),
          ),*/
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: RaisedButton(
              onPressed: () {},
              child: Text( "اضافه کردن "+widget._portfolio.symbol + " به دارایی ها",
              style: TextStyle(color: Colors.white),),
              color: Colors.blue,
            ),
          )
        ],
      ),
    );
  }
}
