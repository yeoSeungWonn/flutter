import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "호날두 프로필",
      home: Grade(),
    );
  }
}

class Grade extends StatelessWidget {
  const Grade({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black87,
        appBar: AppBar(
          title: Text("날강두"),
          backgroundColor: Colors.amber[700], //앱바의 색상
          centerTitle: true, //중앙으로 앱바 타이틀 옮감
          elevation: 0, //그림자 정도
        ),
        body: Padding(
          //어떤 특정 지점으로 부터 위젯이 떨어저야 할 거리를 지정함
          padding:
              EdgeInsets.fromLTRB(30, 40, 0, 0), //(left, top, right, bottom)
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start, //왼쪽 시작점 정렬
            children: <Widget>[
              Center(
                child: CircleAvatar(
                  backgroundImage:
                      AssetImage("image/스크린샷 2021-08-10 오후 1.02.00.png"),
                  radius: 60.0,
                ),
              ),
              Divider(
                height: 60.0, //devider의 위와 아래의 간격이 합쳐서 60이라는 뜻
                color: Colors.grey[850],
                thickness: 0.5,
                endIndent: 30, //끝에서 부터 얼마나 떨어져야 하는가?
              ),
              Text(
                "Name",
                style: TextStyle(
                  color: Colors.white,
                  letterSpacing: 2.0, // 글자간의 간격 조정
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                "Christiano Nalgando",
                style: TextStyle(
                    color: Colors.white,
                    letterSpacing: 2.0,
                    fontSize: 28.0,
                    fontWeight: FontWeight.bold), //글자 굵기
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                "POWER LEVEL",
                style: TextStyle(
                  color: Colors.white,
                  letterSpacing: 2.0,
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                "85",
                style: TextStyle(
                    color: Colors.white,
                    letterSpacing: 2.0,
                    fontSize: 28.0,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 30.0,
              ),
              Row(
                children: <Widget>[
                  Icon(Icons.check_box_outlined),
                  SizedBox(
                    width: 10.0,
                  ),
                  Text(
                    "호우킥",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16.0,
                      letterSpacing: 1.0,
                    ),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Icon(Icons.check_box_outlined),
                  SizedBox(
                    width: 10.0,
                  ),
                  Text(
                    "전통무술 호날도",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16.0,
                      letterSpacing: 1.0,
                    ),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Icon(Icons.check_box_outlined),
                  SizedBox(
                    width: 10.0,
                  ),
                  Text(
                    "호난사",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16.0,
                      letterSpacing: 1.0,
                    ),
                  ),
                ],
              ),
              Center(
                child: CircleAvatar(
                  backgroundImage:
                      AssetImage("image/스크린샷 2021-08-10 오후 1.02.23.png"),
                  radius: 40.0,
                  backgroundColor: Colors.amber[900],
                ),
              ),
            ],
          ),
        ));
  }
}
