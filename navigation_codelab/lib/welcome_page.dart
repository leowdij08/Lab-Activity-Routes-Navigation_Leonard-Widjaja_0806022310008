import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  final List<Map<String, String>> routes = [
    {'name': 'Go to Screen 1', 'route': '/screen1'},
    {'name': 'Go to Screen 2', 'route': '/screen2'},
    {'name': 'Go to Screen 3', 'route': '/screen3'},
    {'name': 'Go to Screen 4', 'route': '/screen4'},
    {'name': 'Go to Screen 5', 'route': '/screen5'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome Page'),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Welcome to the Navigation App!',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            ...routes.map((route) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: ElevatedButton(
                  onPressed: () => Navigator.pushNamed(context, route['route']!),
                  style: ElevatedButton.styleFrom(
                    fixedSize: Size(200, 50),
                    backgroundColor: Colors.blue,
                  ),
                  child: Text(route['name']!, style: TextStyle(color: Colors.white)),
                ),
              );
            }).toList(),
          ],
        ),
      ),
    );
  }
}
