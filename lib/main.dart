import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_cookbook/drawer.dart';
import 'package:flutter_cookbook/fab.dart';
import 'package:flutter_cookbook/orientation.dart';
import 'package:google_fonts/google_fonts.dart';

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
        textTheme: TextTheme(
          subtitle1: TextStyle(color: Colors.blue)
        )
      ),
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
      appBar: AppBar(
        title: Text(
          'Flutter Cook Book',
          // style: GoogleFonts.lobster(),
          style: TextStyle(fontFamily: 'ZenDots'),
        ),
      ),
      drawer: CustomDrawer(),
      floatingActionButton: CustomFAB(),
    );
  }
}
