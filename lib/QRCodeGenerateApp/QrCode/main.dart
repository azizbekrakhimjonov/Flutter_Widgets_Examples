import 'package:flutter/material.dart';
import 'qr_image.dart';

void main()=>runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter',
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
   
   var editController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(10),
            child: TextField(
              controller: editController,
              decoration: InputDecoration(
              hintText: 'your text here',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(14)
              ),
            ),
            ),
          ),

          ElevatedButton(
              onPressed: (){
                Navigator.push(
                    context,
                  MaterialPageRoute(builder: (context) => QrImage(editController.text)),
                );
                print(editController);
          },
              child: Text('Make QR')
          )
        ],
      )
    );
  }
}
