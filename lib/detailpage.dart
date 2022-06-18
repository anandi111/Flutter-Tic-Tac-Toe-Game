import 'package:flutter/material.dart';
import 'gamepage.dart';
import 'logic.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xff1d2730),
        body: GestureDetector(
          onTap: () {
            FocusScope.of(context).requestFocus(new FocusNode());
          },
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 200,
                  ),
                  Text(
                    "Player 1",
                    style: TextStyle(
                        color: colorMustard,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "your side => O",
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextField(
                    textInputAction: TextInputAction.next,
                    controller: namePly1Controller,
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: colorMustard)),
                        enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: colorMustard)),
                        hintText: "Enter Name",
                        hintStyle: TextStyle(color: Colors.white)),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Text(
                    "Player 2",
                    style: TextStyle(
                        color: colorMustard,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "your side => X",
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextField(
                    controller: namePly2Controller,
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: colorMustard)),
                        enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: colorMustard)),
                        hintText: "Enter Name",
                        hintStyle: TextStyle(color: Colors.white)),
                  ),
                  SizedBox(
                    height: 80,
                  ),
                  Center(
                    child: InkWell(
                      onTap: () {
                        if (namePly1Controller.text == "" ||
                            namePly2Controller.text == "") {
                          namePly1Controller.text = "Player 1";
                          namePly2Controller.text = "Player 2";
                        } else if (namePly1Controller.text == "") {
                          namePly1Controller.text = "Player 1";
                        } else if (namePly2Controller.text == "") {
                          namePly2Controller.text = "Player 2";
                        }
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return GamePage();
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
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
