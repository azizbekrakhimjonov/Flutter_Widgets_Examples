import 'package:flutter/material.dart';


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => OnTab(),
      onDoubleTap: () => OnDouble(),
      onLongPress: () => LongPress(),
    );
  }

LongPress() {
  print('LongPress');
}

OnTab() {
  print('OnTab');
}

OnDouble() {
  print('DoubleTab');
}

}

