import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

//void main() => runApp(MyApp());
void main() {
  return runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    if (Platform.isAndroid) {
      SystemUiOverlayStyle systemUiOverlayStyle =
          SystemUiOverlayStyle(statusBarColor: Colors.transparent);
      SystemChrome.setSystemUIOverlayStyle(systemUiOverlayStyle);
    }

    return MaterialApp(
      title: 'flutter demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ), //前景色（文本、按钮等）
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter 示例'),
        ),
        body: Center(
            child: new RaisedButton(
          onPressed: () {},
          child: new Text('点击了按钮'),
        )),
      ),
    );
  }
}
