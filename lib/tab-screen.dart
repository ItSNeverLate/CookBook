import 'package:flutter/material.dart';

class TabScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Flutter Cook Book',
            // style: GoogleFonts.lobster(),
            style: TextStyle(fontFamily: 'ZenDots'),
          ),
          bottom: TabBar(
            tabs: <Tab>[
              Tab(icon: Icon(Icons.directions_car)),
              Tab(icon: Icon(Icons.directions_transit)),
              Tab(icon: Icon(Icons.directions_bike)),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            Center(
                child: Text(
              'CAR',
              style: Theme.of(context).textTheme.headline5,
            )),
            Center(
                child: Text(
              'TRANSIT',
              style: Theme.of(context).textTheme.headline5,
            )),
            Center(
                child: Text(
              'BIKE',
              style: Theme.of(context).textTheme.headline5,
            )),
          ],
        ),
      ),
    );
  }
}
