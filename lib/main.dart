import 'package:flutter/material.dart';

//void main() => runApp(MyApp());
void main() {
  return runApp(loginPage());
}

class loginPage extends StatefulWidget {
  @override
  _loginPageState createState() => _loginPageState();
}

class _loginPageState extends State<loginPage> {
  GlobalKey<FormState> loginKey = new GlobalKey<FormState>();

  String userName;
  String passWord;

  void login(){
    var loginForm = loginKey.currentState;
    if(loginForm.validate()){
      loginForm.save();
      print('userName:'+userName+",passWord:"+passWord);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}


