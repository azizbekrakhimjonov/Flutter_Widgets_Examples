import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MyHomePage();
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool isMode = false;

  void DarkMode() {
    setState(() {
      isMode = !isMode;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          brightness: (isMode) ? Brightness.dark : Brightness.light),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xffa5a5a5),
          title: Text('MODE'),
          actions: [
            IconButton(
                onPressed: () {
                  DarkMode();
                },
                icon: (isMode)? Icon(Iconsax.flash_circle):Icon(Icons.light_mode))
          ],
        ),
        body: GestureDetector(
          child: Container(
            color: (isMode)? Colors.deepOrangeAccent:Color(0xffa5a5a5),
            child: Center(
              child: Icon(Iconsax.flash_circle, size: 200),
            ),
          ),
          onTap: ()=> DarkMode()

        ),
      ),
    );
  }
}
