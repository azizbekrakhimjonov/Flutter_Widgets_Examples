import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

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
  final List<String> mydata = [
    'Apple',
    'Banana',
    'Cherry',
    'Mango',
    'Orange',
    'Limon',
    'Mandarin',
    'Kivi',
    'Malina'
  ];

  final List<int> colorsCode = [900, 800, 700, 600, 500, 400, 300, 200, 100];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Telegram"),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: ListView.separated(
            padding: EdgeInsets.all(10),
            itemBuilder: (BuildContext context, int index) {
              return Container(
                color: Colors.orange[colorsCode[index]],
                  height: 45, child: Center(child: Text(mydata[index])));
            },
            separatorBuilder: (BuildContext context, int index) =>
                const Divider(),
            itemCount: mydata.length),
      ),
    );
  }
}
