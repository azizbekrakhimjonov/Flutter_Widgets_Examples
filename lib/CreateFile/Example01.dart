import 'package:flutter/material.dart';
import 'functions.dart';

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
        primarySwatch: Colors.lightBlue,
      ),
      debugShowCheckedModeBanner: false,
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

  var _name = TextEditingController();
  var _email = TextEditingController();
  var _password = TextEditingController();

  @override
  void dispose(){
    _name.dispose();
    _email.dispose();
    _password.dispose();
    super.dispose();
  }

  void getTextFields(){
    // addItems(_name.text, _email.text, _password.text);

    setState(() {

      print("\n${_name.text}\n${_email.text}\n${_password.text}");
      _name.clear();
      _email.clear();
      _password.clear();
    });
  }

  void ShowCSV(){
    // readItems();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/img_2.png'), fit: BoxFit.cover),
          ),
          child: Container(
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextField(
                    controller: _name,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                        prefixIcon: const Icon(Icons.person),
                        labelText: 'name',
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
                    controller: _email,
                    decoration: InputDecoration(
                        prefixIcon: const Icon(Icons.mail),
                        labelText: 'email',
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
                    controller: _password,
                    decoration: InputDecoration(
                        prefixIcon: const Icon(Icons.security),
                        labelText: 'password',
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
                      ShowCSV();
                    },
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}


                                                                  