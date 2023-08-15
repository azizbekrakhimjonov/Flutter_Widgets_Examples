import 'dart:math';
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
  var num1 = 1;
  var num2 = 1;
  var answer;
  TextEditingController controller = TextEditingController();

  void r(){
    setState(() {
      num1 = Random().nextInt(10);
      num2 = Random().nextInt(10);
    });
  }

  void randomMizer() {
    setState(() {
      answer  = num1 + num2;
      if (answer.toString() == controller.text){
        controller.clear();
        r();
      }
      else{
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Wrong')));
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Game Math"),
      ),
      body: Container(
        padding: EdgeInsets.all(14),
        child: Column(children: <Widget>[
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text(num1.toString(), style: TextStyle(fontSize: 35)),
            SizedBox(
              width: 10,
            ),
            Text('+', style: TextStyle(fontSize: 35)),
            SizedBox(
              width: 10,
            ),
            Text(num2.toString(), style: TextStyle(fontSize: 35)),
            SizedBox(
              width: 10,
            ),
          ]),
          TextField(
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 35),
            controller: controller,
          ),

        ]),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => randomMizer(),
        child: Icon(Icons.add),
      ),
    );
  }
}
