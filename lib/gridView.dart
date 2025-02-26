import 'package:first_project/main/model/modelControl.dart';
import 'package:flutter/material.dart';

class MyWidgetGridView extends StatelessWidget {
  const MyWidgetGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          itemCount: nameData.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
          ),
          itemBuilder: (context, index) {
            final data = nameData[index];
            final warna = nameData[index].color;
            return Container(
              padding: const EdgeInsets.all(8),
              color: Colors.teal[100],
              child: Container(
                color: warna,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(data.name)
                      ],
                    ),
                    Row(
                      children: [
                        Text(data.alamat)
                      ],
                    ),
                  ],
                ),
              ),  
            );
          },
        ),
      ),
    );
  }
}