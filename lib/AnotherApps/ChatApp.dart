import 'package:chat_bubbles/chat_bubbles.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});
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


class MyHomePage extends StatelessWidget {
  Duration duration = new Duration();
  Duration position = new Duration();
  bool isPlaying = false;
  bool isLoading = false;
  bool isPause = false;
  @override
  Widget build(BuildContext context) {
    final now = new DateTime.now();
    return Scaffold(
      appBar: AppBar(
        title: Text("Chat app"),
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: <Widget>[
                // BubbleNormalImage(
                //   id: 'id001',
                //   image: _image(),
                //   color: Colors.purpleAccent,
                //   tail: true,
                //   delivered: true,
                // ),
                // BubbleNormalAudio(
                //   color: Color(0xFFE8E8EE),
                //   duration: duration.inSeconds.toDouble(),
                //   position: position.inSeconds.toDouble(),
                //   isPlaying: isPlaying,
                //   isLoading: isLoading,
                //   isPause: isPause,
                //   onSeekChanged: _changeSeek,
                //   onPlayPauseButtonClick: _playAudio,
                //   sent: true,
                // ),
                
                // BubbleNormal(
                //   text: 'bubble normal with tail',
                //   isSender: false,
                //   color: Color(0xFF1B97F3),
                //   tail: true,
                //   textStyle: TextStyle(
                //     fontSize: 20,
                //     color: Colors.white,
                //   ),
                // ),
                // BubbleNormal(
                //   text: 'bubble normal with tail',
                //   isSender: true,
                //   color: Color(0xFFE8E8EE),
                //   tail: true,
                //   sent: true,
                // ),
                // DateChip(
                //   date: new DateTime(now.year, now.month, now.day - 2),
                // ),
                // BubbleNormal(
                //   text: 'bubble normal without tail',
                //   isSender: false,
                //   color: Color(0xFF1B97F3),
                //   tail: false,
                //   textStyle: TextStyle(
                //     fontSize: 20,
                //     color: Colors.white,
                //   ),
                // ),
                // BubbleNormal(
                //   text: 'bubble normal without tail',
                //   color: Color(0xFFE8E8EE),
                //   tail: false,
                //   sent: true,
                //   seen: true,
                //   delivered: true,
                // ),
                // BubbleSpecialOne(
                //   text: 'bubble special one with tail',
                //   isSender: false,
                //   color: Color(0xFF1B97F3),
                //   textStyle: TextStyle(
                //     fontSize: 20,
                //     color: Colors.white,
                //   ),
                // ),
                // DateChip(
                //   date: new DateTime(now.year, now.month, now.day - 1),
                // ),
                // BubbleSpecialOne(
                //   text: 'bubble special one with tail',
                //   color: Color(0xFFE8E8EE),
                //   seen: true,
                // ),
                // BubbleSpecialOne(
                //   text: 'bubble special one without tail',
                //   isSender: false,
                //   tail: false,
                //   color: Color(0xFF1B97F3),
                //   textStyle: TextStyle(
                //     fontSize: 20,
                //     color: Colors.black,
                //   ),
                // ),
                // BubbleSpecialOne(
                //   text: 'bubble special one without tail',
                //   tail: false,
                //   color: Color(0xFFE8E8EE),
                //   sent: true,
                // ),
                // BubbleSpecialTwo(
                //   text: 'bubble special tow with tail',
                //   isSender: false,
                //   color: Color(0xFF1B97F3),
                //   textStyle: TextStyle(
                //     fontSize: 20,
                //     color: Colors.black,
                //   ),
                // ),
                // DateChip(
                //   date: now,
                // ),
                // BubbleSpecialTwo(
                //   text: 'bubble special tow with tail',
                //   isSender: true,
                //   color: Color(0xFFE8E8EE),
                //   sent: true,
                // ),
                // BubbleSpecialTwo(
                //   text: 'bubble special tow without tail',
                //   isSender: false,
                //   tail: false,
                //   color: Color(0xFF1B97F3),
                //   textStyle: TextStyle(
                //     fontSize: 20,
                //     color: Colors.black,
                //   ),
                // ),
                // BubbleSpecialTwo(
                //   text: 'bubble special tow without tail',
                //   tail: false,
                //   color: Color(0xFFE8E8EE),
                //   delivered: true,
                // ),
                DateChip(
                  date: now,
                ),
                BubbleSpecialThree(
                  text: 'bubble special three without tail',
                  color: Color(0xFF1B97F3),
                  tail: false,
                  textStyle: TextStyle(color: Colors.white, fontSize: 16),
                ),
                BubbleSpecialThree(
                  text: 'bubble special three with tail',
                  color: Color(0xFF1B97F3),
                  tail: true,
                  textStyle: TextStyle(color: Colors.white, fontSize: 16),
                ),
                BubbleSpecialThree(
                  text: "bubble special three without tail",
                  color: Color(0xFFE8E8EE),
                  tail: false,
                  isSender: false,
                ),
                BubbleSpecialThree(
                  text: "bubble special three with tail",
                  color: Color(0xFFE8E8EE),
                  tail: true,
                  isSender: false,
                ),
                SizedBox(
                  height: 100,
                )
              ],
            ),
          ),
          MessageBar(
            onSend: (_) => print(_),
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