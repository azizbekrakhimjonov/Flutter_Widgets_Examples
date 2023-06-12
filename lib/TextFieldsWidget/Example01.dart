import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: MyHomePage());
  }
}

class MyHomePage extends StatefulWidget{
  @override
  State<MyHomePage> createState() => LoginPage();
}

class LoginPage extends State<MyHomePage> {
  final email = TextEditingController();
  var email1 = 'asfhwd flgj';
  var pass = 'gsdfgds.f';
  @override
  void dispose(){
    email.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Instagram"),
        actions: [
          IconButton(
              onPressed: (){
                print(email.text);
              },
              icon: const Icon(Icons.person),
          )
        ],
      ),
      body: Center(
        child:  TextField(
          controller: email,
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            labelText: 'Password',
          ),
        ),
      ),
    );
  }
}
