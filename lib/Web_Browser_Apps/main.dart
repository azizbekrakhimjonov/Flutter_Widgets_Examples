import 'package:chat_bubbles/chat_bubbles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'Example01.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
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
  var Getlink;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            SecondRoute(Getlink.toString()),
            MessageBar(
              onSend: (_){
                Getlink = _;
              },
              // actions: [
              //   InkWell(
              //     child: Icon(
              //       Icons.add,
              //       color: Colors.black,
              //       size: 24,
              //     ),
              //     onTap: () {},
              //   ),
              //   Padding(
              //     padding: EdgeInsets.only(left: 8, right: 8),
              //     child: InkWell(
              //       child: Icon(
              //         Icons.camera_alt,
              //         color: Colors.green,
              //         size: 24,
              //       ),
              //       onTap: () {},
              //     ),
              //   ),
              // ],
            ),
          ],
        ),
      ),
    );
  }
}
