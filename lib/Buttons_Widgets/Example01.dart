import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';


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

  void OnClickBtn(String btnText) {
      print('$btnText Button on click');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: Text("Telegram"),
        leading: BackButton(color: Colors.white, onPressed: ()=>OnClickBtn('BackButton'),)
      ),
      body: Container(
        // color: Colors.black,
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 30,),
              ElevatedButton(onPressed: ()=> OnClickBtn('ElevatedButton'), child: Text('ElevatedButton')),
              TextButton(onPressed: ()=>OnClickBtn('TextButton'), child: Text('TextButton')),
              IconButton(onPressed: ()=>OnClickBtn('IconButton'), icon: Icon(Icons.add_circle)),
              FloatingActionButton(onPressed: ()=>OnClickBtn('FAB'),child: Icon(Icons.download),)
            ],
          ),
        ),
      ),

    );
  }
}
