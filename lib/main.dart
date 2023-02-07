//listView
//listTile
//themeData
// Switch
//tabBar & tabBarView
//onBoardingScreen


import 'package:flutter/material.dart';
import 'package:session7_2/onBoard.dart';

void main()=>runApp(home());

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  bool mode=false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme:ThemeData.dark(),
      home: onBoard()
    );
  }
}

