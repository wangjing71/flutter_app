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
          child: new RaisedButton(
            onPressed: (){
              
            },
            child: new Text('点击了按钮'),
          )
        ),
        drawer: Drawer(
          child: ListView(
            children: <Widget>[
              ListTile(
                leading: CircleAvatar(child: Icon(Icons.color_lens)),
                title: Text('个性装扮'),
              ),
              ListTile(
                leading: CircleAvatar(child: Icon(Icons.color_lens)),
                title: Text('个性装扮'),
              ),
              ListTile(
                leading: CircleAvatar(child: Icon(Icons.color_lens)),
                title: Text('个性装扮'),
              ),
              ListTile(
                leading: CircleAvatar(child: Icon(Icons.color_lens)),
                title: Text('个性装扮'),
              ),


            ],
          ),

        ),

      ),
    );
  }
}
