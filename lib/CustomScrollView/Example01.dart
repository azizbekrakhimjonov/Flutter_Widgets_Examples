import 'package:flutter/material.dart';


void main(){
  runApp(MyApp());
}


class MyApp extends StatelessWidget{
  Widget build(BuildContext context){
    return MaterialApp(
      home: CustomScrollView(
        slivers: <Widget>[
          const SliverAppBar(
            pinned: true,
            expandedHeight: 600,
            flexibleSpace: FlexibleSpaceBar(
              title: Text('Demo'),
            ),
          ),
          SliverFixedExtentList(
            itemExtent: 50.0,
            delegate: SliverChildBuilderDelegate(
                  (BuildContext context, int index) {
                return Container(
                  alignment: Alignment.center,
                  color: Colors.lightBlue[100 * (index % 9)],
                  child: Text('List Item $index', style: TextStyle(fontSize: 24)),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}