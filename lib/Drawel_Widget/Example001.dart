import 'package:flutter/material.dart';

void main()=> runApp(MyApp());

class MyApp extends StatelessWidget{
  final AppTitle = 'Flutter Drawer';
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: AppTitle,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Drawer', style: TextStyle(color: Colors.orange),),
      ),
      body: const Center(
        child: Text(
          'Home Page',
          style: TextStyle(fontSize: 20.0),
        ),
      ),
      drawer: Drawer(
        backgroundColor: Colors.black12,
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            const UserAccountsDrawerHeader(
                  decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.black12,
                    Colors.black26,
                    Colors.black12,
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
                  accountName: Text('Maria Sidney', style: TextStyle(color: Colors.orange)),
                  accountEmail: Text('mariasidney@icloud.com', style: TextStyle(color: Colors.orange)),
                  currentAccountPicture:CircleAvatar(
                    // backgroundColor: Colors.orange,
                    // child: Text(
                    //   'A',
                    //   style: TextStyle(fontSize: 40.0),
                    // ),

                  //  'assets/images/img_11.png'
                  //     backgroundImage: NetworkImage('https://images.pexels.com/photos/17045110/pexels-photo-17045110.jpeg')
                      backgroundImage: NetworkImage('https://images.pexels.com/photos/17305999/pexels-photo-17305999.jpeg')
                  ),
              ),
            ListTile(
              textColor: Colors.orange,
              iconColor: Colors.orange,
              splashColor: Colors.white,
              leading: Icon(Icons.group),
              title: Text('New Group'),
              onTap: (){
                   // Navigator.pop(context);
                   print('OnTab New Group');
              },
            ),
            ListTile(
              textColor: Colors.orange,
              iconColor: Colors.orange,
              leading: Icon(Icons.cloud),
              title: Text('cloud'),
              onTap: (){
                   Navigator.pop(context);
                   print('OnTab cloud');
              },
            ),
            ListTile(
              textColor: Colors.orange,
              iconColor: Colors.orange,
              leading: Icon(Icons.person),
              title: Text('person'),
              onTap: (){
                   Navigator.pop(context);
                   print('OnTab person');
              },
            ),
            ListTile(
              textColor: Colors.orange,
              iconColor: Colors.orange,
              leading: Icon(Icons.call),
              title: Text('call'),
              onTap: (){
                   Navigator.pop(context);
                   print('OnTab call');
              },
            ),
            ListTile(
              textColor: Colors.orange,
              iconColor: Colors.orange,
              leading: Icon(Icons.save),
              title: Text('save'),
              onTap: (){
                   Navigator.pop(context);
                   print('OnTab save');
              },
            ),
            ListTile(
              textColor: Colors.orange,
              iconColor: Colors.orange,
              leading: Icon(Icons.settings),
              title: Text('settings'),
              onTap: (){
                   Navigator.pop(context);
                   print('OnTab settings');
              },
            ),
            ListTile(
              textColor: Colors.orange,
              iconColor: Colors.orange,
              leading: Icon(Icons.shield_moon_rounded),
              title: Text('Night mode'),
              onTap: (){
                   Navigator.pop(context);
                   print('OnTab nigt mode');
              },
            ),
          ],
        ),
      ),
    );
  }

}