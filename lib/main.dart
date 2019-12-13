import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import './pages/guide_page.dart';
import './widgets/widget_bottom_navigation_bar.dart';
import './pages/splash_screen_page.dart';
 
void main() => runApp(MyApp());

//这里用StatelessWidget 是一个没有状态的孩子
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,//去掉debug 调试字样
      title: '源远流长',
      theme: ThemeData(
        primaryColor: Colors.lightBlueAccent,
        // primarySwatch: Colors.lightBlueAccent,
      ),
      home:  SplashScreenPage(),
      initialRoute: '/',
      routes:{
        'guidePages': (context) {
              return GuidePages();
        },
        'widgetBottomNavigationBar':(context){
          return BottomNavBarWidget();
        }
      }
    );
  }
}

 