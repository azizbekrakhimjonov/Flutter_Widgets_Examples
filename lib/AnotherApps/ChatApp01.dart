import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  Duration duration = Duration();
  Duration position = Duration();
  String message = 'salom';

  @override
  Widget build(BuildContext context) {
    final now = DateTime.now();

    return Scaffold(
      appBar: AppBar(
        title: Text("Chat app"),
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: <Widget>[
                DateChip(
                  date: now,
                ),
                BubbleSpecialThree(
                  text: message,
                  color: Color(0xFF1B97F3),
                  tail: true,
                  textStyle: TextStyle(color: Colors.white, fontSize: 16),
                ),
                SizedBox(
                  height: 100,
                ),
              ],
            ),
          ),
          MessageBar(
            onSend: (String text) {
              // Handle message sending logic here
              print("Sending message: $text");
            },
            actions: [
              InkWell(
                child: Icon(
                  Icons.add,
                  color: Colors.black,
                  size: 24,
                ),
                onTap: () {
                  // Handle action on add button tap
                },
              ),
              Padding(
                padding: EdgeInsets.only(left: 8, right: 8),
                child: InkWell(
                  child: Icon(
                    Icons.camera_alt,
                    color: Colors.green,
                    size: 24,
                  ),
                  onTap: () {
                    // Handle action on camera button tap
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class DateChip extends StatelessWidget {
  final DateTime date;

  DateChip({required this.date});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      color: Colors.grey,
      child: Text(
        formatDate(date),
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  String formatDate(DateTime date) {
    // Implement your date formatting logic here
    return "${date.year}-${date.month}-${date.day}";
  }
}

class BubbleSpecialThree extends StatelessWidget {
  final String text;
  final Color color;
  final bool tail;
  final TextStyle textStyle;

  BubbleSpecialThree({
    required this.text,
    required this.color,
    this.tail = false,
    required this.textStyle,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            blurRadius: 4,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: Text(
        text,
        style: textStyle,
      ),
    );
  }
}

class MessageBar extends StatefulWidget {
  final ValueChanged<String> onSend;
  final List<Widget> actions;

  MessageBar({required this.onSend, required this.actions});

  @override
  _MessageBarState createState() => _MessageBarState();
}

class _MessageBarState extends State<MessageBar> {
  final TextEditingController _textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      color: Colors.white,
      child: Row(
        children: [
          Expanded(
            child: TextField(
              controller: _textController,
              decoration: InputDecoration(
                hintText: 'Type a message',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
              ),
            ),
          ),
          IconButton(
            icon: Icon(
              Icons.send,
              color: Colors.blue,
            ),
            onPressed: () {
              final String message = _textController.text.trim();
              if (message.isNotEmpty) {
                widget.onSend(message);
                _textController.clear();
              }
            },
          ),
          SizedBox(width: 8),
          ...widget.actions,
        ],
      ),
    );
  }
}


class ChatApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Chat App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}
