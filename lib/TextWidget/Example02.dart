import 'package:flutter/material.dart';


class MyApp extends StatelessWidget{
  const MyApp({Key? key, }): super(key : key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
              'My Flutter pages'
          ),
        ),
        body: Center(
          child:
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Flutter',
                style: TextStyle(fontSize: 30,fontWeight: FontWeight.w900,color: Colors.green.shade50,
                  fontFamily: "Orbitron",
                ),
              ),
              Text(
                'Flutter',
                style: TextStyle(fontSize: 30,fontWeight: FontWeight.w900,color: Colors.green.shade100
                ),
              ),
              Text(
                'Flutter',
                style: TextStyle(fontSize: 30,fontWeight: FontWeight.w900,color: Colors.green.shade200
                ),
              ),
              Text(
                'Flutter',
                style: TextStyle(fontSize: 30,fontWeight: FontWeight.w900,color: Colors.green.shade300
                ),
              ),
              Text(
                'Flutter',
                style: TextStyle(fontSize: 30,fontWeight: FontWeight.w900,color: Colors.green.shade400
                ),
              ),
              Text(
                'Flutter',
                style: TextStyle(fontSize: 30,fontWeight: FontWeight.w900,color: Colors.green.shade500
                ),
              ),
              Text(
                'Flutter',
                style: TextStyle(fontSize: 30,fontWeight: FontWeight.w900,color: Colors.green.shade600
                ),
              ),
              Text(
                'Flutter',
                style: TextStyle(fontSize: 30,fontWeight: FontWeight.w900,color: Colors.green.shade700
                ),
              ),
              Text(
                'Flutter',
                style: TextStyle(fontSize: 30,fontWeight: FontWeight.w900,color: Colors.green.shade700
                ),
              ),
              Text(
                'Flutter',
                style: TextStyle(fontSize: 30,fontWeight: FontWeight.w900,color: Colors.green.shade900
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}