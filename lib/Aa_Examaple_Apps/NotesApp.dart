import 'dart:io';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';

class NotesApp extends StatefulWidget {
  @override
  _NotesAppState createState() => _NotesAppState();
}

class _NotesAppState extends State<NotesApp> {
  final TextEditingController _noteController = TextEditingController();
  List<String> notes = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notes App'),
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: TextField(
              controller: _noteController,
              decoration: InputDecoration(
                labelText: 'Enter a note',
              ),
            ),
          ),
          ElevatedButton(
            onPressed: _saveNote,
            child: Text('Save Note'),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: notes.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(notes[index], style: TextStyle(color: Colors.black),),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  void _saveNote() async {
    final note = _noteController.text;
    if (note.isNotEmpty) {
      setState(() {
        notes.add(note);

      });

      _noteController.clear();
      await _saveNotesToFile();

    }
  }

  Future<void> _saveNotesToFile() async {
    final directory = await getApplicationDocumentsDirectory();
    final file = File('${directory.path}/notes.txt');
    await file.writeAsString(notes.join('\n'));
    print("path: ${directory}");
  }

  @override
  void initState() {
    super.initState();
    _loadNotesFromFile();
  }

  Future<void> _loadNotesFromFile() async {
    try {
      final directory = await getApplicationDocumentsDirectory();
      final file = File('${directory.path}/notes.txt');
      final contents = await file.readAsString();
      print("path: ${directory.toString()}");
      setState(() {
        print("path: ${directory.toString()}");

        notes = contents.split('\n');
      });
    } catch (e) {
      // Handle file read error
    }
  }
}

void main() {
  runApp(MaterialApp(
    home: NotesApp(),
  ));
}
