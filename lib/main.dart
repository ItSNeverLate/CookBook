import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_cookbook/home-screen.dart';
import 'package:flutter_cookbook/orientation.dart';
import 'package:flutter_cookbook/tab-screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Cook Book',
      initialRoute: '/',
      theme: ThemeData(
          primaryColor: Colors.red,
          accentColor: Colors.purple,
          textTheme: TextTheme(subtitle1: TextStyle(color: Colors.blue))),
      routes: {
        '/': (context) => HomeScreen(),
        '/orientation': (context) => OrientationScreen(),
        '/tabs': (context) => TabScreen(),
      },
      // home: HomeScreen(),
    );
  }
}
