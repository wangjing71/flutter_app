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
        primarySwatch: Colors.blue,
      ), //前景色（文本、按钮等）
      home: Scaffold(
        appBar: AppBar(
          title: Text('AppBar示例'),
          actions: <Widget>[
            IconButton(
                tooltip: '搜索', icon: Icon(Icons.search), onPressed: () {}),
            IconButton(tooltip: '添加', icon: Icon(Icons.add), onPressed: () {}),
//            IconButton(tooltip: '删除', icon: Icon(Icons.delete), onPressed: () {}),
          ],
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
