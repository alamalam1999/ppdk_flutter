import 'package:first_project/main/model/modelControl.dart';
import 'package:flutter/material.dart';

class ModelViewExampleApp extends StatelessWidget {
  const ModelViewExampleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: ListBuilder());
  }
}

class ListBuilder extends StatefulWidget {
 const ListBuilder({super.key});
  @override
  State<ListBuilder> createState() => _ListBuilderState();
}  

class _ListBuilderState extends State<ListBuilder> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
     itemCount: nameData.length,
      itemBuilder: (context, int index) {
        final data = nameData[index];
        final number = index;
        return ListTile(
          title: Text(data.name),
          subtitle: Text(data.alamat),
          trailing: Text(number.toString()),
        );
        // return Padding(padding:EdgeInsets.all(2),
        // child: Column(
        //   children: [
        //     Text(data .name)
        //   ],
        // ),);
      },
    );
  }
}