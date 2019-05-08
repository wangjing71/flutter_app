import 'package:flutter/material.dart';

//void main() => runApp(MyApp());
void main() {
  return runApp(MyApp());
}

class MyApp extends StatelessWidget {
  //构建30条数据
  List<String> items = new List<String>.generate(30, (i) => "列表项 ${i + 1}");

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
          body: ListView.builder(
              itemCount: items.length,
              itemBuilder: (context, index) {
                final item = items[index];
                return Dismissible(
                  key: Key(item),
                  child: ListTile(
                    title: Text('$item'),

                  ),
                  onDismissed: (direstion) {
                    items.removeAt(index);
                    Scaffold.of(context)
                        .showSnackBar(SnackBar(content: Text("$item 被删除了")));
                  },
                );
              })),
    );
  }
}
