import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Appbar",
      theme: ThemeData(primarySwatch: Colors.red),
      home: MyPage(),
    );
  }
}

class MyPage extends StatelessWidget {
  const MyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Appbar icon menu"),
        centerTitle: true,
        elevation: 0,
        actions: <Widget>[
          //복수의 아이콘들을 우측에 배치할때 사용
          IconButton(
            onPressed: () {
              print("shopping cart button is clicked");
            },
            icon: Icon(Icons.shopping_cart),
          ),
          IconButton(
            onPressed: () {
              print("menu button is clicked");
            },
            icon: Icon(Icons.search),
          ),
        ],
      ),
      drawer: Drawer(
        //자동으로 햄버거 표시가 나타남, 누르면 drawer메뉴가 나타남
        child: ListView(
          //복수의 위젯을 줄세워 나열
          padding: EdgeInsets.zero, //이거 없으면 메뉴 윗부분(시간있는 부분)이 비게됨
          children: <Widget>[
            UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage("assets/icon.png"),
                backgroundColor: Colors.white,
              ),
              otherAccountsPictures: <Widget>[
                //다른 계정 이미지
                CircleAvatar(
                  backgroundImage: AssetImage("assets/icon.png"),
                  backgroundColor: Colors.white,
                ),
              ],
              accountName: Text("Happy"),
              accountEmail: Text("Happy@Happy.com"),
              onDetailsPressed: () {
                //화살표 모양으로 나타나서 누르면 부가정보(?)를 나타내줌
                print("arrow is clicked");
              },
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(40),
                  bottomRight: Radius.circular(40),
                ),
              ),
            ),
            ListTile(
              leading: //왼쪽에 위치시키는 역할?
                  Icon(
                Icons.home,
                color: Colors.grey[850],
              ),
              title: Text("Home"),
              onTap: () {
                print("Home is clicked");
              },
              trailing: Icon(Icons.add),
            ),
            ListTile(
              leading: Icon(
                Icons.settings,
                color: Colors.grey[850],
              ),
              title: Text("Settings"),
              onTap: () {
                print("Settings is clicked");
              },
              trailing: Icon(Icons.add),
            ),
            ListTile(
              leading: Icon(
                Icons.question_answer,
                color: Colors.grey[850],
              ),
              title: Text("Question"),
              onTap: () {
                print("Question is clicked");
              },
              trailing: Icon(Icons.add),
            ),
          ],
        ),
      ),
    );
  }
}
