import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) =>
      MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Search Bar Example',
        theme: ThemeData(
          textTheme: const TextTheme(
            bodyMedium: TextStyle(color: Colors.white),
          ),
        ),
        home: const MyHomePage(),
      );
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) =>
      Scaffold(
        appBar: AppBar(
          flexibleSpace: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.deepPurple,
                  Colors.purple.shade300,
                  Colors.black12
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
          ),
          // backgroundColor: Colors.deepPurple.shade900,

        ),
        body: Container(
        decoration: BoxDecoration(
        gradient: LinearGradient(
        colors: [Colors.deepPurple, Colors.purple.shade300, Colors.blueGrey, Colors.blueAccent],
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
          ),
         )
        )
      );
}
