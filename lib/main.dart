import 'package:flutter/material.dart';
import './loading.dart';
import './app.dart';
import 'package:flutter_app/search.dart';

void main() {
  return runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,

      title: '聊天室',

      theme: ThemeData(
        primaryColor: Colors.green,
        cardColor: Colors.green,
        scaffoldBackgroundColor: Color(0xFFebebeb)
      ), //前景色（文本、按钮等）

      routes: {
        "app": (BuildContext context) => new App(),
        "search": (BuildContext context) => new Search(),
      },

      home: LoadingPage(),
    );
  }
}
