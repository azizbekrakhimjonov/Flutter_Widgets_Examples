import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Drawer ga yozish',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController textEdit = TextEditingController();
  String _drawerText = '';

  void _updateDrawerText() {
    setState(() {
      _drawerText = textEdit.text;
      textEdit.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Drawer'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              controller: textEdit,
              decoration: InputDecoration(
                hintText: 'Malumot kiriting: ',
              ),
            ),
            ElevatedButton(
              onPressed: _updateDrawerText,
              child: Text('click me'),
            ),
            SizedBox(height: 20),
            Text(
              'Malumot: $_drawerText',
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text(
                'Email: $_drawerText',
                style: TextStyle(fontSize: 24, color: Colors.white),
              ),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
