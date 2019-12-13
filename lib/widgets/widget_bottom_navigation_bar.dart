import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:icon_shadow/icon_shadow.dart';
import '../pages/home_page.dart';
import '../pages/book_list_page.dart';
import '../pages/love_page.dart';

//在这里声明一个有状态的部件，因为其中会牵扯到index的改变
class BottomNavBarWidget extends StatefulWidget {
  BottomNavBarWidget({Key key}) : super(key:key);
  @override
  _BottomNavBarWidgetState createState()=>_BottomNavBarWidgetState();
}

class _BottomNavBarWidgetState extends State<BottomNavBarWidget> with SingleTickerProviderStateMixin{
  //这里声明一个控制器，在flutter 中好多用到控制器的地方，包括像常见的表单
  TabController tabController;
  //这里把我们引入的三个页面放进list集合里，等候发落
  List _pages=[HomePage(),BookListPage(),LovePage()];
  //这个就是比较核心的索引了，默认值就是我们的首页
  int currentIndex = 0;
  @override
  void initState(){
    super.initState();
    tabController = TabController(vsync: this,length: 3)
    ..addListener((){
      //setState这里类似React 更改数据的时候是要在setState()里
      setState((){
        currentIndex =tabController.index;
      });
    });
  }
  //这里是一个部件 返回的值类型是个Widget是用Scaffold包着的,里边也是界面的核心
  @override
   
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        index:currentIndex,
        //底部按钮
        items: <Widget>[
            IconShadowWidget(Icon(Icons.home,
                    color: Colors.lightBlueAccent, size: 36),showShadow: false,),
            IconShadowWidget(Icon(Icons.library_books,
                    color: Colors.lightBlueAccent, size: 36),
                    shadowColor: Colors.lightBlueAccent.shade100,showShadow: false,),
             IconShadowWidget(Icon(Icons.supervised_user_circle,
                    color: Colors.lightBlueAccent, size: 36),showShadow: false,)
        ],
        
        onTap: (index){
          setState(() {
            currentIndex=index;
          });
           tabController.animateTo(index,duration:Duration(milliseconds:  10),curve:Curves.ease);
        },
      ),
      //主体部分
      body:TabBarView(
        controller: tabController,
        children: <Widget>[
          Container(
            child: _pages[0],
          ),
          Container(
            child: _pages[1],
          ),
          Container(
            child: _pages[2],
          ),
        ],
      )
    );
  }
}