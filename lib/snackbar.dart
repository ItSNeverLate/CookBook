import 'package:flutter/material.dart';

class CustomSnackBar extends StatelessWidget {
  final String title;

  CustomSnackBar({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SnackBar(
      content: Text(title),
      action: SnackBarAction(
        label: 'Got it!',
        textColor: Colors.red,
        onPressed: () {},
      ),
    );
  }
}
