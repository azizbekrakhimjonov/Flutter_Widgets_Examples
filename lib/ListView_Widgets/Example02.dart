import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

void main()=>runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}



class _MyHomePageState extends State<MyHomePage> {

  final List<String> myData = <String>[];


  var count = 0;

  void _addListTile(){
    setState(() {
      myData.add("Item ${count++}");
      print(myData);
    });
  }

  void _remuveItem(int index){
    setState(() {
      myData.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ListView'),
      ),
      body: Container(
        color: Color(0xffa5a5a5),
        child: Column(
          children: [
            Expanded(
                child: ListView.builder(
                    itemCount: myData.length,
                    itemBuilder: (context, index){
                      return ListTile(
                        leading: const CircleAvatar(
                            backgroundImage:
                            NetworkImage('https://images.pexels.com/photos/17305999/pexels-photo-17305999.jpeg',)
                        ),
                        onLongPress: (){
                          _remuveItem(index);
                          print(myData);
                        },
                        title: Center(child: Text(myData[index])),
                      );
                    }
                ),
            ),
          ],

        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _addListTile,
        child: Icon(Icons.add),
      ),
    );
  }
}




