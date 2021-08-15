import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "First app", //앱을 총칭하는 기본 타이틀
      theme: ThemeData(
          //앱의 기본적인 디자인 테마
          primarySwatch: //앱에서 사용할 기본적인 색상 견본 색 그자체 보다는 색의 음영 정도를 기본 색상으로 지정해서 사용하겠다는 의도
              Colors.blue),
      home: //앱이 실행되었을때 가장 먼저 화면에 보여주는 경로
          MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //앱바
        title: Text("First app"), //앱바에 들어가는 제목
      ),
      body: //본격적으로 앱 화면을 만드는 시작점
          Center(
        // 중앙에 집합, child위젯들을 가짐
        child: Column(//자신의 children 위젯들을 모두 세로로 배치시킴
            children: <Widget>[Text("Hello"), Text("Hello"), Text("Hello")]),
      ),
    );
  }
}
