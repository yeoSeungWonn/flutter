import 'package:flutter/material.dart';
import 'dart:math';
import 'package:fluttertoast/fluttertoast.dart';

class Dice extends StatefulWidget {
  //const Dice({ Key key }) : super(key: key);

  @override
  _DiceState createState() => _DiceState();
}

class _DiceState extends State<Dice> {
  int leftDice = 1, rightDice = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.redAccent,
      appBar: AppBar(
        title: Text("Dice game app"),
        backgroundColor: Colors.redAccent,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(32.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                    child: Image.asset(
                      'image/dice$leftDice.png',
                      width: 100,
                    ),
                  ),
                  SizedBox(width: 20),
                  Expanded(
                    child: Image(
                        image: AssetImage('image/dice$rightDice.png'),
                        width: 100),
                  ),
                ],
              ),
            ),
            SizedBox(height: 60),
            ButtonTheme(
                minWidth: 150,
                height: 90,
                child: ElevatedButton(
                    style:
                        ElevatedButton.styleFrom(primary: Colors.orangeAccent),
                    onPressed: () {
                      setState(() {
                        leftDice = Random().nextInt(6) + 1;
                        rightDice = Random().nextInt(6) + 1;
                        showToast("Dice1 : $leftDice Dice2: $rightDice");
                      });
                    },
                    child: Icon(Icons.play_arrow)))
          ],
        ),
      ),
    );
  }
}

void showToast(String s) {
  Fluttertoast.showToast(
      msg: s,
      backgroundColor: Colors.white,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM);
}
