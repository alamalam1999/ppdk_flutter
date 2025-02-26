import 'package:first_project/BottomNavigator.dart';
import 'package:first_project/container.dart';
import 'package:first_project/drawer.dart';
import 'package:first_project/first.dart';
import 'package:first_project/loginPage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Color.fromARGB(0, 173, 207, 198)),
      ),
      // home: const MyHomePage(title: 'Flutter Demo Home Page'),
      home: const MyWidgetPageLogin()
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {

      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      _counter--;
    });
  }

  void _duplicateCounter() {
    setState(() {
      _counter = 0;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
       
      appBar: AppBar(

        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

        title: Text(widget.title),
      ),
      body: Center(
        child: Container(
          color: Colors.red,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                
                  Column(
                    children: [
                      Container(
                        height: 500,
                        width: 50,
                        color: Colors.white,
                      ),
                    ],
                  ),
                   Column(
                    children: [
                      Row(
                        children: [
                          Container(
                        height: 150,
                        width: 100,
                        color: Colors.amber,
                      ),
                        ],
                      ),
                      Row(
                          children: [
                            Container(
                        height: 200,
                        width: 100,
                        color: Colors.blue,
                      ),
                          ],
                      ),
                      Row(
                        children: [
                          Container(
                        height: 150,
                        width: 100,
                        color: Colors.amber,
                      ),
                        ],
                      )
                      
                    ],
                  ),
                   Column(
                    children: [
                      Container(
                        height: 500,
                        width: 50,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}