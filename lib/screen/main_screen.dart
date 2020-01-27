import 'package:cryptofolio/provider/currencies.dart';
import 'package:cryptofolio/widget/home/home_widget.dart';
import 'package:cryptofolio/widget/portfolio/portfolio_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';

class Main extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return MainState();
  }
}


class MainState extends State<Main>{

  int _selectedSheet = 0;
  final _sheets =[
    Home(), Portfolio(),Home(),Home(),Home()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _sheets[_selectedSheet],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        unselectedItemColor: Colors.black,
        selectedItemColor: Colors.blue,
        selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
        unselectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
        currentIndex: _selectedSheet,
        onTap: (int index){
          setState(() {
              _selectedSheet = index;
          });},
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home,color: Colors.black,),
            title: Text("خانه"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.work,color: Colors.black),
            title: Text("دارایی")
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.timeline,color: Colors.black),
            title: Text("بازار جهانی")
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.explore,color: Colors.black),
            title: Text("اخبار")
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings,color: Colors.black),
            title: Text("تنظیمات"),
          ),

        ],
      ),
    );
  }

}
