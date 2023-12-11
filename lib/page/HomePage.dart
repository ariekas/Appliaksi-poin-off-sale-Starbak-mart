

import 'package:ass_pm/page/CartPage.dart';
import 'package:ass_pm/page/addCartPage.dart';
import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:ass_pm/widgets/AppBarwidget.dart';
import 'package:ass_pm/widgets/CategoriesWidget.dart';
import 'package:ass_pm/widgets/MenuWidget.dart';
import 'package:ass_pm/widgets/PopulerItemWidget.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        HomeMenu(), 
        // Category
        Padding(
          padding: EdgeInsets.only(top: 20, left: 10),
          child: Text(
            "Categories",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
        ),

        // Categories widget
        CategoriesWidget(),

        // Popular items
        Padding(
          padding: EdgeInsets.only(top: 20, left: 10),
          child: Text(
            "Popular",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
        ),
        // Popular item widget
        PopulerItemWidget(),

        // Newest items
        Padding(
          padding: EdgeInsets.only(top: 20, left: 10),
          child: Text(
            "Menu",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
        ),
        MenuWidget(),
      ],
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Widget> pages = [Home(), CartPage(), addCartPage()];
  int selected = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[selected],
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.transparent,
        onTap: (index) {
          setState(() {
            selected = index;
          });
        },
        height: 70,
        color: Colors.blue,
        items: [
          Icon(
            Icons.home,
            size: 30,
            color: Colors.white,
          ),
          Icon(
            Icons.shopping_cart,
            size: 30,
            color: Colors.white,
          ),
          Icon(
            Icons.addchart,
            size: 30,
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}
