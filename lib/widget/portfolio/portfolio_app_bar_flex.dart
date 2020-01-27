import 'package:flutter/material.dart';

class PortfolioAppBarFlex extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text("\$61,104.32",
              style: TextStyle(fontWeight: FontWeight.bold,fontSize: 32,color: Colors.black)),

              Container(
                color: Colors.greenAccent,
                constraints: BoxConstraints(),
                child: Row(
                  children: <Widget>[
                    Icon(Icons.arrow_drop_up,color: Colors.white,),
                    Text("\$1,432.83",
                    style: TextStyle(fontSize: 18,color: Colors.white),)
                  ],
                ),
              )
            ],
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text("مجموع دارایی به دلار",
              style: TextStyle(fontWeight: FontWeight.bold,color: Colors.grey),),
              Text("تغییرات 24 ساعت گذشته",
                style: TextStyle(fontWeight: FontWeight.bold,color: Colors.grey),)
            ],
          )
        ],
      ),
    );
  }

}