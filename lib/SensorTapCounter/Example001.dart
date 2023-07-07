import 'package:flutter/material.dart';

void main(){
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
  MaterialColor color = Colors.teal;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Sensor'),),
      body: GestureDetector(
        onTap: OnTab,
        onDoubleTap: DoubleTab,
        onLongPress: LongPressTab,
        child: Container(
          color: color,
        ),
      ),
    );
  }


  OnTab() {
    setState(() {
      print('OnTab');
      color = Colors.cyan;
    });
  }

  DoubleTab() {
    setState(() {
      print('DoubleTab');
    });
  }

  LongPressTab() {
    setState(() {
      print('LongPressTab');
    });
  }
}
