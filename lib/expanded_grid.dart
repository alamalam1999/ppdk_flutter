import 'package:first_project/gridView.dart';
import 'package:flutter/material.dart';

class MyWidgetGrid_Expanded extends StatelessWidget {
  const MyWidgetGrid_Expanded({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: Column(
         children: [
           Row(
            children: [
                  Expanded(
                    flex: 1,
                    child: Container(
                      height: 100,
                      width: 100,
                      color: Colors.blueAccent,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 30,
                            width: 30,
                            color: Colors.amber,
                          ),
                        ],
                      ),
                    ),
                  ),
              Expanded(
                flex: 3,
                child: 
                      Container(
                      height: 100,
                        color: Colors.amber,
                      ),
              ),
            ],
           ),
           Row(
            children: [
             Expanded(
              flex: 3,
               child: Container(
                height: 100,
                width: 100,
                color: const Color.fromARGB(255, 238, 29, 29),
               ),
             ),
             Expanded(
              flex: 1,
               child: Container(
                height: 100,
                width: 100,
                color: Colors.pinkAccent,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 30,
                      width: 30,
                      color: Colors.blueAccent,
                    )
                  ],
                ),
               ),
             )
            ],
           ),
           Expanded(child: 
           MyWidgetGridView())
         ],
       ),
    );
  }
}