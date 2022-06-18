import 'package:flutter/material.dart';
import 'package:game/homepage.dart';

import 'logic.dart';

class LosePage extends StatefulWidget {
  const LosePage({Key? key}) : super(key: key);

  @override
  _LosePageState createState() => _LosePageState();
}

class _LosePageState extends State<LosePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1d2730),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          children: [
            SizedBox(
              height: 180,
            ),
            Text(
              "O X",
              style: TextStyle(
                  color: Colors.black.withOpacity(0.2),
                  fontSize: 200,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 50,
            ),
            Text(
              "Sorryy!!",
              style: TextStyle(
                  fontSize: 40,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 50,
            ),
            Text(
              "You lose The Game",
              style: TextStyle(
                  fontSize: 25,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 50,
            ),
            InkWell(
              onTap: () {
                resultText1 = "";
                resultText2 = "";
                resultText3 = "";
                resultText4 = "";
                resultText5 = "";
                resultText6 = "";
                resultText7 = "";
                resultText8 = "";
                resultText9 = "";
                count = 1;
                passOne = "O";
                passTwo = "X";
                check1 = "1";
                check2 = "2";
                check3 = "3";
                check4 = "4";
                check5 = "5";
                check6 = "6";
                check7 = "7";
                check8 = "8";
                check9 = "9";
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return HomePage();
                  },
                ));
              },
              child: Container(
                height: 70,
                width: 250,
                decoration: BoxDecoration(
                  color: Color(0xffef9d10),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Text(
                    "Play Again",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
