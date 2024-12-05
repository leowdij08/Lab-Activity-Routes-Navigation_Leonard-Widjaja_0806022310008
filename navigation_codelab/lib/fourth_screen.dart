import 'package:flutter/material.dart';

class FourthScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fourth Screen'),
        backgroundColor: Colors.purple,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'This is the Fourth Screen',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            ..._buildPageButtons(context),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 3,
        selectedItemColor: Colors.blue[900],
        unselectedItemColor: Colors.black,
        backgroundColor: Colors.purple,
        onTap: (index) {
          _navigateToPage(index, context);
        },
        items: _buildBottomNavItems(),
      ),
    );
  }

  List<Widget> _buildPageButtons(BuildContext context) {
    final List<Map<String, String>> routes = [
      {'name': 'Go to Screen 1', 'route': '/screen1'},
      {'name': 'Go to Screen 2', 'route': '/screen2'},
      {'name': 'Go to Screen 3', 'route': '/screen3'},
      {'name': 'Go to Screen 5', 'route': '/screen5'},
    ];

    return routes.map((route) {
      return Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: ElevatedButton(
          onPressed: () => Navigator.pushNamed(context, route['route']!),
          child: Text(route['name']!),
        ),
      );
    }).toList();
  }

  void _navigateToPage(int index, BuildContext context) {
    final routes = ['/screen1', '/screen2', '/screen3', '/screen4', '/screen5'];
    Navigator.pushReplacementNamed(context, routes[index]);
  }

  List<BottomNavigationBarItem> _buildBottomNavItems() {
    return [
      BottomNavigationBarItem(icon: Icon(Icons.looks_one), label: 'Screen 1'),
      BottomNavigationBarItem(icon: Icon(Icons.looks_two), label: 'Screen 2'),
      BottomNavigationBarItem(icon: Icon(Icons.looks_3), label: 'Screen 3'),
      BottomNavigationBarItem(icon: Icon(Icons.looks_4), label: 'Screen 4'),
      BottomNavigationBarItem(icon: Icon(Icons.looks_5), label: 'Screen 5'),
    ];
  }
}
