import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(  shadowColor: Colors.orangeAccent,
          title: Text('Swagger'),
        ),
        // body: Center(
        //   child: Container(
        //     width: double.infinity,
        //     height: 400,
        //     decoration: BoxDecoration(
        //       image: DecorationImage(image: AssetImage('assets/images/img_0.png'), fit: BoxFit.cover),
        //       color: Colors.teal,
        //       borderRadius: BorderRadius.only(topLeft: Radius.circular(45), bottomRight: Radius.circular(45)),
        //       boxShadow: const [
        //         BoxShadow(
        //           color: Color(0xffa5a5a5),
        //           blurRadius: 8,
        //           spreadRadius: 4,
        //           offset: Offset(6, 8), // Shadow position
        //         ),
        //       ],
        //     ),
        //   ),
        // ),

        body: const DecoratedBox(
          decoration: BoxDecoration(
            gradient: RadialGradient(
              center: Alignment(-0.5, -0.6),
              radius: 0.15,
              colors: <Color>[
                Color(0xFFEEEEEE),
                Color(0xFF111133),
              ],
              stops: <double>[0.9, 1.0],
            ),
          ),
        ),
      ),
    );
  }
}
