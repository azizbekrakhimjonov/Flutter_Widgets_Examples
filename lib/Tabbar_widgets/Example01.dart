import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
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
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.recent_actors), text: "Recents"),
              Tab(icon: Icon(Icons.person), text: "Personal"),
              Tab(icon: Icon(Icons.group), text: "groups"),
              Tab(icon: Icon(Icons.all_inclusive), text: "channals")
            ],
          ),
          title: Text('TabBar'),
        ),
        body: TabBarView(
          children: [
            Center(child: Text("page1")),
            Center(child: Text("page2")),
            Center(child: Text("page3")),
            Center(child: Text("page4"))
          ],
        ),
      ),
    );
  }
}