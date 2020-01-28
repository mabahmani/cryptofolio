import 'package:flutter/material.dart';

class PortfolioAppBarFlex extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      margin: EdgeInsets.only(top: 60),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(top:8,bottom: 8,right: 8),
                decoration: BoxDecoration(
                    color: Colors.greenAccent,
                    borderRadius: BorderRadius.circular(8)),
                child: Row(
                  children: <Widget>[
                    Text("\$1,432.83",
                      style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.white),),
                    Icon(Icons.arrow_drop_up,color: Colors.white,)
                  ],
                ),
              ),

              Text("\$61,104.32",
              style: TextStyle(fontWeight: FontWeight.bold,fontSize: 32,color: Colors.black)),
            ],
          ),

          Padding(
            padding: const EdgeInsets.only(top:8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text("تغییرات 24 ساعت گذشته",
                  style: TextStyle(fontSize:11,fontWeight: FontWeight.bold,color: Colors.grey),),
                Text("مجموع دارایی به دلار",
                  style: TextStyle(fontSize:11,fontWeight: FontWeight.bold,color: Colors.grey),)
              ],
            ),
          )
        ],
      ),
    );
  }

}