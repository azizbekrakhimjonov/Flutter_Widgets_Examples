import 'package:flutter/material.dart';
import 'package:csv/csv.dart';
import 'dart:io';
import 'package:path_provider/path_provider.dart';

void main()=>runApp(MyApp());


class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter',
      home: MyTextFieldPage(),
    );
  }
}

Future<void> writeDataToCSV(String text) async {
  try {
    final List<List<dynamic>> rows = [];
    rows.add([text]);

    Directory documentDirectory = await getApplicationDocumentsDirectory();
    String documentPath = documentDirectory.path;
  print(documentDirectory.path);
    File file = File('$documentPath/usersData.csv');

    String csvData = ListToCsvConverter().convert(rows);
    await file.writeAsString(csvData);

    print('Data written to CSV successfully!');
  } catch (e) {
    print('Error writing data to CSV: $e');
  }
}
Future<List<String>> readDataFromCSV() async {
  try {
    List<String> dataList = [];

    Directory documentDirectory = await getApplicationDocumentsDirectory();
    String documentPath = documentDirectory.path;

    File file = File('$documentPath/usersData.csv');
    String csvData = await file.readAsString();

    List<List<dynamic>> rowsAsListOfValues = CsvToListConverter().convert(csvData);

    for (var row in rowsAsListOfValues) {
      dataList.add(row[0].toString());
    }

    return dataList;
  } catch (e) {
    print('Error reading data from CSV: $e');
    return [];
  }
}



class MyTextFieldPage extends StatefulWidget {
  @override
  _MyTextFieldPageState createState() => _MyTextFieldPageState();
}

class _MyTextFieldPageState extends State<MyTextFieldPage> {
  TextEditingController _textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Text Field & CSV Example'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              controller: _textEditingController,
              decoration: InputDecoration(labelText: 'Enter text'),
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                String text = _textEditingController.text;
                writeDataToCSV(text);
              },
              child: Text('Save to CSV'),
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                var get = readDataFromCSV();
                print(get);
              },
              child: Text('Read the CSV'),
            ),
          ],
        ),
      ),
    );
  }
}
