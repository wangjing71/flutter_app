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
        brightness: Brightness.light,
        primaryColor: Colors.lightGreen[600],
        accentColor: Colors.orange[600]
      ), //前景色（文本、按钮等）
      home: Scaffold(
          appBar: AppBar(
            title: Text('武当山风景区'),
          ),
          body: ListView(
            children: <Widget>[
              Image.asset('images/wudang.jpeg',)



            ],
          )),
    );
  }
}
