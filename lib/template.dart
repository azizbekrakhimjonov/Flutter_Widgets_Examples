import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';


class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Telegram"),
        bottom: TabBar(
          tabs: [
            Tab(icon: Icon(Icons.recent_actors), text: "Recents",),
            Tab(icon: Icon(Icons.person), text: "Personal",),
            Tab(icon: Icon(Icons.group), text: "groups",),
            Tab(icon: Icon(Icons.all_inclusive), text: "channals",),
          ],
        ),
      ),
      body: TabBarView(
        children: [
          Center(child: Text("page1"),),
          Center(child: Text("page2"),),
          Center(child: Text("page3"),),
          Center(child: Text("page4"),),

        ],

      ),
    );
  }
}
