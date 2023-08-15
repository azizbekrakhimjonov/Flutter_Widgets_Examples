// import 'package:flutter/material.dart';
//
// void main() {
//   runApp(MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: ListViewExample(),
//     );
//   }
// }
//
// class ListViewExample extends StatefulWidget {
//   @override
//   _ListViewExampleState createState() => _ListViewExampleState();
// }
//
// class _ListViewExampleState extends State<ListViewExample> {
//   List<String> items = [];
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('ListView'),
//       ),
//       body: Column(
//         children: [
//           Expanded(
//             child: ListView.builder(
//               itemCount: items.length,
//               itemBuilder: (context, index) {
//                 return ListTile(
//                   title: Text(items[index]),
//                 );
//               },
//             ),
//           ),
//
//           FloatingActionButton(
//             onPressed: _addItemToList,
//             child: Text('Add '),
//           ),
//         ],
//       ),
//     );
//   }
//
//   void _addItemToList() {
//     setState(() {
//       items.add('Item ${items.length + 1}');
//     });
//   }
// }



import 'package:flutter/material.dart';

void main()=>runApp(MyApp());

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ListViewExample(),
    );
  }
}

class ListViewExample extends StatefulWidget {
  const ListViewExample({super.key});

  @override
  State<ListViewExample> createState() => _ListViewExample();
}

class _ListViewExample extends State<ListViewExample> {
  List<String> items = [];
  final List<int> _list = List.generate(20, (i) => i);
  final List<bool> _selected = List.generate(20, (i) => false);

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Expanded(
              child: ListView.builder(
                  itemCount: items.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      tileColor: _selected[index] ? Colors.blue : null,
                      onTap: () => setState(() => _selected[index] = !_selected[index]),
                      title: Text(items[index]),
                    );
                  }))
        ],
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: _addItems,
        child: Icon(Icons.add),
    )
    );
  }

  void _addItems(){
    setState(() {
      items.add('Items ${items.length+1}');
    });
  }
}
