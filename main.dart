import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(primarySwatch: Colors.blue), home: MyPage());
  }
}

class MyPage extends StatelessWidget {
  const MyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Scaffold Messenger"),
        ),
        body: HomeBody(),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.thumb_up),
          onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                content: Text("Like a new Snack bar!"),
                duration: Duration(seconds: 5),
                action: SnackBarAction(
                  label: "Undo",
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => ThirdPage()));
                  },
                )));
          },
        ));
  }
}

class HomeBody extends StatelessWidget {
  const HomeBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => SecondPage()));
          },
          child: Text("Go to the second page")),
    );
  }
}

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Second Page"),
        ),
        body: Center(
          child: Text(
            "좋아요가 추가되었습니다.",
            style: TextStyle(fontSize: 20, color: Colors.red),
          ),
        ));
  }
}

class ThirdPage extends StatelessWidget {
  const ThirdPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScaffoldMessenger(
      //세번째 페이지를 열때 snackbar을 없애기 위해 개별적인 scaffoldMessenger 생성
      //얘 같은 경우는 MaterialApp이 제공하는 route ScaffoleMessenger가 아니기 때문에 자손 scaffold에 대한 정보를 가지고 있지 않다
      child: Scaffold(
          appBar: AppBar(
            title: Text("Third Page"),
          ),
          body: Builder(builder: (context) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '"좋아요"를 취소하시겠습니까?',
                    style: TextStyle(fontSize: 20, color: Colors.red),
                  ),
                  ElevatedButton(
                      onPressed: () {
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          content: Text(
                            '"좋아요"가 취소되었습니다.',
                            textAlign: TextAlign.center,
                          ),
                          duration: Duration(seconds: 3),
                        ));
                      },
                      child: Text("취소하기"))
                ],
              ),
            );
          })),
    );
  }
}
