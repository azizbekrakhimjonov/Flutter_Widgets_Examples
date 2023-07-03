import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter',
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

class _MyHomePageState extends State<MyHomePage>{
  @override
  Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         backgroundColor: Colors.orange,
         title: TextButton(
             onPressed: () {  },
             child: Text('Deeline', style: TextStyle(color: Colors.black, fontSize: 26, fontFamily: 'Times New Roman'))),
         actions: [
           IconButton(onPressed: (){}, icon: Icon(Icons.heart_broken_rounded, color: Colors.black,)),
           IconButton(onPressed: (){}, icon: Icon(Icons.message, color: Colors.black,)),
         ],
       ),
       bottomNavigationBar: CurvedNavigationBar(
         backgroundColor: Colors.black,
         color: Colors.orange,
         animationCurve: Curves.linearToEaseOut,
         items: const [
           Icon(Icons.home_filled, size: 30),
           Icon(Icons.search, size: 30),
           Icon(Icons.add_box_outlined, size: 30),
           Icon(Icons.video_collection, size: 30),
           Icon(Icons.account_box, size: 30),
         ],
         onTap: (index){
           print("$index onTap");
         },
       ),
       body: Container(color: Colors.black),
     );
  }

}

