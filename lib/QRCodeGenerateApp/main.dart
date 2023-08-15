import 'package:flutter/material.dart';
import 'generate_qr_code.dart';


void main()=>runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme:
      ThemeData(primaryColor: Colors.black54, primarySwatch: Colors.brown),
      home: const GenerateQRCode(),
    );
  }
}