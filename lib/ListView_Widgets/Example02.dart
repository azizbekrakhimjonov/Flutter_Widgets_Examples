import 'package:flutter/material.dart';
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}



class _MyHomePageState extends State<MyHomePage> {

  final List<String> myData = <String>[
    'Azizbek', 'Samandar', 'Ilhomxoja', 'Muhammad', 'Suhrob', 'Tom',
    'John', 'Jecson', 'Maria', 'Tomsion', 'Jerry', 'Mikle', 'Andrey','A', 'b'
  ];
  final List<int> colorCodes = <int>[600,500,100,50,600,500,100,50,600,500,100,50,70,50,70];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ListView'),
      ),
      body: Container(
        color: Colors.lightGreen,
        child:  ListView.separated(
            padding: const EdgeInsets.all(8),
            itemCount: myData.length,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                height: 50,
                color: Colors.amber[colorCodes[index]],
                child: Center(child: Text('Entry ${myData[index]}')),
              );
            },
            separatorBuilder: (BuildContext context, int index) => const Divider(),
          ),
      ),
    );
  }
}



// color: Colors.amber[colorCodes[index]],

