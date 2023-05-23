import 'package:flutter/material.dart';

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Image'
          ),
        ),
        body:
        Column(
              children: [
                Image.asset('assets/images/mit.png'),
                // Image.network(
                // 'https://picsum.photos/id/1074/400/400',
                // ),
              ],
            ),
        ),
      );
  }
}