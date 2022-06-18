import 'package:flutter/material.dart';
import 'package:game/detailpage.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
              height: 250,
            ),
            Text(
              "Tic Tac Toe",
              style: TextStyle(
                  fontSize: 60,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              "O X",
              style: TextStyle(
                  color: Colors.black.withOpacity(0.2),
                  fontSize: 200,
                  fontWeight: FontWeight.bold),
            ),
            InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return DetailPage();
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
                    "Play Game",
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
