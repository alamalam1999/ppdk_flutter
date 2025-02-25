import 'package:flutter/material.dart';

class MyWidgetContainer extends StatelessWidget {
  const MyWidgetContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
       children: [
        Flexible(
          child: Container(
            height: MediaQuery.of(context).size.height,
            color: Colors.red,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 300,
                  width: 100,
                  color: Colors.amber,
                ),
                Container(
                  height: 300,
                  width: 100,
                  color: Colors.black26,
                  child: Row(
                    children: [
                      Row(
                        children: [
                          Container(
                        height: 50,
                        width: 30,
                        
                      )
                        ],
                      ),
                      Row(
                            children: [
                              Container(
                        height: 40,
                        width: 40,
                        color: Colors.blue,
                      )
                            ],
                      ),
                      Row(
                          children: [
                              Container(
                        height: 50,
                        width: 30,
                        
                      )
                            ],
                      )
                      
                    ],
                  ),
                ),
                Container(
                  height: 300,
                  width: 100,
                  color: Colors.amber,
                )
              ],
            ),
          ),
        )
       ],
      ),
    );
  }
}