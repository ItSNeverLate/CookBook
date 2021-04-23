import 'package:flutter/material.dart';
import 'package:flutter_cookbook/drawer.dart';
import 'package:flutter_cookbook/fab.dart';

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
