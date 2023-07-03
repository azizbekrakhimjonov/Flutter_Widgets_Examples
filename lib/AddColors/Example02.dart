import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter',
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Telegram"),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.blue.shade600,
                Colors.blue.shade300,
                Colors.blue.shade200,
                Colors.red.shade200,
                Colors.red.shade300,
                Colors.red.shade600,
              ],
              begin: Alignment.topRight,
              end: Alignment.bottomLeft
            ),
          ),
        ),
      ),

      body:  Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [
                Colors.deepPurple,
                Colors.purple.shade300,
                Colors.blue.shade800,
                Colors.black,
              ],
              begin: Alignment.topRight,
              end: Alignment.bottomLeft

          ),
        ),
      ),
    );
  }
}
