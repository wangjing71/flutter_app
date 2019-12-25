import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_app/NewRoute.dart';
import 'package:flutter_app/TipRoute.dart';

import 'RandomWordsWidget.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    if (Platform.isAndroid) {
      // 以下两行 设置android状态栏为透明的沉浸。写在组件渲染之后，是为了在渲染后进行set赋值，覆盖状态栏，写在渲染之前MaterialApp组件会覆盖掉这个值。
      SystemUiOverlayStyle systemUiOverlayStyle =
      SystemUiOverlayStyle(statusBarColor: Colors.transparent);
      SystemChrome.setSystemUIOverlayStyle(systemUiOverlayStyle);
    }

    return MaterialApp(
      title: 'flutter demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ), //前景色（文本、按钮等）
      home: Scaffold(
        appBar: AppBar(
          title: Text('我是标题'),
        ),
        body: new Center(
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              FlatButton(
                onPressed: (){
                  Navigator.pushNamed(context, "new_page");
                  //Navigator.push(context,
                  //  MaterialPageRoute(builder: (context) {
                  //  return NewRoute();
                  //}));
                },
                textColor: Colors.blue,
                child: Text("打开新的路由"),
              ),
              FlatButton(
                onPressed: () async {
                  var result = await Navigator.push(context, MaterialPageRoute(builder: (context){
                    return TipRoute(
                      textStr: "我是上个界面传过来的数据1",
                    );
                  }));
                  print("路由返回值: $result");
                },
                textColor: Colors.blue,
                child: Text("打开页面 带参数"),
              ),

              FlatButton(
                onPressed: (){
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) {
                        return RandomWordsWidget();
                      }));
                },
                textColor: Colors.blue,
                child: Text("随机数"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
