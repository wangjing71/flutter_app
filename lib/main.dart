import 'package:flutter/material.dart';

//void main() => runApp(MyApp());
void main() {
  return runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'flutter demo',
      theme: ThemeData(
          brightness: Brightness.light, // 应用 序整体主题的亮度
          primaryColor: Colors.lightGreen[600], // App 主要部分的背景色
          accentColor: Colors.orange[600]), //前景色（文本、按钮等）
      home: Scaffold(
        appBar: AppBar(
          title: Text('Welcome to flutter'),
        ),
        body: Center(
          child: Container(
            width: 200,
            height: 200,
            decoration: BoxDecoration(
              color: Colors.red,
              border: new Border.all(
                color: Colors.grey,
                width: 8.0,
              ),
              borderRadius:
                const BorderRadius.all(const Radius.circular(8.0)),

            ),
            child: Text(
              'Flutter',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 28.0),
            ),

          )
        ),
      ),
    );
  }
}
