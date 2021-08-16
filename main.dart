import 'package:flutter/material.dart';
import 'package:push_named/screenA.dart';
import 'package:push_named/screenB.dart';
import 'package:push_named/screenC.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/', //화면에 젤 처음 출력되는 라우트를 불러오는 역할 멀티페이지시 사용
      routes: {
        //이동할 페이지의 라우터를 지정
        '/': (context) => ScreenA(), //스크린a가 먼저 화면에 띄어진다.
        '/b': (context) => ScreenB(),
        '/c': (context) => ScreenC(),
      },
    );
  }
}
