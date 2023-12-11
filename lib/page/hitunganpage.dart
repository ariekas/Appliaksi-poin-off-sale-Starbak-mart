import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class IconPlusMinus extends StatefulWidget {
  @override
  _IconPlusMinusState createState() => _IconPlusMinusState();
}

class _IconPlusMinusState extends State<IconPlusMinus> {
  int counter = 2;

  void incrementCounter() {
    setState(() {
      counter++;
    });
  }

  void decrementCounter() {
    setState(() {
      if (counter > 0) {
        counter--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 2),
      child: Container(
        padding: EdgeInsets.all(2),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: incrementCounter,
              child: Icon(
                CupertinoIcons.plus,
                color: Colors.red,
              ),
            ),
            Text(
              counter.toString(),
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            GestureDetector(
              onTap: decrementCounter,
              child: Icon(
                CupertinoIcons.minus,
                color: Colors.red,
              ),
            ),
          ],
        ),
      ),
    );
  }
}