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
//          child: SimpleDialog(
//            title: Text('对话框标题'),
//            children: <Widget>[
//              SimpleDialogOption(
//                child: Text("111111111"),
//              ),
//              SimpleDialogOption(
//                child: Text("222222222"),
//              ),
//            ],
//          ),

          child: AlertDialog(
            title: Text('提示'),
            content: SingleChildScrollView(
              child: ListBody(
                children: <Widget>[
                  Text('11111111'),
                  Text('2222222222'),
                  Text('33333333333'),
                ],
              ),
            ),
            actions: <Widget>[
              FlatButton(onPressed: null, child: Text('确定',style: TextStyle(color: Colors.blue),)),
              FlatButton(onPressed: null, child: Text('取消',style: TextStyle(color: Colors.blue))),
            ],
          ),

        ),
      ),
    );
  }
}
