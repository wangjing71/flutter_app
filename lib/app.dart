import 'package:flutter/material.dart';
import './chat/message_page.dart';
import './personal/personal.dart';
import './contacts/contact_page.dart';

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
//当前选中页面索引
  var _currentIndex = 0;

  //聊天页面
  MessagePage message;

  //好友页面
  Contacts contacts;

  //我的页面
  Personal me;

  //根据当前索引返回不同的页面
  currentPage() {
    switch (_currentIndex) {
      case 0:
        if (message == null) {
          message = new MessagePage();
        }
        return message;
      case 1:
        if (contacts == null) {
          contacts = new Contacts();
        }
        return contacts;
      case 2:
        if (me == null) {
          me = new Personal();
        }
        return me;
      default:
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        //当前页面索引
        currentIndex: _currentIndex,
        //按下后设置当前页面索引
        onTap: ((index) {
          setState(() {
            _currentIndex = index;
          });
        }),
        items: [
          //导航按钮项传入文本及图标
          new BottomNavigationBarItem(
              title: new Text(
                '聊天',
                style: TextStyle(
                    color: _currentIndex == 0
                        ? Color(0xFF46c01b)
                        : Color(0xff999999)),
              ),
              //判断当前索引作图片切换显示
              icon: _currentIndex == 0
                  ? Image.asset(
                'images/message_pressed.png',
                width: 32.0,
                height: 28.0,
              )
                  : Image.asset(
                'images/message_normal.png',
                width: 32.0,
                height: 28.0,
              )),

          new BottomNavigationBarItem(
              title: new Text(
                '好友',
                style: TextStyle(
                    color: _currentIndex == 1
                        ? Color(0xFF46c01b)
                        : Color(0xff999999)),
              ),
              icon: _currentIndex == 1
                  ? Image.asset(
                'images/contact_list_pressed.png',
                width: 32.0,
                height: 28.0,
              )
                  : Image.asset(
                'images/contact_list_normal.png',
                width: 32.0,
                height: 28.0,
              )),
          new BottomNavigationBarItem(
              title: new Text(
                '我的',
                style: TextStyle(
                    color: _currentIndex == 2
                        ? Color(0xFF46c01b)
                        : Color(0xff999999)),
              ),
              icon: _currentIndex == 2
                  ? Image.asset(
                'images/profile_pressed.png',
                width: 32.0,
                height: 28.0,
              )
                  : Image.asset(
                'images/profile_normal.png',
                width: 32.0,
                height: 28.0,
              )),
        ],
      ),
      body: currentPage(),
    );
  }
}
