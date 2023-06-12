import 'package:flutter/material.dart';
import 'package:chat_bubbles/chat_bubbles.dart';


class Bubble extends StatelessWidget {
  final String text;
  // final bool tail;

  Bubble({
    required this.text,
    // required this.tail,
  });

  @override
  Widget build(BuildContext context) {
    return BubbleSpecialThree(
                  text: text,
                  color: Color(0xFF1B97F3),
                  tail: false,
                  textStyle: TextStyle(color: Colors.white, fontSize: 16),
    );
  }
}
