import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "buttons",
      home: MyButtons(),
    );
  }
}

class MyButtons extends StatelessWidget {
  const MyButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Buttons"),
        centerTitle: true,
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextButton(
              // onPressed: () {
              //   print("text button");
              // },
              onLongPress: () {
                print("Text button");
              }, //좀 길게 눌러야 작동
              child: Text(
                "Text button",
                style: TextStyle(fontSize: 20),
              ),
              style: TextButton.styleFrom(
                primary: Colors.red, //textbutton 글자 자체의 색
                //backgroundColor: Colors.blue //버튼의 배경색
              )),
          ElevatedButton(
            onPressed: () {
              print("Elveatedbutton");
            },
            child: Text("Elevated button"),
            style: ElevatedButton.styleFrom(
                primary: Colors
                    .orangeAccent, //backgroundcolor 속성을 가지고 있지 않다 대신에 그것을 담당하는게 primary이다.
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10) //모서리의 둥글기
                    ),
                elevation: 0),
          ),
          OutlinedButton(
              onPressed: () {
                print("Outlined button");
              },
              child: Text("Outlined button"),
              style: OutlinedButton.styleFrom(
                  primary: Colors.green, //outlined button 자체의 글자색에 영향
                  side: BorderSide(
                      color: Colors.black87, //외곽 선의 색
                      width: 2 //외곽 선의 두께
                      ))),
          TextButton.icon //버튼 앞에 아이콘을 붙여야 할 경우
              (
            onPressed: () {
              print("Icon button");
            },
            icon: Icon(
              Icons.home,
              size: 30,
              //color: Colors.black87, => 따로 아이콘의 색이 지정되어있지 않다면 primary의 색상이 아이콘의 색상이 된다.
            ),
            label: Text("Go Home"),
            style: TextButton.styleFrom(primary: Colors.purple),
          ),
          ElevatedButton.icon //버튼 앞에 아이콘을 붙여야 할 경우
              (
            onPressed: () {
              print("Icon button");
            },
            icon: Icon(
              Icons.home,
              size: 30,
            ),
            label: Text("Go Home"),
            style: ElevatedButton.styleFrom(
                primary: Colors.black, minimumSize: Size(200, 50) //버튼의 크기 조정
                ),
          ),
          OutlinedButton.icon(
            onPressed: null, //버튼 비활성화
            icon: Icon(
              Icons.home,
              size: 30,
            ),
            label: Text("Go Home"),
            style: OutlinedButton.styleFrom(onSurface: Colors.pink),
          ),
          ButtonBar(
            //일단 알아서 오른쪽에 붙어있으며, 자리가 널널한 경우 가로로 배치되어있다. 자리가 없으면 알아서 세로로 바뀐다.
            buttonPadding: EdgeInsets.all(20), //padding 간격
            alignment: MainAxisAlignment.center,
            children: [
              TextButton(onPressed: () {}, child: Text("Textbutton")),
              ElevatedButton(onPressed: () {}, child: Text("Elevatedbutton"))
            ],
          )
        ],
      )),
    );
  }
}
