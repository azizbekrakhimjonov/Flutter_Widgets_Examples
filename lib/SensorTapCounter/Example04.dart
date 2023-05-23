import 'package:flutter/material.dart';


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: _GestureDetectorExample(),
    );
  }
}

class _GestureDetectorExample extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter'),
      ),
      body: Center(
        child: GestureDetector(
          onTap: () {
            print('onTap');
            Feedback.forTap(context);
            print(context);
          },
          onLongPress: () {
            print('onLongPress');
            Feedback.forLongPress(context);
            print(context);

          },
          onDoubleTap: (){
            print('DoubleTap');
            print(context);

          },
        ),
      ),
    );
  }
}
