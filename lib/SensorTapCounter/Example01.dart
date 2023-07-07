import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

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



OnTab() {
  print('OnTab');
}

OnDouble() {
  print('DoubleTab');
}

LongPress() {
  print('LongPress');
}

}

