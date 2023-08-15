import 'package:flutter/material.dart';

void main()=>runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter gridView',
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

  List<String> myData = [];

  int count = 0;

  void _addItem(){
    setState(() {
      myData.add('Item ${count++}');
    });
  }

  void _removeItem(index){
    setState(() {
      myData.removeAt(index);
      print(myData[index]);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Telegram"),
      ),
      body: Column(
        children: [
          Expanded(
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 8,
                mainAxisSpacing: 8,
              ),
              itemCount: myData.length,
              itemBuilder: (context, index){
                return GridTile(
                    child: GestureDetector(
                      onLongPress: (){
                        _removeItem(index);
                      },
                     child: Container(
                          color: Colors.green,
                          child: Center(child: Text('${myData[index]}'))
                      ),
                    ),
                );
              },
           ),
          ),
        ],
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: _addItem,
        child: Icon(Icons.add),
      ),

    );
  }
}
