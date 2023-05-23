import 'package:flutter/material.dart';

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: MyHomePage()
    );
  }
}

class MyHomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            "Tarjimon",
          textAlign: TextAlign.center,
        ),
        backgroundColor: Colors.teal,
        actions: <Widget>[
          IconButton(onPressed: (){},
              tooltip: 'Search',
              icon: const Icon(Icons.settings)),
          IconButton(onPressed: (){},
              tooltip: 'Settings',
              icon: const Icon(Icons.settings))
        ],
      ),
      body:Center(
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
              children: [
            Image.asset(
              'assets/images/mit.png',
              width: 240,
          ),
           Image.asset(
              'assets/images/mit.png',
             width: 240,
          ),
          ]
          ),
          Image.asset(
              'assets/images/mit.png',
             width: 240,
          ),     Image.asset(
              'assets/images/mit.png',
             width: 240,
          ),     Image.asset(
              'assets/images/mit.png',
             width: 240,
          ),
        ],
      ),
      ),
    );
  }

}