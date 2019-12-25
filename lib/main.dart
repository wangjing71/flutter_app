import 'package:flutter/material.dart';
import 'package:flutter_app/NewRoute.dart';
import 'package:flutter_app/TipRoute.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: "/",
      routes: {
        "new_page":(context) => NewRoute(),
        "/":(context) => MyHomePage(title: 'Flutter Demo Home Page'), //注册首页路由
        "chuancan":(context) => TipRoute(textStr: ModalRoute.of(context).settings.arguments),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(widget.title),
      ),
      body: new Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text(
              'You have pushed the button this many times:',
            ),
            new Text(
              '$_counter',
              style: Theme.of(context).textTheme.display1,
            ),
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
            )
          ],
        ),
      ),
      floatingActionButton: new FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: '汪京',
        child: new Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
