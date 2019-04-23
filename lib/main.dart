import 'package:flutter/material.dart';
import 'package:flutter_app/MyList.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'JSPang Flutter Demo',
      home: Scaffold(
          appBar: new AppBar(title: new Text('ListView Widget')),
          body: Center(
            child: Container(height: 200.0, child: MyList()),
          )),
    );
  }
}
