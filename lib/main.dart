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
          child: new RaisedButton(
            onPressed: (){
              
            },
            child: new Text('点击了按钮'),
          )
        ),
      ),
    );
  }
}
