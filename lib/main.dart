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
        body: MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int selectIndex = 1;//当前选中的索引
  final widgetOptions = [
    Text('Index 0: 信息 '),
    Text('Index 1: 通讯录 '),
    Text('Index 2: 发现 '),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome to flutter1'),
      ),
      body: Center(
        child: widgetOptions.elementAt(selectIndex), //居中显示文本
      ),

      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.chat),title: Text('信息')),
          BottomNavigationBarItem(icon: Icon(Icons.contacts),title: Text('通讯录')),
          BottomNavigationBarItem(icon: Icon(Icons.account_circle),title: Text('发现')),
        ],
        currentIndex: selectIndex,
        fixedColor: Colors.deepPurple,
        onTap: _onItemTapped,

      ),
    );
  }

  void _onItemTapped(int value) {
    setState(() {
      selectIndex = value;
    });

  }
}

