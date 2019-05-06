import 'package:flutter/material.dart';

//void main() => runApp(MyApp());
void main() {
  return runApp(TabBarSample());
}

//class MyApp extends StatelessWidget {
//  final List<Tab> myTabs = [
//    Tab(
//      text: '选项卡一',
//    ),
//    Tab(
//      text: '选项卡二',
//    ),
//    Tab(
//      text: '选项卡三',
//    ),
//  ];
//
//  @override
//  Widget build(BuildContext context) {
//    return MaterialApp(
//      title: 'flutter demo',
//      theme: ThemeData(
//        primarySwatch: Colors.blue,
//      ), //前景色（文本、按钮等）
//      home: DefaultTabController(
//          length: myTabs.length,
//          child: Scaffold(
//            appBar: AppBar(
//              bottom: TabBar(tabs: myTabs),
//              title: Text('tabBar 示例'),
//            ),
//            body: TabBarView(
//                children: myTabs.map((Tab tab){
//                  return Center(child: Text(tab.text),);
//                }).toList(),
//            ),
//          )),
//    );
//  }
//}
class TabBarSample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
          length: items.length,
          child: Scaffold(
            appBar: AppBar(
              title: Text("TabBar 示例"),
              bottom: TabBar(
                  isScrollable: true,
                  tabs: items.map((ItemView item) {
                    return new Tab(
                      text: item.title,
                      icon: Icon(item.icon),
                    );
                  }).toList()),
            ),
            body: new TabBarView(
              children: items.map((ItemView item) {
                return Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: SelectedView(item: item));
              }).toList(),
            ),
          )),
    );
  }
}

class SelectedView extends StatelessWidget {
  final ItemView item;

  const SelectedView({Key key, this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextStyle textStyle = Theme.of(context).textTheme.display1;
    return Card(
      color: Colors.white,
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Icon(
              item.icon,
              size: 128.0,
              color: textStyle.color,
            ),
            Text(
              item.title,
              style: textStyle,
            )
          ],
        ),
      ),
    );
  }
}

//视图项数据
class ItemView {
  final String title;
  final IconData icon;

  ItemView(this.title, this.icon);
}

//选项卡类目
List<ItemView> items = [
  ItemView('自驾', Icons.directions_car),
  ItemView('自行车', Icons.directions_bike),
  ItemView('轮船', Icons.directions_boat),
  ItemView('公交车', Icons.directions_bus),
  ItemView('火车', Icons.directions_railway),
  ItemView('步行', Icons.directions_walk),
  ItemView('地铁', Icons.directions_transit),
];
