import 'package:flutter/material.dart';

class PortfolioAppBarTitle extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Text("دارایی",
        style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: Colors.black)),
        IconButton(
          icon: Icon(Icons.add,color: Colors.black,),
          onPressed: () =>{},
        )
      ],
    );
  }

}