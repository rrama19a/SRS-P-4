import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 4, 
        child: Scaffold( 
          appBar: AppBar(
            title: Text('Ramazana cary'),
            bottom: TabBar(
              tabs: [
                Tab(
                  icon: Icon(Icons.directions_bike),
                  text: 'Bike', 
                ),
                Tab(
                  icon: Icon(Icons.directions_transit),
                  text: 'Transit', 
                ),
                Tab(
                  icon: Icon(Icons.directions_boat),
                  text: 'Boat', 
                ),
                Tab(
                  icon: Icon(Icons.directions_railway),
                  text: 'Railway', 
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              Icon(Icons.directions_bike),
              Icon(Icons.directions_car),
              Icon(Icons.directions_transit),
              Icon(Icons.directions_boat),
            ],
          ),
        ),
      ),
    );
  }
}
