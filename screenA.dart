import 'package:flutter/material.dart';

class ScreenA extends StatelessWidget {
  const ScreenA({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("ScreenA"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextButton(
                style: TextButton.styleFrom(
                    primary: Colors.black, backgroundColor: Colors.red),
                onPressed: () {
                  Navigator.pushNamed(context,
                      '/b'); //각 페이지 별로 붙여준 이름을 사용함(screenA 위젯의 context 이름, 이동할 라우트의 인자값)
                },
                child: Text(
                  "Go to Screen B",
                ),
              ),
              TextButton(
                style: TextButton.styleFrom(
                    primary: Colors.black, backgroundColor: Colors.red),
                onPressed: () {
                  Navigator.pushNamed(context, '/c');
                },
                child: Text("Go to Screen C"),
              )
            ],
          ),
        ));
  }
}
