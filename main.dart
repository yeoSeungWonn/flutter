import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Navigator",
      home: FirstPage(),
    );
  }
}

class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("First Page"),
      ),
      body: Center(
          child: ElevatedButton(
        onPressed: () {
          Navigator.push(
              //second page는 first page 위로 올라간다
              context,
              MaterialPageRoute(builder: (context) => SecondPage()));
        }, //context로 fitst page의 위치를 정확히 지정하고 그 위에 secondPage를 올린다.
        //Navigator.push(context, MaterialPageRoute(builder:(BuildContext context){
        //return SecondPage();}
        //)
        //) 와 같다
        child: Text("Go to the Second page"),
      )),
    );
  }
}

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext ctx) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Page"),
      ),
      body: Center(
          child: ElevatedButton(
        onPressed: () {
          Navigator.pop(ctx); //pop 기능을 이용하여 다시 firstPage로 복귀,
          //stack 구조를 사용하므로 firstPage위의 secondPage를 없애주면 ㅇㅋ
        },
        child: Text("Go to the First page"),
      )),
    );
  }
}
