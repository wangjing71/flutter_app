import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context ){
    return MaterialApp(
      title:'Text widget',
      home:Scaffold(
        body:Center(
          child:Container(
            child:new Image.network(
              'https://www.baidu.com/img/bd_logo1.png?where=super',
              scale:1.0,
              fit: BoxFit.scaleDown,
              repeat: ImageRepeat.repeat,
            ),
            width:300.0,
            height:200.0,
            color: Colors.lightBlue,
          ),
        ),
      ),
    );
  }
}
