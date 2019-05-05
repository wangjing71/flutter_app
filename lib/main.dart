import 'package:flutter/material.dart';

//void main() => runApp(MyApp());
void main() {
  return runApp(MyApp(
    items: new List<String>.generate(500,(i) => "Item $i"),
  ));
}

class MyApp extends StatelessWidget {
  final List<String> items;

  const MyApp({Key key, this.items}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'flutter demo',
      theme: ThemeData(
          brightness: Brightness.light, // 应用 序整体主题的亮度
          primaryColor: Colors.blue[600], // App 主要部分的背景色
          accentColor: Colors.orange[600]), //前景色（文本、按钮等）
      home: Scaffold(
        appBar: AppBar(
          title: Text('Welcome to flutter'),
//          elevation: 0,   //状态栏阴影
        ),

//        竖直列表
//        body: new ListView(
//          children: <Widget>[
//            ListTile(
//              leading: Icon(Icons.alarm),
//              title: Text('Alarm'),
//            ),
//            ListTile(
//              leading: Icon(Icons.alarm),
//              title: Text('Alarm'),
//            ),
//          ],
//        )

        //水平列表
//      body: Container(
//        height: 200.0,
//        child: new ListView(
//          scrollDirection: Axis.horizontal,
//          children: <Widget>[
//            Container(
//              width: 160.0,
//              color: Colors.lightGreen,
//            ),
//            Container(
//              width: 160.0,
//              color: Colors.red,
//            ),
//            Container(
//              width: 160.0,
//              color: Colors.purple,
//            ),
//            Container(
//              width: 160.0,
//              color: Colors.lightGreen,
//            ),
//            Container(
//              width: 160.0,
//              color: Colors.red,
//            ),
//            Container(
//              width: 160.0,
//              color: Colors.purple,
//            ),
//
//          ],
//        ),
//      )

        body: new ListView.builder(
          itemCount: items.length,
          itemBuilder: (context,index){
            return new ListTile(
              leading: Icon(Icons.phone),
              title: Text("${items[index]}"),
            );
          },
        ),
      ),
    );
  }
}
