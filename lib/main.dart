import 'package:flutter/material.dart';
void main () => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context ){
    return MaterialApp(
      title:'ListView widget',

      home:Scaffold(
          appBar:new AppBar(
            title:new Text('垂直方向布局'),
          ),
          body:Column(
            children: <Widget>[
              Text('I am JSPang'),
              Text('my website is jspang.com'),
              Text('I love coding')
            ],
            crossAxisAlignment: CrossAxisAlignment.start,
          )
      ),
    );
  }
}