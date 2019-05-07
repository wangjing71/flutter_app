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
          decoration: new BoxDecoration(
            color: Colors.grey
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
