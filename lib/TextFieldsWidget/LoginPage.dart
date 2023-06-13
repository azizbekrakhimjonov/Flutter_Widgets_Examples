import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter',
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
      ),
      home: const MyHomePage(title: 'Instagram'),
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
  @override
  void onTab() {
    print('onTab');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/img.png'), fit: BoxFit.cover),
      ),
      child: Container(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.email),
                    labelText: 'Email',
                    labelStyle:
                        TextStyle(color: Colors.blueAccent, fontSize: 18),
                    // filled: true,
                    // fillColor: Colors.lightBlue,
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                        borderSide:
                            BorderSide(color: Colors.blueAccent, width: 2)),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(color: Colors.black, width: 2))),
              ),
              const SizedBox(height: 12),
              TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.security),
                    labelText: 'Password',
                    labelStyle:
                        TextStyle(color: Colors.blueAccent, fontSize: 18),
                    // filled: true,
                    // fillColor: Colors.lightBlue,
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                        borderSide:
                            BorderSide(color: Colors.blueAccent, width: 2)),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(color: Colors.black, width: 2))),
              ),
              const SizedBox(height: 12),
              ElevatedButton(
                child: Text('Log in'),
                style: ElevatedButton.styleFrom(
                    minimumSize: Size(double.infinity, 45.0)),
                onPressed: () {
                  print('salom');
                },
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
