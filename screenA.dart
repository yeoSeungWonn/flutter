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
                  Navigator.pushNamed(context, '/b');
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
