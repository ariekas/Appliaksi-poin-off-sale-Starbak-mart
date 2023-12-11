import 'package:ass_pm/page/CartPage.dart';
import 'package:ass_pm/page/itempage.dart';
import 'package:flutter/material.dart';
import 'package:ass_pm/page/HomePage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
      ),
      routes: {
        "/": (context) => HomePage(),
        "cartpage": (context) => CartPage(),
        "itemPage" : (context) => ItemPage()
      },
    );
  }
}
