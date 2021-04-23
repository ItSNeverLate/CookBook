import 'package:flutter/material.dart';

class OrientationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Orientation')),
      body: OrientationBuilder(
        builder: (context, orientation) => GridView.count(
          crossAxisCount: orientation == Orientation.portrait ? 2 : 3,
          children: List.generate(
            100,
            (index) {
              return Center(
                child: Text(
                  index.toString(),
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
