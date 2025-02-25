import 'package:flutter/material.dart';

class First2Class extends StatelessWidget {
  const First2Class({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        spacing: 12,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 200,
            width: 200,        
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
               color: Colors.blueAccent,
            ),
          ),
          newRow(), 
          newRow(), 
          newRow(), 
          newRow(), 
          newRow(), 
          newRow(),

        
          Row(
            children: <Widget> [
              Expanded(
                child: ElevatedButton(onPressed: null, child: Text("Submit")),
                )
            ],
          )
        ],
      ),
      ),
    );
  }

  Row newRow() {
    return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [    
                    Text("Mantul", style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold
                    ),),
              ],
            ),
             Column(
              children: [
                    Text("Mantul", style: TextStyle(
                      fontSize: 30,
                      fontWeight : FontWeight.bold
                    ))
              ],
            ) 
          ],
        );
  }
}