import 'package:flutter/material.dart';

class CategoriesWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
child: Padding(
  padding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
  child: Row(
    children: [
      // single item
      // for(int i=0; i<10; i++)
      Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              spreadRadius: 2,
              blurRadius: 10,
              offset: Offset(0,3),
            ),
          ],
        ),
        child: Image.asset(
          "images/allmenu.jpg",
          width: 50,
          height: 50,
        ),
      ),
      ),
      Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              spreadRadius: 2,
              blurRadius: 10,
              offset: Offset(0,3),
              
            ),
          ],
        ),
        child: Image.asset(
          "images/burger.jpg",
          width: 50,
          height: 50,
        ),
      ),
      ),
      Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              spreadRadius: 2,
              blurRadius: 10,
              offset: Offset(0,3),
            ),
          ],
        ),
        child: Image.asset(
          "images/minuman.jpg",
          width: 50,
          height: 50,
        ),
      ),
      ),
    ],
  ),
   ),
    );
  }
}