import 'package:flutter/material.dart';
import 'package:flutter_cookbook/snackbar.dart';

class CustomFAB extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      child: IconButton(
        icon: Icon(Icons.add),
        onPressed: () {
          final snackBar =
              CustomSnackBar(title: 'You pressed FAB!').build(context);
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        },
      ),
    );
  }
}
