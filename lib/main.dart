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
          child: SizedBox(
            width: 200.0,
            height:200.0,
            child: Card(
              child: Text('SizedBox',style: TextStyle(fontSize: 25.0),),


            ),

          )
        ),
      ),
    );
  }
}
