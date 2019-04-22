import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
        title: 'Welcome to Flutter',
        home: Scaffold(
          appBar: AppBar(
            title: Text('TextWidget'),
          ),
          body: Center(
            child: Container(
              child: new Text(
                "Hello World",
                style: TextStyle(fontSize: 40.0),
              ),
              alignment: Alignment.center,
              width: 500,
              height: 400,
              padding: const EdgeInsets.fromLTRB(10, 20, 30, 40),
              margin: const EdgeInsets.fromLTRB(10, 20, 30, 40),
              decoration: new BoxDecoration(
                gradient: const LinearGradient(
                    colors: [
                      Colors.greenAccent,
                      Colors.purple,
                      Colors.red,
                    ]
                )
              ),
            ),
          ),
        ));
  }
}
