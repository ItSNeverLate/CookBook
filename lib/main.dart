import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_cookbook/drawer.dart';
import 'package:flutter_cookbook/fab.dart';
import 'package:flutter_cookbook/orientation.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Cook Book',
      initialRoute: '/',
      routes: {
        '/': (context) => HomeScreen(),
        '/orientation': (context) => OrientationScreen(),
      },
      // home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Flutter Cook Book')),
      drawer: CustomDrawer(),
      floatingActionButton: CustomFAB(),
    );
  }
}
