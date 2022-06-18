import 'dart:developer';
import 'package:flutter/material.dart';
import 'homepage.dart';
import 'logic.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  ));
}

class TicToeGame extends StatefulWidget {
  const TicToeGame({Key? key}) : super(key: key);

  @override
  _TicToeGameState createState() => _TicToeGameState();
}

class _TicToeGameState extends State<TicToeGame> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xff252525),
        body: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            Text(
              "TicTacToe Game",
              style: TextStyle(
                  fontSize: 35,
                  color: Color(0xffff18ed),
                  shadows: [
                    Shadow(
                        color: Color(0xffff18ed),
                        offset: Offset(5, 5),
                        blurRadius: 15)
                  ]),
            ),
            Stack(
              children: [
                Container(
                  height: 500,
                  width: 500,
                  decoration: BoxDecoration(

                      // color: Colors.orange,
                      ),
                  child: Center(
                      child: Image.asset(
                    "images/ticTacToeGameGrid.png",
                    width: 700,
                    height: 700,
                  )),
                ),
                Positioned(
                  left: 32,
                  top: 85,
                  child: Container(
                    height: 330,
                    width: 330,
                    // color: Colors.orange.withOpacity(0.3),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            InkWell(
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

                                  if (check1 == check2 && check1 == check3) {
                                    log("win");
                                  } else if (check4 == check5 &&
                                      check4 == check6) {
                                    log("win");
                                  } else if (check7 == check8 &&
                                      check7 == check9) {
                                    log("win");
                                  } else if (check1 == check5 &&
                                      check1 == check9) {
                                    log("win");
                                  } else if (check3 == check5 &&
                                      check3 == check7) {
                                    log("win");
                                  }
                                });
                              },
                              child: Container(
                                height: 110,
                                width: 110,
                                child: resultText1 == ""
                                    ? SizedBox()
                                    : Center(child: Image.asset(resultText1)),
                              ),
                            ),
                            InkWell(
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

                                  if (check1 == check2 && check1 == check3) {
                                    log("win");
                                  } else if (check4 == check5 &&
                                      check4 == check6) {
                                    log("win");
                                  } else if (check7 == check8 &&
                                      check7 == check9) {
                                    log("win");
                                  } else if (check1 == check5 &&
                                      check1 == check9) {
                                    log("win");
                                  } else if (check3 == check5 &&
                                      check3 == check7) {
                                    log("win");
                                  }
                                });
                              },
                              child: Container(
                                height: 110,
                                width: 110,
                                child: resultText2 == ""
                                    ? SizedBox()
                                    : Center(child: Image.asset(resultText2)),
                              ),
                            ),
                            InkWell(
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

                                  if (check1 == check2 && check1 == check3) {
                                    log("win");
                                  } else if (check4 == check5 &&
                                      check4 == check6) {
                                    log("win");
                                  } else if (check7 == check8 &&
                                      check7 == check9) {
                                    log("win");
                                  } else if (check1 == check5 &&
                                      check1 == check9) {
                                    log("win");
                                  } else if (check3 == check5 &&
                                      check3 == check7) {
                                    log("win");
                                  }
                                });
                              },
                              child: Container(
                                height: 110,
                                width: 110,
                                child: resultText3 == ""
                                    ? SizedBox()
                                    : Center(child: Image.asset(resultText3)),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            InkWell(
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

                                  if (check1 == check2 && check1 == check3) {
                                    log("win");
                                  } else if (check4 == check5 &&
                                      check4 == check6) {
                                    log("win");
                                  } else if (check7 == check8 &&
                                      check7 == check9) {
                                    log("win");
                                  } else if (check1 == check5 &&
                                      check1 == check9) {
                                    log("win");
                                  } else if (check3 == check5 &&
                                      check3 == check7) {
                                    log("win");
                                  }
                                });
                              },
                              child: Container(
                                height: 110,
                                width: 110,
                                child: resultText4 == ""
                                    ? SizedBox()
                                    : Center(child: Image.asset(resultText4)),
                              ),
                            ),
                            InkWell(
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

                                  if (check1 == check2 && check1 == check3) {
                                    log("win");
                                  } else if (check4 == check5 &&
                                      check4 == check6) {
                                    log("win");
                                  } else if (check7 == check8 &&
                                      check7 == check9) {
                                    log("win");
                                  } else if (check1 == check5 &&
                                      check1 == check9) {
                                    log("win");
                                  } else if (check3 == check5 &&
                                      check3 == check7) {
                                    log("win");
                                  }
                                });
                              },
                              child: Container(
                                height: 110,
                                width: 110,
                                child: resultText5 == ""
                                    ? SizedBox()
                                    : Center(child: Image.asset(resultText5)),
                              ),
                            ),
                            InkWell(
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

                                  if (check1 == check2 && check1 == check3) {
                                    log("win");
                                  } else if (check4 == check5 &&
                                      check4 == check6) {
                                    log("win");
                                  } else if (check7 == check8 &&
                                      check7 == check9) {
                                    log("win");
                                  } else if (check1 == check5 &&
                                      check1 == check9) {
                                    log("win");
                                  } else if (check3 == check5 &&
                                      check3 == check7) {
                                    log("win");
                                  }
                                });
                              },
                              child: Container(
                                height: 110,
                                width: 110,
                                child: resultText6 == ""
                                    ? SizedBox()
                                    : Center(child: Image.asset(resultText6)),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            InkWell(
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

                                  if (check1 == check2 && check1 == check3) {
                                    log("win");
                                  } else if (check4 == check5 &&
                                      check4 == check6) {
                                    log("win");
                                  } else if (check7 == check8 &&
                                      check7 == check9) {
                                    log("win");
                                  } else if (check1 == check5 &&
                                      check1 == check9) {
                                    log("win");
                                  } else if (check3 == check5 &&
                                      check3 == check7) {
                                    log("win");
                                  }
                                });
                              },
                              child: Container(
                                height: 110,
                                width: 110,
                                child: resultText7 == ""
                                    ? SizedBox()
                                    : Center(child: Image.asset(resultText7)),
                              ),
                            ),
                            InkWell(
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

                                  if (check1 == check2 && check1 == check3) {
                                    log("win");
                                  } else if (check4 == check5 &&
                                      check4 == check6) {
                                    log("win");
                                  } else if (check7 == check8 &&
                                      check7 == check9) {
                                    log("win");
                                  } else if (check1 == check5 &&
                                      check1 == check9) {
                                    log("win");
                                  } else if (check3 == check5 &&
                                      check3 == check7) {
                                    log("win");
                                  }
                                });
                              },
                              child: Container(
                                height: 110,
                                width: 110,
                                child: resultText8 == ""
                                    ? SizedBox()
                                    : Center(child: Image.asset(resultText8)),
                              ),
                            ),
                            InkWell(
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

                                  if (check1 == check2 && check1 == check3) {
                                    log("win");
                                  } else if (check4 == check5 &&
                                      check4 == check6) {
                                    log("win");
                                  } else if (check7 == check8 &&
                                      check7 == check9) {
                                    log("win");
                                  } else if (check1 == check5 &&
                                      check1 == check9) {
                                    log("win");
                                  } else if (check3 == check5 &&
                                      check3 == check7) {
                                    log("win");
                                  }
                                });
                              },
                              child: Container(
                                height: 110,
                                width: 110,
                                child: resultText9 == ""
                                    ? SizedBox()
                                    : Center(child: Image.asset(resultText9)),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
      /*home: Scaffold(
        body: Container(
          height: double.infinity,
          width: double.infinity,
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Text(
                "Player 1 = Itish /n O",
                style: TextStyle(
                    fontSize: 30,
                    color: Colors.orange,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  InkWell(
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

                        if (check1 == check2 && check1 == check3) {
                          log("win");
                        } else if (check4 == check5 && check4 == check6) {
                          log("win");
                        } else if (check7 == check8 && check7 == check9) {
                          log("win");
                        } else if (check1 == check5 && check1 == check9) {
                          log("win");
                        } else if (check3 == check5 && check3 == check7) {
                          log("win");
                        }
                      });
                    },
                    child: Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                          border: Border(
                        right: BorderSide(color: borderColor, width: borWidth),
                        bottom: BorderSide(color: borderColor, width: borWidth),
                      )),
                      child: Center(
                          child: Text(
                        resultText1,
                        style: TextStyle(fontSize: 50),
                      )),
                    ),
                  ),
                  InkWell(
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

                        if (check1 == check2 && check1 == check3) {
                          log("win");
                        } else if (check4 == check5 && check4 == check6) {
                          log("win");
                        } else if (check7 == check8 && check7 == check9) {
                          log("win");
                        } else if (check1 == check5 && check1 == check9) {
                          log("win");
                        } else if (check3 == check5 && check3 == check7) {
                          log("win");
                        }
                      });
                    },
                    child: Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                          border: Border(
                        right: BorderSide(color: borderColor, width: borWidth),
                        bottom: BorderSide(color: borderColor, width: borWidth),
                        left: BorderSide(color: borderColor, width: borWidth),
                      )),
                      child: Center(
                          child: Text(
                        resultText2,
                        style: TextStyle(fontSize: 50),
                      )),
                    ),
                  ),
                  InkWell(
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

                        if (check1 == check2 && check1 == check3) {
                          log("win");
                        } else if (check4 == check5 && check4 == check6) {
                          log("win");
                        } else if (check7 == check8 && check7 == check9) {
                          log("win");
                        } else if (check1 == check5 && check1 == check9) {
                          log("win");
                        } else if (check3 == check5 && check3 == check7) {
                          log("win");
                        }
                      });
                    },
                    child: Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                          border: Border(
                        left: BorderSide(color: borderColor, width: borWidth),
                        bottom: BorderSide(color: borderColor, width: borWidth),
                      )),
                      child: Center(
                          child: Text(
                        resultText3,
                        style: TextStyle(fontSize: 50),
                      )),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  InkWell(
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

                        if (check1 == check2 && check1 == check3) {
                          log("win");
                        } else if (check4 == check5 && check4 == check6) {
                          log("win");
                        } else if (check7 == check8 && check7 == check9) {
                          log("win");
                        } else if (check1 == check5 && check1 == check9) {
                          log("win");
                        } else if (check3 == check5 && check3 == check7) {
                          log("win");
                        }
                      });
                    },
                    child: Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                          border: Border(
                        right: BorderSide(color: borderColor, width: borWidth),
                        bottom: BorderSide(color: borderColor, width: borWidth),
                        top: BorderSide(color: borderColor, width: borWidth),
                      )),
                      child: Center(
                          child: Text(
                        resultText4,
                        style: TextStyle(fontSize: 50),
                      )),
                    ),
                  ),
                  InkWell(
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

                        if (check1 == check2 && check1 == check3) {
                          log("win");
                        } else if (check4 == check5 && check4 == check6) {
                          log("win");
                        } else if (check7 == check8 && check7 == check9) {
                          log("win");
                        } else if (check1 == check5 && check1 == check9) {
                          log("win");
                        } else if (check3 == check5 && check3 == check7) {
                          log("win");
                        }
                      });
                    },
                    child: Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                          border: Border(
                        right: BorderSide(color: borderColor, width: borWidth),
                        bottom: BorderSide(color: borderColor, width: borWidth),
                        left: BorderSide(color: borderColor, width: borWidth),
                        top: BorderSide(color: borderColor, width: borWidth),
                      )),
                      child: Center(
                          child: Text(
                        resultText5,
                        style: TextStyle(fontSize: 50),
                      )),
                    ),
                  ),
                  InkWell(
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

                        if (check1 == check2 && check1 == check3) {
                          log("win");
                        } else if (check4 == check5 && check4 == check6) {
                          log("win");
                        } else if (check7 == check8 && check7 == check9) {
                          log("win");
                        } else if (check1 == check5 && check1 == check9) {
                          log("win");
                        } else if (check3 == check5 && check3 == check7) {
                          log("win");
                        }
                      });
                    },
                    child: Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                          border: Border(
                        top: BorderSide(color: borderColor, width: borWidth),
                        bottom: BorderSide(color: borderColor, width: borWidth),
                        left: BorderSide(color: borderColor, width: borWidth),
                      )),
                      child: Center(
                          child: Text(
                        resultText6,
                        style: TextStyle(fontSize: 50),
                      )),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  InkWell(
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

                        if (check1 == check2 && check1 == check3) {
                          log("win");
                        } else if (check4 == check5 && check4 == check6) {
                          log("win");
                        } else if (check7 == check8 && check7 == check9) {
                          log("win");
                        } else if (check1 == check5 && check1 == check9) {
                          log("win");
                        } else if (check3 == check5 && check3 == check7) {
                          log("win");
                        }
                      });
                    },
                    child: Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                          border: Border(
                        right: BorderSide(color: borderColor, width: borWidth),
                        top: BorderSide(color: borderColor, width: borWidth),
                      )),
                      child: Center(
                          child: Text(
                        resultText7,
                        style: TextStyle(fontSize: 50),
                      )),
                    ),
                  ),
                  InkWell(
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

                        if (check1 == check2 && check1 == check3) {
                          log("win");
                        } else if (check4 == check5 && check4 == check6) {
                          log("win");
                        } else if (check7 == check8 && check7 == check9) {
                          log("win");
                        } else if (check1 == check5 && check1 == check9) {
                          log("win");
                        } else if (check3 == check5 && check3 == check7) {
                          log("win");
                        }
                      });
                    },
                    child: Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                          border: Border(
                        right: BorderSide(color: borderColor, width: borWidth),
                        top: BorderSide(color: borderColor, width: borWidth),
                        left: BorderSide(color: borderColor, width: borWidth),
                      )),
                      child: Center(
                          child: Text(
                        resultText8,
                        style: TextStyle(fontSize: 50),
                      )),
                    ),
                  ),
                  InkWell(
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

                        if (check1 == check2 && check1 == check3) {
                          log("win");
                        } else if (check4 == check5 && check4 == check6) {
                          log("win");
                        } else if (check7 == check8 && check7 == check9) {
                          log("win");
                        } else if (check1 == check5 && check1 == check9) {
                          log("win");
                        } else if (check3 == check5 && check3 == check7) {
                          log("win");
                        }
                      });
                    },
                    child: Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                          border: Border(
                        top: BorderSide(color: borderColor, width: borWidth),
                        left: BorderSide(color: borderColor, width: borWidth),
                      )),
                      child: Center(
                          child: Text(
                        resultText9,
                        style: TextStyle(fontSize: 50),
                      )),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Player 2 = Anandi /n X",
                style: TextStyle(
                    fontSize: 30,
                    color: Colors.orange,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),*/
    );
  }
}
