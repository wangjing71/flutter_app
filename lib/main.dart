import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title:'JSPang Flutter Demo',
      home:Scaffold(
          appBar:new AppBar(
              title:new Text('ListView Widget')
          ),
        body: new ListView(
            scrollDirection: Axis.horizontal,
            children:<Widget>[
              new Image.network(
                  'http://attachments.gfan.net.cn/forum/attachments2/201301/27/202158zbvrbafqa99vzcr5.jpg'
              ),
              new Image.network(
                  'http://attachments.gfan.net.cn/forum/attachments2/201301/27/202510wrq4iaiqaryii5qg.jpg'
              ),
              new Image.network(
                  'http://attachments.gfan.net.cn/forum/attachments2/201301/27/2025320az940ffaw2jv42z.jpg.thumb.jpg'
              ),
              new Image.network(
                  'http://pic1.win4000.com/wallpaper/2018-07-02/5b39bf2435484.jpg'
              )
            ]
        ),
      ),
    );
  }
}
