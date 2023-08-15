import 'package:flutter/material.dart';

void main()=>runApp(MyApp());

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
    'assets/images/'
  ];


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
          itemCount: 14,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              height: 50,
              child: Center(child: Image.asset('assets/images/img_$index.png'),
              ),
            );
          },
          separatorBuilder: (BuildContext context, int index) => const Divider(),
        ),
      ),
    );
  }
}



// color: Colors.amber[colorCodes[index]],

