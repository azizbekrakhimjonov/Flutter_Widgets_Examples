import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:sensors_plus/sensors_plus.dart';


class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
    );
  }
}

class Home extends StatefulWidget{
  @override
  _HomeState createState() => _HomeState();
}
class _HomeState extends State<Home> {
  double x = 0;
  String direction = "Body";

  @override
  void initState() {
      setState(() {

      });
    }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter"),
        backgroundColor: Colors.redAccent,
        bottom: TabBar(
          tabs: [
            Tab(icon: Icon(Icons.recent_actors), text: "Recents"),
            Tab(icon: Icon(Icons.person), text: "Personal"),
            Tab(icon: Icon(Icons.group), text: "groups"),
            Tab(icon: Icon(Icons.all_inclusive), text: "channals")
          ],

        ),
      ),
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.blueAccent,
        items: <Widget>[
          Icon(Icons.home, size: 30),
          Icon(Icons.search, size: 30),
          Icon(Icons.support, size: 30),
          Icon(Icons.chat, size: 30),
          Icon(Icons.delete, size: 30),
        ],
        onTap: (index) {
          //Handle button tap
        },
      ),
      body: Container(
          alignment: Alignment.center,
          padding: EdgeInsets.all(30),
          child: Column(
              children: [
                const TabBarView(children: [
                  Card(
                    margin: EdgeInsets.all(16.0),
                    child: Center(child: Text('Overview tab')),
                  ),
                ]),
                Text(direction, style: TextStyle(fontSize: 30),),
              ],

          )
      ),

      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text("Azizbek Rahimjonov"),
              accountEmail: Text("azizbekrahimjonov571@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.orange,
                child: Text(
                  "A",
                  style: TextStyle(fontSize: 40.0),
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home), title: Text("Home"),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.settings), title: Text("Settings"),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.contacts), title: Text("Contact Us"),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),

    );

  }
}