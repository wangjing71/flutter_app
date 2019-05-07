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
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Welcome to flutter'),
        ),
        body: Container(
          //添加装饰效果
          decoration: BoxDecoration(color: Colors.grey //类似背景颜色
              ),

          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Expanded(
                      child: Container(
                    width: 150.0,
                    height: 150.0,
                    decoration: BoxDecoration(
                        border: Border.all(width: 10.0, color: Colors.blueGrey),
                        borderRadius: BorderRadius.all(Radius.circular(8.0))),
                    margin: EdgeInsets.all(4.0),
                  )),
                  Expanded(
                      child: Container(
                    width: 150.0,
                    height: 150.0,
                    decoration: BoxDecoration(
                        border: Border.all(width: 10.0, color: Colors.blueGrey),
                        borderRadius: BorderRadius.all(Radius.circular(8.0))),
                    margin: EdgeInsets.all(4.0),
                  )),
                ],
              ),
              Row(
                children: <Widget>[
                  Expanded(
                      child: Container(
                        width: 150.0,
                        height: 150.0,
                        decoration: BoxDecoration(
                            border: Border.all(width: 10.0, color: Colors.blueGrey),
                            borderRadius: BorderRadius.all(Radius.circular(8.0))),
                        margin: EdgeInsets.all(4.0),
                      )),
                  Expanded(
                      child: Container(
                        width: 150.0,
                        height: 150.0,
                        decoration: BoxDecoration(
                            border: Border.all(width: 10.0, color: Colors.blueGrey),
                            borderRadius: BorderRadius.all(Radius.circular(8.0))),
                        margin: EdgeInsets.all(4.0),
                      )),
                ],
              ),
            ],
          ),
        ),

//        body: Center(
//          child: Container(
//            width: 200,
//            height: 200,
//            decoration: BoxDecoration(
//              color: Colors.red,
//              border: new Border.all(
//                color: Colors.grey,
//                width: 8.0,
//              ),
//              borderRadius:
//                const BorderRadius.all(const Radius.circular(8.0)),
//
//            ),
//
//            child: Center(
//              child: Text(
//                'Flutter',
//                textAlign: TextAlign.center,
//                style: TextStyle(fontSize: 28.0),
//              ),
//            ),
//          )
//        ),
      ),
    );
  }
}
