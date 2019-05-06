import 'package:flutter/material.dart';

//void main() => runApp(MyApp());
void main() {
  return runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final List<Tab> myTabs = [
    Tab(
      text: '选项卡一',
    ),
    Tab(
      text: '选项卡二',
    ),
    Tab(
      text: '选项卡三',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'flutter demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ), //前景色（文本、按钮等）
      home: DefaultTabController(
          length: myTabs.length,
          child: Scaffold(
            appBar: AppBar(
              bottom: TabBar(tabs: myTabs),
              title: Text('tabBar 示例'),

            ),
            body: TabBarView(
                children: myTabs.map((Tab tab){
                  return Center(child: Text(tab.text),);
                }).toList(),
            ),
          )),
    );
  }
}
