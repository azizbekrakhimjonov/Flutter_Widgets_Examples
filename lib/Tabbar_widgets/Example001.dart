import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter',
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
  @override
  Widget build(BuildContext context) {
    final TabPages = <Widget>[
        const Center(child: Icon(Icons.person, size: 30, color: Colors.purple,)),
        const Center(child: Icon(Icons.chat_bubble, size: 30, color: Colors.purple,),),
        const Center(child: Icon(Icons.download, size: 30, color: Colors.purple),),
        const Center(child: Icon(Icons.add, size: 30, color: Colors.purple),)
    ];

    final kTab = <Tab>[
      const Tab(icon: Icon(Icons.person), text: 'Tab1',),
      const Tab(icon: Icon(Icons.chat_bubble), text: 'Tab2',),
      const Tab(icon: Icon(Icons.download), text: 'Tab3',),
      const Tab(icon: Icon(Icons.add), text: 'Tab4',)
    ];
    return DefaultTabController(
      length: kTab.length,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Tabbar Example'),
          bottom: TabBar(
              tabs: TabPages,
          ),
        ),
        body: TabBarView(
          children: kTab
        ),
      ),
    );
  }
}
