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
          primaryColor: const Color(0xff43a047),
          primaryColorDark: const Color(0xff00701a),
          primaryColorLight: const Color(0xff76d275),
          accentColor: const Color(0xffff8f00),
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
