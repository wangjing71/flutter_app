import 'package:flutter/material.dart';

//void main() => runApp(MyApp());
void main() {
  return runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget addressContainer = Container();
    Widget abuttonContainer = Container();
    Widget textContainer = Container(
      padding: EdgeInsets.all(16.0),
      child: Text(
        """
        武当山，中国道教圣地，又名太和山、谢罗山、参上山、仙室山，古有“太岳”、“玄岳”、“大岳”之称。位于湖北西北部十堰市丹江口市境内。东接闻名古城襄阳市，西靠车城十堰市 ，南望原始森林神农架，北临高峡平湖 丹江口水库。
明代，武当山被皇帝封为“大岳”、“治世玄岳”，被尊为“皇室家庙”。武当山以“四大名山皆拱揖，五方仙岳共朝宗”的“五岳之冠”地位闻名于世。 [1] 
1994年12月，武当山古建筑群入选《世界遗产名录》，2006年被整体列为“全国重点文物保护单位” [2]  。2007年，武当山和长城、丽江、周庄等景区一起入选 “欧洲人最喜爱的中国十大景区”。2010至2013年，武当山分别被评为国家5A级旅游区、国家森林公园、中国十大避暑名山、海峡两岸交流基地，入选最美 “国家地质公园”。 [3-7] 
截至2013年，武当山有古建筑53处，建筑面积2.7万平方米，建筑遗址9处，占地面积20多万平方米，全山保存各类文物5035件。 [8-9] 
武当山是道教名山和武当武术的发源地，被称为“亘古无双胜境，天下第一仙山”。武当武术，是中华武术的重要流派。元末明初，道士张三丰集其大成，开创武当派。
          """,
        softWrap: true,
      ),
    );

    return MaterialApp(
      title: 'flutter demo',
      theme: ThemeData(
          brightness: Brightness.light,
          primaryColor: Colors.lightGreen[600],
          accentColor: Colors.orange[600]), //前景色（文本、按钮等）
      home: Scaffold(
          appBar: AppBar(
            title: Text('武当山风景区'),
          ),
          body: ListView(
            children: <Widget>[
              Image.asset(
                'images/wudang.jpeg',
                fit: BoxFit.cover,
                width: 600,
                height: 240,
              ),
              addressContainer,
              abuttonContainer,
              textContainer
            ],
          )),
    );
  }
}
