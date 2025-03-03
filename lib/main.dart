import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:first_project/BottomNavigator.dart';
import 'package:first_project/container.dart';
import 'package:first_project/drawer.dart';
import 'package:first_project/first.dart';
import 'package:first_project/loginPage.dart';
import 'package:first_project/gridView.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final GoRouter _router = GoRouter(
      routes: [
        GoRoute(
          path: '/home',
          builder: (context, state) => const MyWidgetPageLogin(),
        ),
        GoRoute(
          path: '/',
          builder: (context, state) => const MyHomePage(title: 'Home Page'),
        ),
      ],
    );

    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Color.fromARGB(0, 173, 207, 198),
        ),
      ),
      routerDelegate: _router.routerDelegate,
      routeInformationParser: _router.routeInformationParser,
      routeInformationProvider: _router.routeInformationProvider,
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
  bool _isActive = true;
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
                      Container(height: 500, width: 50, color: Colors.white),
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
                      ),
                      GestureDetector(
                        onTap:
                            _isActive
                                ? () {
                                  // Navigator.push(
                                  //   context,
                                  //   MaterialPageRoute(
                                  //     builder:
                                  //         (context) =>
                                  //             const BottomNavigationBarExampleApp(),
                                  //   ),
                                  // );
                                  context.go("/home");
                                }
                                : null,
                        child: Container(
                          height: 30,
                          width: 70,
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(6),
                          ),
                          child: Center(
                            child: Text(
                              "LOGIN",
                              style: TextStyle(
                                color: Colors.amber,
                                fontWeight: FontWeight.bold,
                                fontSize: 10,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Container(height: 500, width: 50, color: Colors.white),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
