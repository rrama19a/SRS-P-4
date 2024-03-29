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

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Example'),
      ),
      body: Center(
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 8, 131, 47),
              ),
              child: Text(
                'Информация',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              title: Text('Кайратулы Рамазан'),
              onTap: () {
              },
            ),
            ListTile(
              title: Text('ra,ka@example.com'),
              onTap: () {
              },
            ),
          ],
        ),
      ),
    );
  }
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




class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool task1Checked = false;
  bool task2Checked = false;
  bool task3Checked = false;
  bool task4Checked = false;
  bool task5Checked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Choose u hobbies',
          style: TextStyle(
            fontSize: 24.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: ListView(
        children: [
          CheckboxListTile(
            title: Text('Football'),
            value: task1Checked,
            onChanged: (bool? value) {
              setState(() {
                task1Checked = value!;
              });
            },
          ),
          CheckboxListTile(
            title: Text('Basketball'),
            value: task2Checked,
            onChanged: (bool? value) {
              setState(() {
                task2Checked = value!;
              });
            },
          ),
          CheckboxListTile(
            title: Text('Video Games'),
            value: task3Checked,
            onChanged: (bool? value) {
              setState(() {
                task3Checked = value!;
              });
            },
          ),
          CheckboxListTile(
            title: Text('Reading Books'),
            value: task4Checked,
            onChanged: (bool? value) {
              setState(() {
                task4Checked = value!;
              });
            },
          ),
          CheckboxListTile(
            title: Text('Surfing the Internet'),
            value: task5Checked,
            onChanged: (bool? value) {
              setState(() {
                task5Checked = value!;
              });
            },
          ),
          Visibility(
            visible: task2Checked,
            child: Container(
              margin: EdgeInsets.symmetric(vertical: 10.0),
              padding: EdgeInsets.all(10.0),
              color: Colors.orange,
              child: Text(
                'basketball',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

