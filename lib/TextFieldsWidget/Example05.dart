import 'package:flutter/material.dart';

class MyApp extends StatelessWidget{
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Register Page',
      home: RegisterPage(),
    );
  }

}


class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});
  @override
  State<RegisterPage> createState() => _MyCustomFormState();
}

class _MyCustomFormState  extends State<RegisterPage>{
  final myController = TextEditingController();

  @override
  void dispose(){
    myController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Text input'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: TextField(
          controller: myController,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          // print(myController.text);
          if (myController.text == 'Hi'){
            showDialog(context: context, builder: (context){
              return AlertDialog(
                content: Text(myController.text),
              );
            }
            );
          }else{
            print('no result');
          }
        },
        child: Icon(Icons.unarchive),
      ),
    );
  }
}

