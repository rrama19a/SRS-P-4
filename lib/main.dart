import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter Linear Progress Bar'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 50.0,
                width: 50.0,
                child: CircularProgressIndicator(),
              ),
              SizedBox(height: 20.0),
              SizedBox(
                height: 20.0,
                width: 200.0,
                child: LinearProgressIndicator(),
              ),
              SizedBox(height: 20.0),
              Text(
                'Loading...',
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

