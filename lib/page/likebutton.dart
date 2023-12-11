import 'package:flutter/material.dart';



class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool isLiked = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: IconButton(
            icon: isLiked ? Icon(Icons.favorite, color: Colors.red) : Icon(Icons.favorite_border),
            onPressed: () {
              setState(() {
                isLiked = !isLiked;
              });
            },
          ),
        ),
      ),
    );
  }
}
