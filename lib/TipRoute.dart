import 'package:flutter/material.dart';

class TipRoute extends StatelessWidget {
  final String textStr;

  const TipRoute({Key key, this.textStr}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("提示"),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Text(textStr),
            RaisedButton(
              onPressed: () => Navigator.pop(context, "我是返回值"),
              child: Text("返回"),
            )
          ],
        )
      ),
    );
  }
}
