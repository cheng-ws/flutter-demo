import 'dart:async';

import 'package:flutter/material.dart';

class SplashScreenPage extends StatefulWidget {
  const SplashScreenPage({Key key}) : super(key:key);
  @override
  _SplashScreenPageState createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {
  /// 设计一个计时器，用来等计时器结束的时候，跳转
  jumpPage() {
    return Timer(Duration(milliseconds: 3000), () {
      Navigator.pushReplacementNamed(context, 'guidePages');
    });
  }

 
  @override
  void initState() {
    super.initState();

    jumpPage();
  }
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: SingleChildScrollView(
            child: Container(
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(top:30),
                  ),
                  Text('孤岛')
                ],
              ),
            ),
          ),
        ),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              //线性渐变
              Color.fromRGBO(0, 0, 0, 0.2),
               Color.fromRGBO(0, 0, 0, 0.4)
            ],
            begin: FractionalOffset.topCenter,
            end:FractionalOffset.bottomCenter
          )
        ),
      )
    );
  }
}
 