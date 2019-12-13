import 'package:flutter/material.dart';
// import '../widgets/widget_search_bar.dart';
// import '../utils/my_http.dart';
class BookListPage extends StatefulWidget{
  BookListPage({Key key}) : super(key:key);
  @override
  _BookListPageState createState()=>_BookListPageState();
}
class _BookListPageState extends State<BookListPage>{
   var list="";
  void initState(){
      // getHttp();
      
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title:Text("书单")
      ),
      // body:SearchPage()
      body:Container(
        child: Column(
           children: <Widget>[
              Text(list)
           ],
         )
      )
    );
  }
}