import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ListView widget',
      home: Scaffold(
        appBar: new AppBar(
          title: new Text('垂直方向布局'),
        ),
        body: Center(
            child: new Stack(
          alignment: const FractionalOffset(0.5, 0.8),
          children: <Widget>[
            new CircleAvatar(
              backgroundImage: new NetworkImage(
                  'https://avatar.csdn.net/8/B/B/3_sinyu890807.jpg'),
              radius: 100.0,
            ),
            new Container(
              decoration: new BoxDecoration(
                color: Colors.lightBlue,
              ),
              padding: EdgeInsets.all(5.0),
              child: new Text('我是汪京啊'),
            )
          ],
        )),
      ),
    );
  }
}
