import 'package:flutter/material.dart';

class MyList extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return ListView(
      scrollDirection: Axis.horizontal,
      children: <Widget>[
        new Container(
          width:180.0,
          color: Colors.lightBlue,
        ), new Container(
          width:180.0,
          color: Colors.amber,
        ), new Container(
          width:180.0,
          color: Colors.deepOrange,
        ),new Container(
          width:180.0,
          color: Colors.deepPurpleAccent,
        ),
      ],
    );
  }
}