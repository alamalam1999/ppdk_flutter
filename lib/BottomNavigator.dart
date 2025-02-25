import 'package:first_project/container.dart';
import 'package:first_project/first.dart';
import 'package:first_project/first_2.dart';
import 'package:first_project/gridView.dart';
import 'package:first_project/stackView.dart';
import 'package:first_project/listView.dart';
import 'package:first_project/mapView.dart';
import 'package:first_project/modelView.dart';
import 'package:flutter/material.dart';

class BottomNavigationBarExampleApp extends StatelessWidget {
  const BottomNavigationBarExampleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BottomNavigationBarExample());
  }
}

class BottomNavigationBarExample extends StatefulWidget {

  const BottomNavigationBarExample({super.key});

  @override
  State<BottomNavigationBarExample> createState() => _BottomNavigationBarExampleState();
}

class _BottomNavigationBarExampleState extends State<BottomNavigationBarExample> {
  int _selectedIndex = 0;

  static const TextStyle optionStyle = TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
 
  static const List<Widget> _widgetOptions = <Widget>[
    // FirstClass(),
    // First2Class(),
    // MyWidgetContainer(),
    // ListViewExampleApp(),
    MyWidgetGridView(),
    MyWidgetGrid()
    // ModelViewExampleApp()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.all(12),
          children: <Widget>[
            SizedBox(
              height: 150,
              child: DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 85),
                      child: Row(
                        children: [
                          Container(
                            height: 50,
                            width: 70,
                            decoration: BoxDecoration(
                              border: Border.all(width: 4),
                              color: Colors.amber,
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                image: NetworkImage(
                                    "https://pemilu.bisnis.com/img/capres/Erick-Thohir.png?id=4689460d126672dc7667745ebc829360"),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Row(
                            children: [
                              Text(
                                "Erick Thohir",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: const Text('Home'),
              selected: _selectedIndex == 0,
              onTap: () {
                _onItemTapped(0);
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.business),
              title: const Text('Business'),
              selected: _selectedIndex == 1,
              onTap: () {
                // Update the state of the app
                _onItemTapped(1);
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
              selected: _selectedIndex == 2,
              onTap: () {
                // Handle the tap
                 _onItemTapped(2);
                 Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(title: const Text('BottomNavigationBar Check')),
      body: Center(child: _widgetOptions.elementAt(_selectedIndex)),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          // BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Check'),
          // BottomNavigationBarItem(icon: Icon(Icons.business), label: 'Business'),
          // BottomNavigationBarItem(icon: Icon(Icons.school), label: 'School'),
          // BottomNavigationBarItem(icon: Icon(Icons.list), label: 'List View'),
          // BottomNavigationBarItem(icon: Icon(Icons.map), label: 'List Map'),
          // BottomNavigationBarItem(icon: Icon(Icons.model_training), label: 'List Model'),
          BottomNavigationBarItem(icon: Icon(Icons.grid_3x3), label: 'Grid View'),
          BottomNavigationBarItem(icon: Icon(Icons.stacked_bar_chart), label: 'Stack View'),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}