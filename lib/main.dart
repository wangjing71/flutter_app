import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
        title: 'Welcome to Flutter',
        home: Scaffold(
          appBar: AppBar(
            title: Text('TextWidget'),
          ),
          body: Center(
            child: Text(
              '一切先从Jetpack说起。我在去年年底的时候抽时间研究了下Google的Jetpack，这是一款在18年Google I/O大会上推出的Android开发组件工具集，旨在帮助我们轻松构建更稳定、更健壮、以及更可维护的应用程序。',
              textAlign: TextAlign.left,
//              maxLines: 2,
//              overflow: TextOverflow.fade,
            style: TextStyle(
              fontSize: 25.0,
              color: Color.fromARGB(255, 255, 150, 150),
              decoration: TextDecoration.underline,
              decorationStyle: TextDecorationStyle.solid,
            ),
            ),
          ),
        ));
  }
}
