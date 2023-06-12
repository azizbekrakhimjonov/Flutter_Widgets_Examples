import 'package:chat_bubbles/chat_bubbles.dart';
import 'package:flutter/material.dart';
import 'ChatClass.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Chat App',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: MyHomePage());
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var bubble = Bubble(text: 'text');
  String text = '';

  void sendmessage(String txt) {
    setState(() {
      text = txt.trim();
      print(text);
    });
  }

  @override
  Widget build(BuildContext context) {
    final now = DateTime.now();

    return Scaffold(
      appBar: AppBar(title: Text("Chat app"), actions: [
        IconButton(
          onPressed: () {
            ScaffoldMessenger.of(context)
                .showSnackBar(SnackBar(content: Text("Back On Click")));
          },
          icon: Icon(Icons.call),
        )
      ]),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: <Widget>[

              ],
            ),
          ),
          SizedBox(
            height: 100,
          ),
          MessageBar(
            onSend: (txt) => sendmessage(txt),
            actions: [
              InkWell(
                child: Icon(
                  Icons.add,
                  color: Colors.black,
                  size: 24,
                ),
                onTap: () {},
              ),
              Padding(
                padding: EdgeInsets.only(left: 8, right: 8),
                child: InkWell(
                  child: Icon(
                    Icons.camera_alt,
                    color: Colors.green,
                    size: 24,
                  ),
                  onTap: () {},
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
