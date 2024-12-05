import 'package:flutter/material.dart';
import 'welcome_page.dart';
import 'first_screen.dart';
import 'second_screen.dart';
import 'third_screen.dart';
import 'fourth_screen.dart';
import 'fifth_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Navigation App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/welcome',
      routes: {
        '/welcome': (context) => WelcomePage(),
        '/screen1': (context) => FirstScreen(),
        '/screen2': (context) => SecondScreen(),
        '/screen3': (context) => ThirdScreen(),
        '/screen4': (context) => FourthScreen(),
        '/screen5': (context) => FifthScreen(),
      },
    );
  }
}
