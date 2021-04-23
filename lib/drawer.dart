import 'package:flutter/material.dart';
import 'package:flutter_cookbook/snackbar.dart';

class CustomDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text('Mehdi Parsaei'),
            accountEmail: Text('mehdiparsaeigm@gmail.com'),
            currentAccountPicture: CircleAvatar(
              foregroundImage: AssetImage('images/avatar.png'),
            ),
          ),
          ListTile(
            title: Text(
              'Show a Snack Bar',
              style: Theme.of(context).textTheme.subtitle1,
            ),
            onTap: () {
              Navigator.pop(context);
              final snackBar =
                  CustomSnackBar(title: 'This is a Snack Bar!').build(context);
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
            },
          ),
          ListTile(
            title: Text(
              'Orientation Support',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
            ),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushNamed(context, '/orientation');
            },
          ),
        ],
      ),
    );
  }
}
