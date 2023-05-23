import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key, required this.title});

  final String title;

  @override
  State<LoginScreen> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<LoginScreen> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: DefaultTextStyle(
            style: const TextStyle(
                fontSize: 20.0,
                color: Colors.black
            ),
            child: AnimatedTextKit(
              animatedTexts: [
                WavyAnimatedText('Instagram'),
              ],
              isRepeatingAnimation: true,
              onTap: () {
                print("Tap Event");
              },
            ),
          ),
      ),
      body: Center(
        child: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                width: 250.0,
                child: TextLiquidFill(
                  text: '',
                  waveColor: Colors.black,
                  boxBackgroundColor: Colors.yellowAccent,
                  textStyle: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                  ),
                  boxHeight: 300.0,
                ),
              ),
              SizedBox(
                width: 250.0,
                child: TextLiquidFill(
                  text: '',
                  waveColor: Colors.black,
                  boxBackgroundColor: Colors.yellowAccent,
                  textStyle: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                  ),
                  boxHeight: 300.0,
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
