import 'package:flutter/material.dart';

//void main() => runApp(MyApp());
class LoadingPage extends StatefulWidget {
  @override
  _LoadingPageState createState() => _LoadingPageState();
}

class _LoadingPageState extends State<LoadingPage> {

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 1),(){
      print('Flutter即时通许App界面实现。。。');
      Navigator.of(context).pushReplacementNamed('app');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image.asset('images/loading.jpeg',fit: BoxFit.cover,),
    );
  }
}
