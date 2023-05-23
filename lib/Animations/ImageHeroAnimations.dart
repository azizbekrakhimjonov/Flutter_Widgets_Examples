/// https://docs.flutter.dev/ui/animations/hero-animations

import 'package:flutter/material.dart';

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Telegram"),
        ),
        body: SizedBox(
          width: 900,
          child: Hero(
            tag: 900,
            child: Material(
              color: Colors.transparent,
              child: InkWell(
                child: Image.asset(
                  'assets/image1.png',
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ),
        ));
  }
}
