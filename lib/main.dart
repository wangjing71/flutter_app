import 'package:flutter/cupertino.dart';
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
          title: Text('Welcome to flutter'),
        ),
        body: Center(
//=================================================================
//          child: CupertinoActivityIndicator(
//            radius: 60.0,
//          ),

//=================================================================
//        child: CupertinoAlertDialog(
//          title: Text('提示'),
//          content: SingleChildScrollView(
//            child: ListBody(
//              children: <Widget>[
//                Text('1111111111'),
//                Text('222222222222222'),
//              ],
//
//            ),
//          ),
//          actions: <Widget>[
//            CupertinoDialogAction(
//              child: Text('确认'),
//            ),
//            CupertinoDialogAction(
//              child: Text('取消'),
//            ),
//
//          ],
//        ),
//=================================================================
          child: CupertinoButton(
            child: Text('CupertinoButton'),
            onPressed: () {},
            color: Colors.blue,
            disabledColor: Colors.red,
          ),
        ),
      ),
    );
  }
}
