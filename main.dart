import 'package:flutter/material.dart';
import 'package:logindice/dice.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Dice game',
      home: LogIn(),
    );
  }
}

class LogIn extends StatefulWidget {
  @override
  _LogInState createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  TextEditingController controller = new TextEditingController(); //키보드 생성
  TextEditingController controller2 = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Log in'),
          backgroundColor: Colors.redAccent,
          centerTitle: true,
          leading: IconButton(icon: Icon(Icons.menu), onPressed: () {}),
          actions: <Widget>[
            IconButton(icon: Icon(Icons.search), onPressed: () {})
          ],
        ),
        body: Builder(builder: (context) {
          return GestureDetector(
            onTap: () {
              FocusScope.of(context).unfocus();
            },
            child: SingleChildScrollView(
                //키보드가 화면을 침범할 때 침범한 만큼 화면을 스크롤 해줌
                //온 화면 전체가 올라가야 하므로 가장 처음의 Column위로 간다.
                child: Column(children: <Widget>[
              Padding(padding: EdgeInsets.only(top: 50)),
              Center(
                child: Image(
                  image: AssetImage("image/chef.gif"),
                  width: 170,
                  height: 190,
                ),
              ),
              Form(
                  //textfield로 어떤 정보를 입력받을때 사용
                  child: Theme(
                      data: ThemeData(
                          //form의 전체적인 디자인
                          primaryColor: Colors.teal,
                          inputDecorationTheme: InputDecorationTheme(
                              labelStyle: //textfield에서 정보를 주는 글자들 이 앱에서는 enter dice enter pwd에 해당
                                  TextStyle(color: Colors.teal, fontSize: 15))),
                      child: Container(
                          //왜 container????
                          padding: EdgeInsets.all(40),
                          child: Column(children: <Widget>[
                            TextField(
                              controller: controller,
                              decoration:
                                  InputDecoration(labelText: 'Enter "dice"'),
                              keyboardType: TextInputType.emailAddress,
                            ),
                            TextField(
                              controller: controller2,
                              decoration:
                                  InputDecoration(labelText: 'Enter pwd'),
                              keyboardType: TextInputType.text,
                              obscureText: true, //비밀번호 보안
                            ),
                            SizedBox(height: 40),
                            ButtonTheme(
                                minWidth: 100, //소스코드 참고하면 최소 몇  픽셀 이상인지 나옴
                                height: 50,
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      primary: Colors.orangeAccent),
                                  onPressed: () {
                                    if (controller.text == "dice" &&
                                        controller2.text == "1234") {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (BuildContext context) =>
                                                  Dice()));
                                    } else if (controller.text == "dice" &&
                                        controller2.text != "1234") {
                                      wrongPW(context);
                                    } else if (controller.text == "dice" &&
                                        controller2.text != "1234") {
                                      wrongID(context);
                                    } else {
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(SnackBar(
                                        content: Text(
                                          "Input Wrong ID, PW",
                                          textAlign: TextAlign.center,
                                        ),
                                        duration: Duration(seconds: 3),
                                        backgroundColor: Colors.redAccent,
                                      ));
                                    }
                                  },
                                  child: Icon(
                                    Icons.arrow_forward,
                                    color: Colors.white,
                                    size: 35,
                                  ),
                                ))
                          ]))))
            ])),
          );
        }));
  }
}

void wrongPW(BuildContext context) {
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
    content: Text(
      "Input Wrong PW",
      textAlign: TextAlign.center,
    ),
    duration: Duration(seconds: 3),
    backgroundColor: Colors.redAccent,
  ));
}

void wrongID(BuildContext context) {
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
    content: Text(
      "Input Wrong ID",
      textAlign: TextAlign.center,
    ),
    duration: Duration(seconds: 3),
    backgroundColor: Colors.redAccent,
  ));
}
