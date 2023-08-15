// import 'dart:convert';
// import 'dart:io';
//
// import 'package:csv/csv.dart';
//
// var filename = '';
//
//
//
// Future<void> createCSVfile(String filePath, String content) async {
//   final file = File(filePath);
//   final directory = await file.parent.create(recursive: true);
//   await file.writeAsString(content);
// }
//
//
//
// Future<List> readItems() async {
//   // File file = new File('usersData.csv');
//   // String contents = file.readAsStringSync();
//   // List<String> lines = contents.split("\n");
//   // // for (var l in lines) {
//   // //   print(l);
//   // // }
//   // print(lines);
//   // return lines;
//   final input = File('lib/CreateFile/file.txt').openRead();
//   final fields = await input.transform(utf8.decoder).transform(CsvToListConverter()).toList();
//   print(fields);
//   return fields;
// }
//
// void addItems(String name, String email, String password){
//   // Directory filename  = Directory('lib/CreateFile/test.csv');
//   // File file =  File(filename as String);
//   File file =  File('lib//CreateFile//usersData.csv');
//   file.writeAsStringSync('$name, $email, $password\n', mode: FileMode.append);
//   print('successfully added...');
//
// }
//
//


import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';

// void main() {
//   runApp(
//     MaterialApp(
//       title: 'Reading and Writing Files',
//       home: FlutterDemo(storage: CounterStorage()),
//     ),
//   );
// }

class CounterStorage {
  Future<String> get _localPath async {
    final directory = await getApplicationDocumentsDirectory();

    return directory.path;
  }

  Future<File> get _localFile async {
    final path = await _localPath;
    return File('$path/counter.txt');
  }

  Future<String> readCounter() async {
    try {
      final file = await _localFile;

      // Read the file
      final contents = await file.readAsString();

      return contents;
    } catch (e) {
      return 'error';
    }
  }

  Future<File> writeCounter(counter) async {
    final file = await _localFile;

    return file.writeAsString(counter);
  }
}


//
// class FlutterDemo extends StatefulWidget {
//   const FlutterDemo({super.key, required this.storage});
//
//   final CounterStorage storage;
//
//   @override
//   State<FlutterDemo> createState() => _FlutterDemoState();
// }
//
// class _FlutterDemoState extends State<FlutterDemo> {
//   int _counter = 0;
//
//   @override
//   void initState() {
//     super.initState();
//     widget.storage.readCounter().then((value) {
//       setState(() {
//         _counter = value;
//       });
//     });
//   }
//
//   Future<File> _incrementCounter() {
//     setState(() {
//       _counter++;
//     });
//
//     // Write the variable as a string to the file.
//     return widget.storage.writeCounter(_counter);
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Reading and Writing Files'),
//       ),
//       body: Center(
//         child: Text(
//           'Button tapped $_counter time${_counter == 1 ? '' : 's'}.',
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _incrementCounter,
//         tooltip: 'Increment',
//         child: const Icon(Icons.add),
//       ),
//     );
//   }
// }