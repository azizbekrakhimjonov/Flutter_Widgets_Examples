import 'package:flutter/material.dart';

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
        home: MyHomePage()
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          IconButton(
           onPressed: (){
            ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text('Error sensor tap!'),
                ),
            );
          },
              icon: const Icon(Icons.search)
          )
        ],
      ),
        body: Center(
          child: TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Enter a search term',
            ),
          ),

        ),
    );
  }
}