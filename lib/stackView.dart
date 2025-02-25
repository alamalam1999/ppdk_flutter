import 'package:flutter/material.dart';

class MyWidgetGrid extends StatelessWidget {
  const MyWidgetGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return Placeholder(
      child: 
          Stack(
  children: <Widget>[
    Container(
      width: 1000,
      height: 1000,
      color: Colors.red,
    ),
    Container(
      width: 90,
      height: 90,
      color: Colors.green,
    ),
    Container(
      width: 80,
      height: 80,
      color: Colors.blue,
    ),
  ],
) 
    );
  }
}