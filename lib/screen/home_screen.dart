import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            icon: Image.asset('images/blockchain.png'), onPressed: null),
        title: Text("Cryptofolio"),
        brightness: Brightness.dark,
        actions: <Widget>[IconButton(icon: Icon(Icons.search), onPressed: null)],
      ),
    );
  }
}
