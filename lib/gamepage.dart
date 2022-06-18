import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:game/logic.dart';
import 'package:game/winpage.dart';
import 'losepage.dart';

class GamePage extends StatefulWidget {
  const GamePage({Key? key}) : super(key: key);

  @override
  _GamePageState createState() => _GamePageState();
}

class _GamePageState extends State<GamePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1d2730),
      body: Column(
        children: [
          SizedBox(
            height: 100,
          ),
          Text(
            "Tic Tac Toe",
            style: TextStyle(
                color: Colors.white, fontSize: 35, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 90,
                width: 160,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: count % 2 == 1 ? colorCon1 : colorCon2),
                child: Center(
                  child: Column(
                    children: [
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        "${namePly1Controller.text}",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 20),
                      ),
                      Text(
                        "O",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 30),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                  height: 90,
                  width: 160,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: count % 2 == 0 ? colorCon1 : colorCon2),
                  child: Center(
                    child: Column(
                      children: [
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          "${namePly2Controller.text}",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontSize: 20),
                        ),
                        Text(
                          "X",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontSize: 30),
                        ),
                      ],
                    ),
                  )),
            ],
          ),
          SizedBox(
            height: 80,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                child: Column(
                  children: [
                    Row(
                      children: [
                        AbsorbPointer(
                          absorbing: resultText1 == "" ? false : true,
                          child: InkWell(
                            onTap: () {
                              setState(() {
                                if (count % 2 == 1) {
                                  resultText1 = passOne;
                                  count++;
                                  check1 = resultText1;
                                } else if (count % 2 == 0) {
                                  resultText1 = passTwo;
                                  count++;
                                  check1 = resultText1;
                                }

                                if (check1 == check2 && check1 == check3 ||
                                    check4 == check5 && check4 == check6 ||
                                    check7 == check8 && check7 == check9 ||
                                    check1 == check5 && check1 == check9 ||
                                    check3 == check5 && check3 == check7 ||
                                    check1 == check4 && check1 == check7 ||
                                    check2 == check5 && check2 == check8 ||
                                    check3 == check6 && check3 == check9) {
                                  Navigator.push(context, MaterialPageRoute(
                                    builder: (context) {
                                      return WinPage();
                                    },
                                  ));
                                  if (resultText1 == "O") {
                                    plyName = namePly1Controller.text;
                                  } else {
                                    plyName = namePly2Controller.text;
                                  }
                                }

                                if (count == 10) {
                                  Navigator.push(context, MaterialPageRoute(
                                    builder: (context) {
                                      return LosePage();
                                    },
                                  ));
                                }
                              });
                            },
                            child: Container(
                              height: 100,
                              width: 100,
                              decoration: BoxDecoration(
                                  border: Border(
                                right: BorderSide(
                                    color: borderColor, width: borWidth),
                                bottom: BorderSide(
                                    color: borderColor, width: borWidth),
                              )),
                              child: Center(
                                  child: Text(
                                resultText1,
                                style: TextStyle(
                                    fontSize: 50,
                                    fontWeight: FontWeight.bold,
                                    color: resultText1 == "O"
                                        ? colorMustard1
                                        : colorWhite1),
                              )),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: space,
                        ),
                        AbsorbPointer(
                          absorbing: resultText2 == "" ? false : true,
                          child: InkWell(
                            onTap: () {
                              setState(() {
                                if (count % 2 == 1) {
                                  resultText2 = passOne;
                                  count++;
                                  check2 = resultText2;
                                } else if (count % 2 == 0) {
                                  resultText2 = passTwo;
                                  count++;
                                  check2 = resultText2;
                                }

                                if (check1 == check2 && check1 == check3 ||
                                    check4 == check5 && check4 == check6 ||
                                    check7 == check8 && check7 == check9 ||
                                    check1 == check5 && check1 == check9 ||
                                    check3 == check5 && check3 == check7 ||
                                    check1 == check4 && check1 == check7 ||
                                    check2 == check5 && check2 == check8 ||
                                    check3 == check6 && check3 == check9) {
                                  Navigator.push(context, MaterialPageRoute(
                                    builder: (context) {
                                      return WinPage();
                                    },
                                  ));
                                  if (resultText2 == "O") {
                                    plyName = namePly1Controller.text;
                                  } else {
                                    plyName = namePly2Controller.text;
                                  }
                                }

                                if (count == 10) {
                                  Navigator.push(context, MaterialPageRoute(
                                    builder: (context) {
                                      return LosePage();
                                    },
                                  ));
                                }
                              });
                            },
                            child: Container(
                              height: 100,
                              width: 100,
                              decoration: BoxDecoration(
                                  border: Border(
                                right: BorderSide(
                                    color: borderColor, width: borWidth),
                                bottom: BorderSide(
                                    color: borderColor, width: borWidth),
                                left: BorderSide(
                                    color: borderColor, width: borWidth),
                              )),
                              child: Center(
                                  child: Text(
                                resultText2,
                                style: TextStyle(
                                    fontSize: 50,
                                    fontWeight: FontWeight.bold,
                                    color: resultText2 == "O"
                                        ? colorMustard2
                                        : colorWhite2),
                              )),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: space,
                        ),
                        AbsorbPointer(
                          absorbing: resultText3 == "" ? false : true,
                          child: InkWell(
                            onTap: () {
                              setState(() {
                                if (count % 2 == 1) {
                                  resultText3 = passOne;
                                  count++;
                                  check3 = resultText3;
                                } else if (count % 2 == 0) {
                                  resultText3 = passTwo;
                                  count++;
                                  check3 = resultText3;
                                }

                                if (check1 == check2 && check1 == check3 ||
                                    check4 == check5 && check4 == check6 ||
                                    check7 == check8 && check7 == check9 ||
                                    check1 == check5 && check1 == check9 ||
                                    check3 == check5 && check3 == check7 ||
                                    check1 == check4 && check1 == check7 ||
                                    check2 == check5 && check2 == check8 ||
                                    check3 == check6 && check3 == check9) {
                                  Navigator.push(context, MaterialPageRoute(
                                    builder: (context) {
                                      return WinPage();
                                    },
                                  ));
                                  if (resultText3 == "O") {
                                    plyName = namePly1Controller.text;
                                  } else {
                                    plyName = namePly2Controller.text;
                                  }
                                }

                                if (count == 10) {
                                  Navigator.push(context, MaterialPageRoute(
                                    builder: (context) {
                                      return LosePage();
                                    },
                                  ));
                                }
                              });
                            },
                            child: Container(
                              height: 100,
                              width: 100,
                              decoration: BoxDecoration(
                                  border: Border(
                                left: BorderSide(
                                    color: borderColor, width: borWidth),
                                bottom: BorderSide(
                                    color: borderColor, width: borWidth),
                              )),
                              child: Center(
                                  child: Text(
                                resultText3,
                                style: TextStyle(
                                    fontSize: 50,
                                    fontWeight: FontWeight.bold,
                                    color: resultText3 == "O"
                                        ? colorMustard3
                                        : colorWhite3),
                              )),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: space,
                    ),
                    Row(
                      children: [
                        AbsorbPointer(
                          absorbing: resultText4 == "" ? false : true,
                          child: InkWell(
                            onTap: () {
                              setState(() {
                                if (count % 2 == 1) {
                                  resultText4 = passOne;
                                  count++;
                                  check4 = resultText4;
                                } else if (count % 2 == 0) {
                                  resultText4 = passTwo;
                                  count++;
                                  check4 = resultText4;
                                }

                                if (check1 == check2 && check1 == check3 ||
                                    check4 == check5 && check4 == check6 ||
                                    check7 == check8 && check7 == check9 ||
                                    check1 == check5 && check1 == check9 ||
                                    check3 == check5 && check3 == check7 ||
                                    check1 == check4 && check1 == check7 ||
                                    check2 == check5 && check2 == check8 ||
                                    check3 == check6 && check3 == check9) {
                                  Navigator.push(context, MaterialPageRoute(
                                    builder: (context) {
                                      return WinPage();
                                    },
                                  ));
                                  if (resultText4 == "O") {
                                    plyName = namePly1Controller.text;
                                  } else {
                                    plyName = namePly2Controller.text;
                                  }
                                }

                                if (count == 10) {
                                  Navigator.push(context, MaterialPageRoute(
                                    builder: (context) {
                                      return LosePage();
                                    },
                                  ));
                                }
                              });
                            },
                            child: Container(
                              height: 100,
                              width: 100,
                              decoration: BoxDecoration(
                                  border: Border(
                                right: BorderSide(
                                    color: borderColor, width: borWidth),
                                bottom: BorderSide(
                                    color: borderColor, width: borWidth),
                                top: BorderSide(
                                    color: borderColor, width: borWidth),
                              )),
                              child: Center(
                                  child: Text(
                                resultText4,
                                style: TextStyle(
                                    fontSize: 50,
                                    fontWeight: FontWeight.bold,
                                    color: resultText4 == "O"
                                        ? colorMustard4
                                        : colorWhite4),
                              )),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: space,
                        ),
                        AbsorbPointer(
                          absorbing: resultText5 == "" ? false : true,
                          child: InkWell(
                            onTap: () {
                              setState(() {
                                if (count % 2 == 1) {
                                  resultText5 = passOne;
                                  count++;
                                  check5 = resultText5;
                                } else if (count % 2 == 0) {
                                  resultText5 = passTwo;
                                  count++;
                                  check5 = resultText5;
                                }

                                if (check1 == check2 && check1 == check3 ||
                                    check4 == check5 && check4 == check6 ||
                                    check7 == check8 && check7 == check9 ||
                                    check1 == check5 && check1 == check9 ||
                                    check3 == check5 && check3 == check7 ||
                                    check1 == check4 && check1 == check7 ||
                                    check2 == check5 && check2 == check8 ||
                                    check3 == check6 && check3 == check9) {
                                  Navigator.push(context, MaterialPageRoute(
                                    builder: (context) {
                                      return WinPage();
                                    },
                                  ));
                                  if (resultText5 == "O") {
                                    plyName = namePly1Controller.text;
                                  } else {
                                    plyName = namePly2Controller.text;
                                  }
                                }

                                if (count == 10) {
                                  Navigator.push(context, MaterialPageRoute(
                                    builder: (context) {
                                      return LosePage();
                                    },
                                  ));
                                }
                              });
                            },
                            child: Container(
                              height: 100,
                              width: 100,
                              decoration: BoxDecoration(
                                  border: Border(
                                right: BorderSide(
                                    color: borderColor, width: borWidth),
                                bottom: BorderSide(
                                    color: borderColor, width: borWidth),
                                left: BorderSide(
                                    color: borderColor, width: borWidth),
                                top: BorderSide(
                                    color: borderColor, width: borWidth),
                              )),
                              child: Center(
                                  child: Text(
                                resultText5,
                                style: TextStyle(
                                    fontSize: 50,
                                    fontWeight: FontWeight.bold,
                                    color: resultText5 == "O"
                                        ? colorMustard5
                                        : colorWhite5),
                              )),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: space,
                        ),
                        AbsorbPointer(
                          absorbing: resultText6 == "" ? false : true,
                          child: InkWell(
                            onTap: () {
                              setState(() {
                                if (count % 2 == 1) {
                                  resultText6 = passOne;
                                  count++;
                                  check6 = resultText6;
                                } else if (count % 2 == 0) {
                                  resultText6 = passTwo;
                                  count++;
                                  check6 = resultText6;
                                }

                                if (check1 == check2 && check1 == check3 ||
                                    check4 == check5 && check4 == check6 ||
                                    check7 == check8 && check7 == check9 ||
                                    check1 == check5 && check1 == check9 ||
                                    check3 == check5 && check3 == check7 ||
                                    check1 == check4 && check1 == check7 ||
                                    check2 == check5 && check2 == check8 ||
                                    check3 == check6 && check3 == check9) {
                                  Navigator.push(context, MaterialPageRoute(
                                    builder: (context) {
                                      return WinPage();
                                    },
                                  ));
                                  if (resultText6 == "O") {
                                    plyName = namePly1Controller.text;
                                  } else {
                                    plyName = namePly2Controller.text;
                                  }
                                }

                                if (count == 10) {
                                  Navigator.push(context, MaterialPageRoute(
                                    builder: (context) {
                                      return LosePage();
                                    },
                                  ));
                                }
                              });
                            },
                            child: Container(
                              height: 100,
                              width: 100,
                              decoration: BoxDecoration(
                                  border: Border(
                                top: BorderSide(
                                    color: borderColor, width: borWidth),
                                bottom: BorderSide(
                                    color: borderColor, width: borWidth),
                                left: BorderSide(
                                    color: borderColor, width: borWidth),
                              )),
                              child: Center(
                                  child: Text(
                                resultText6,
                                style: TextStyle(
                                    fontSize: 50,
                                    fontWeight: FontWeight.bold,
                                    color: resultText6 == "O"
                                        ? colorMustard6
                                        : colorWhite6),
                              )),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: space,
                    ),
                    Row(
                      children: [
                        AbsorbPointer(
                          absorbing: resultText7 == "" ? false : true,
                          child: InkWell(
                            onTap: () {
                              setState(() {
                                if (count % 2 == 1) {
                                  resultText7 = passOne;
                                  count++;
                                  check7 = resultText7;
                                } else if (count % 2 == 0) {
                                  resultText7 = passTwo;
                                  count++;
                                  check7 = resultText7;
                                }

                                if (check1 == check2 && check1 == check3 ||
                                    check4 == check5 && check4 == check6 ||
                                    check7 == check8 && check7 == check9 ||
                                    check1 == check5 && check1 == check9 ||
                                    check3 == check5 && check3 == check7 ||
                                    check1 == check4 && check1 == check7 ||
                                    check2 == check5 && check2 == check8 ||
                                    check3 == check6 && check3 == check9) {
                                  Navigator.push(context, MaterialPageRoute(
                                    builder: (context) {
                                      return WinPage();
                                    },
                                  ));
                                  if (resultText7 == "O") {
                                    plyName = namePly1Controller.text;
                                  } else {
                                    plyName = namePly2Controller.text;
                                  }
                                }

                                if (count == 10) {
                                  Navigator.push(context, MaterialPageRoute(
                                    builder: (context) {
                                      return LosePage();
                                    },
                                  ));
                                }
                              });
                            },
                            child: Container(
                              height: 100,
                              width: 100,
                              decoration: BoxDecoration(
                                  border: Border(
                                right: BorderSide(
                                    color: borderColor, width: borWidth),
                                top: BorderSide(
                                    color: borderColor, width: borWidth),
                              )),
                              child: Center(
                                  child: Text(
                                resultText7,
                                style: TextStyle(
                                    fontSize: 50,
                                    fontWeight: FontWeight.bold,
                                    color: resultText7 == "O"
                                        ? colorMustard7
                                        : colorWhite7),
                              )),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: space,
                        ),
                        AbsorbPointer(
                          absorbing: resultText8 == "" ? false : true,
                          child: InkWell(
                            onTap: () {
                              setState(() {
                                if (count % 2 == 1) {
                                  resultText8 = passOne;
                                  count++;
                                  check8 = resultText8;
                                } else if (count % 2 == 0) {
                                  resultText8 = passTwo;
                                  count++;
                                  check8 = resultText8;
                                }
                                if (check1 == check2 && check1 == check3 ||
                                    check4 == check5 && check4 == check6 ||
                                    check7 == check8 && check7 == check9 ||
                                    check1 == check5 && check1 == check9 ||
                                    check3 == check5 && check3 == check7 ||
                                    check1 == check4 && check1 == check7 ||
                                    check2 == check5 && check2 == check8 ||
                                    check3 == check6 && check3 == check9) {
                                  Navigator.push(context, MaterialPageRoute(
                                    builder: (context) {
                                      return WinPage();
                                    },
                                  ));
                                  if (resultText8 == "O") {
                                    plyName = namePly1Controller.text;
                                  } else {
                                    plyName = namePly2Controller.text;
                                  }
                                }

                                if (count == 10) {
                                  Navigator.push(context, MaterialPageRoute(
                                    builder: (context) {
                                      return LosePage();
                                    },
                                  ));
                                }
                              });
                            },
                            child: Container(
                              height: 100,
                              width: 100,
                              decoration: BoxDecoration(
                                  border: Border(
                                right: BorderSide(
                                    color: borderColor, width: borWidth),
                                top: BorderSide(
                                    color: borderColor, width: borWidth),
                                left: BorderSide(
                                    color: borderColor, width: borWidth),
                              )),
                              child: Center(
                                  child: Text(
                                resultText8,
                                style: TextStyle(
                                    fontSize: 50,
                                    fontWeight: FontWeight.bold,
                                    color: resultText8 == "O"
                                        ? colorMustard8
                                        : colorWhite8),
                              )),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: space,
                        ),
                        AbsorbPointer(
                          absorbing: resultText9 == "" ? false : true,
                          child: InkWell(
                            onTap: () {
                              setState(() {
                                if (count % 2 == 1) {
                                  resultText9 = passOne;
                                  count++;
                                  check9 = resultText9;
                                } else if (count % 2 == 0) {
                                  resultText9 = passTwo;
                                  count++;
                                  check9 = resultText9;
                                }

                                if (check1 == check2 && check1 == check3 ||
                                    check4 == check5 && check4 == check6 ||
                                    check7 == check8 && check7 == check9 ||
                                    check1 == check5 && check1 == check9 ||
                                    check3 == check5 && check3 == check7 ||
                                    check1 == check4 && check1 == check7 ||
                                    check2 == check5 && check2 == check8 ||
                                    check3 == check6 && check3 == check9) {
                                  Navigator.push(context, MaterialPageRoute(
                                    builder: (context) {
                                      return WinPage();
                                    },
                                  ));
                                  if (resultText9 == "O") {
                                    plyName = namePly1Controller.text;
                                  } else {
                                    plyName = namePly2Controller.text;
                                  }
                                }

                                if (count == 10) {
                                  Navigator.push(context, MaterialPageRoute(
                                    builder: (context) {
                                      return LosePage();
                                    },
                                  ));
                                }
                              });
                            },
                            child: Container(
                              height: 100,
                              width: 100,
                              decoration: BoxDecoration(
                                  border: Border(
                                top: BorderSide(
                                    color: borderColor, width: borWidth),
                                left: BorderSide(
                                    color: borderColor, width: borWidth),
                              )),
                              child: Center(
                                  child: Text(
                                resultText9,
                                style: TextStyle(
                                    fontSize: 50,
                                    fontWeight: FontWeight.bold,
                                    color: resultText9 == "O"
                                        ? colorMustard9
                                        : colorWhite9),
                              )),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
