import 'package:english_quiz/CustomButtons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const Color incorrectAnswerAntonymColor = Color(0xFFEB5757);
const Color correctAnswerAntonymColor = Color(0xFF6FCF97);

const TextStyle ts_SynonymHead = TextStyle(
    fontSize: 20.0, color: Color(0xFFEB5757), fontWeight: FontWeight.bold);

const TextStyle ts_SynonymHeadWord = TextStyle(
    fontSize: 40.0, color: Color(0xFF6F6F6F), fontWeight: FontWeight.bold);

const TextStyle ts_SynonymButtonText = TextStyle(
  fontWeight: FontWeight.bold,
  fontSize: 20.0,
  color: Color(0xFF6F6F6F),
);

const TextStyle ts_SynonymButtonTextPressed = TextStyle(
  fontWeight: FontWeight.bold,
  fontSize: 20.0,
  color: Colors.white,
);

const TextStyle ts_ClockTimer =
    TextStyle(fontSize: 15.0, color: Colors.grey, fontWeight: FontWeight.bold);

const Color borderColorDefaultButton = Color(0xFFDEDEDE);
ShapeBorder shapeborder_Antonym = RoundedRectangleBorder(
  side: BorderSide(
      style: BorderStyle.solid, width: 3.0, color: borderColorDefaultButton),
  borderRadius: BorderRadius.circular(12.0),
);

Color buttonCurrentColor0 = Colors.white;
Color buttonCurrentColor1 = Colors.white;
Color buttonCurrentColor2 = Colors.white;
Color buttonCurrentColor3 = Colors.white;
Color buttonCurrentColor4 = Colors.white;
Color buttonCurrentColor5 = Colors.white;
Color buttonCurrentColor6 = Colors.white;
Color buttonCurrentColor7 = Colors.white;

List<Color> currentButtonColor = [
  buttonCurrentColor0,
  buttonCurrentColor1,
  buttonCurrentColor2,
  buttonCurrentColor3,
  buttonCurrentColor4,
  buttonCurrentColor5,
  buttonCurrentColor6,
  buttonCurrentColor7
];

TextStyle ts_currentSynonymStyle0 = ts_SynonymButtonText;
TextStyle ts_currentSynonymStyle1 = ts_SynonymButtonText;
TextStyle ts_currentSynonymStyle2 = ts_SynonymButtonText;
TextStyle ts_currentSynonymStyle3 = ts_SynonymButtonText;
TextStyle ts_currentSynonymStyle4 = ts_SynonymButtonText;
TextStyle ts_currentSynonymStyle5 = ts_SynonymButtonText;
TextStyle ts_currentSynonymStyle6 = ts_SynonymButtonText;
TextStyle ts_currentSynonymStyle7 = ts_SynonymButtonText;

List<TextStyle> currentSynonymButtonTextStyle = [
  ts_currentSynonymStyle0,
  ts_currentSynonymStyle1,
  ts_currentSynonymStyle2,
  ts_currentSynonymStyle3,
  ts_currentSynonymStyle4,
  ts_currentSynonymStyle5,
  ts_currentSynonymStyle6,
  ts_currentSynonymStyle7
];

String optionA = 'was';
String optionB = 'of';
String optionC = 'bread';
String optionD = 'the';
String optionE = 'many';
String optionF = 'divine';
String optionG = 'aroma';
String optionH = 'fresh';
List<String> optionButtonText = [
  optionA,
  optionB,
  optionC,
  optionD,
  optionE,
  optionF,
  optionG,
  optionH
];

class ShuffledQuizScreen extends StatefulWidget {
  @override
  _ShuffledQuizScreenState createState() => _ShuffledQuizScreenState();
}

class _ShuffledQuizScreenState extends State<ShuffledQuizScreen> {
  int timer = 140;
  double heigthRow;
  double rowWidth;
  double buttonWidth;
  double buttonHeight;

  int correctAnswer = 2; //Can only take value 0,1,2,3

  @override
  Widget build(BuildContext context) {
    heigthRow = MediaQuery.of(context).size.height * 0.3;
    rowWidth = MediaQuery.of(context).size.width * 0.85;
    buttonHeight = MediaQuery.of(context).size.height * 0.17;
    buttonWidth = MediaQuery.of(context).size.width * 0.35;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: () {
                  //TODO This place is called when Backbutton is pressed inside SynonymLevelScreen
                  print('Back Pressed in Shuffled Quiz Screen');
                },
                child: Row(
                  children: <Widget>[
                    Icon(
                      Icons.arrow_back_ios,
                      color: Colors.grey,
                      size: 25.0,
                    ),
                    Text(
                      'Back',
                      //scoreVerbalCategory.toString(),
                      style: TextStyle(color: Colors.grey, fontSize: 15.0),
                      textAlign: TextAlign.start,
                    )
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 5.0, right: 5.0),
              width: rowWidth,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    'Shuffled Sentences',
                    style: ts_SynonymHead,
                  ),
                  Stack(
                    fit: StackFit.loose,
                    alignment: Alignment(0, 0),
                    children: <Widget>[
                      Icon(
                        Icons.add_alarm,
                        size: 55.0,
                        color: Colors.grey,
                      ),
                      Container(
                        width: 20.0,
                        height: 22.0,
                        color: Colors.white,
                      ),
                      Text(
                        timer.toString(),
                        style: ts_ClockTimer,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              width: rowWidth,
              margin: EdgeInsets.only(left: 10.0, right: 10.0, top: 20.0),
              padding: EdgeInsets.only(left: 10.0, right: 10.0),
              child: Row(
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: CustomButton(
                      height: buttonHeight,
                      width: buttonWidth,
                      c: currentButtonColor[0],
                      childw: Text(
                        optionButtonText[0],
                        style: currentSynonymButtonTextStyle[0],
                      ),
                      shapeborder: shapeborder_Antonym,
                      func: () {
                        //TODO when option Ais pressed
                        setState(() {
                          if (correctAnswer == 0) {
                            currentButtonColor[0] = correctAnswerAntonymColor;
                            currentSynonymButtonTextStyle[0] =
                                ts_SynonymButtonTextPressed;
                          } else {
                            currentButtonColor[0] = incorrectAnswerAntonymColor;
                            currentSynonymButtonTextStyle[0] =
                                ts_SynonymButtonTextPressed;
                          }
                          ;
                        });
                      },
                    ),
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Expanded(
                    flex: 1,
                    child: CustomButton(
                      height: buttonHeight,
                      width: buttonWidth,
                      c: currentButtonColor[1],
                      childw: Text(
                        optionButtonText[1],
                        style: currentSynonymButtonTextStyle[1],
                      ),
                      shapeborder: shapeborder_Antonym,
                      func: () {
                        //TODO when option B is pressed
                        setState(() {
                          if (correctAnswer == 1) {
                            currentButtonColor[1] = correctAnswerAntonymColor;
                            currentSynonymButtonTextStyle[1] =
                                ts_SynonymButtonTextPressed;
                          } else {
                            currentButtonColor[1] = incorrectAnswerAntonymColor;
                            currentSynonymButtonTextStyle[1] =
                                ts_SynonymButtonTextPressed;
                          }
                          ;
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Container(
              width: rowWidth,
              margin: EdgeInsets.only(left: 10.0, right: 10.0),
              padding: EdgeInsets.only(left: 10.0, right: 10.0),
              child: Row(
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: CustomButton(
                      height: buttonHeight,
                      width: buttonWidth,
                      c: currentButtonColor[2],
                      childw: Text(
                        optionButtonText[2],
                        style: currentSynonymButtonTextStyle[2],
                      ),
                      shapeborder: shapeborder_Antonym,
                      func: () {
                        //TODO when option C is pressed
                        setState(() {
                          if (correctAnswer == 2) {
                            currentButtonColor[2] = correctAnswerAntonymColor;
                            currentSynonymButtonTextStyle[2] =
                                ts_SynonymButtonTextPressed;
                          } else {
                            currentButtonColor[2] = incorrectAnswerAntonymColor;
                            currentSynonymButtonTextStyle[2] =
                                ts_SynonymButtonTextPressed;
                          }
                          ;
                        });
                      },
                    ),
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Expanded(
                    flex: 1,
                    child: CustomButton(
                      height: buttonHeight,
                      width: buttonWidth,
                      c: currentButtonColor[3],
                      childw: Text(
                        optionButtonText[3],
                        style: currentSynonymButtonTextStyle[3],
                      ),
                      shapeborder: shapeborder_Antonym,
                      func: () {
                        //TODO when option D is pressed
                        setState(() {
                          if (correctAnswer == 3) {
                            currentButtonColor[3] = correctAnswerAntonymColor;
                            currentSynonymButtonTextStyle[3] =
                                ts_SynonymButtonTextPressed;
                          } else {
                            currentButtonColor[3] = incorrectAnswerAntonymColor;
                            currentSynonymButtonTextStyle[3] =
                                ts_SynonymButtonTextPressed;
                          }
                          ;
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: rowWidth,
              margin: EdgeInsets.only(left: 10.0, right: 10.0, top: 20.0),
              padding: EdgeInsets.only(left: 10.0, right: 10.0),
              child: Row(
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: CustomButton(
                      height: buttonHeight,
                      width: buttonWidth,
                      c: currentButtonColor[4],
                      childw: Text(
                        optionButtonText[4],
                        style: currentSynonymButtonTextStyle[4],
                      ),
                      shapeborder: shapeborder_Antonym,
                      func: () {
                        //TODO when option E is pressed
                        setState(() {
                          if (correctAnswer == 4) {
                            currentButtonColor[4] = correctAnswerAntonymColor;
                            currentSynonymButtonTextStyle[4] =
                                ts_SynonymButtonTextPressed;
                          } else {
                            currentButtonColor[4] = incorrectAnswerAntonymColor;
                            currentSynonymButtonTextStyle[4] =
                                ts_SynonymButtonTextPressed;
                          }
                          ;
                        });
                      },
                    ),
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Expanded(
                    flex: 1,
                    child: CustomButton(
                      height: buttonHeight,
                      width: buttonWidth,
                      c: currentButtonColor[5],
                      childw: Text(
                        optionButtonText[5],
                        style: currentSynonymButtonTextStyle[5],
                      ),
                      shapeborder: shapeborder_Antonym,
                      func: () {
                        //TODO when option F is pressed
                        setState(() {
                          if (correctAnswer == 5) {
                            currentButtonColor[5] = correctAnswerAntonymColor;
                            currentSynonymButtonTextStyle[5] =
                                ts_SynonymButtonTextPressed;
                          } else {
                            currentButtonColor[5] = incorrectAnswerAntonymColor;
                            currentSynonymButtonTextStyle[5] =
                                ts_SynonymButtonTextPressed;
                          }
                          ;
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Container(
              width: rowWidth,
              margin: EdgeInsets.only(left: 10.0, right: 10.0),
              padding: EdgeInsets.only(left: 10.0, right: 10.0),
              child: Row(
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: CustomButton(
                      height: buttonHeight,
                      width: buttonWidth,
                      c: currentButtonColor[6],
                      childw: Text(
                        optionButtonText[6],
                        style: currentSynonymButtonTextStyle[6],
                      ),
                      shapeborder: shapeborder_Antonym,
                      func: () {
                        //TODO when option G  is pressed
                        setState(() {
                          if (correctAnswer == 6) {
                            currentButtonColor[6] = correctAnswerAntonymColor;
                            currentSynonymButtonTextStyle[6] =
                                ts_SynonymButtonTextPressed;
                          } else {
                            currentButtonColor[6] = incorrectAnswerAntonymColor;
                            currentSynonymButtonTextStyle[6] =
                                ts_SynonymButtonTextPressed;
                          }
                          ;
                        });
                      },
                    ),
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Expanded(
                    flex: 1,
                    child: CustomButton(
                      height: buttonHeight,
                      width: buttonWidth,
                      c: currentButtonColor[7],
                      childw: Text(
                        optionButtonText[7],
                        style: currentSynonymButtonTextStyle[3],
                      ),
                      shapeborder: shapeborder_Antonym,
                      func: () {
                        //TODO when option H is pressed
                        setState(() {
                          if (correctAnswer == 7) {
                            currentButtonColor[7] = correctAnswerAntonymColor;
                            currentSynonymButtonTextStyle[7] =
                                ts_SynonymButtonTextPressed;
                          } else {
                            currentButtonColor[7] = incorrectAnswerAntonymColor;
                            currentSynonymButtonTextStyle[7] =
                                ts_SynonymButtonTextPressed;
                          }
                          ;
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
            Container(
                margin: EdgeInsets.only(left: 10.0, top: 25.0, right: 10.0),
                width: rowWidth,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      width: rowWidth * 0.18,
                      height: 4.0,
                      color: Color(0xFFEB5757),
                    ),
                    SizedBox(
                      width: 4.0,
                    ),
                    Container(
                      width: rowWidth * 0.18,
                      height: 4.0,
                      color: Color(0xFFEB5757),
                    ),
                    SizedBox(
                      width: 4.0,
                    ),
                    Container(
                      width: rowWidth * 0.18,
                      height: 4.0,
                      color: Color(0xFFEB5757),
                    ),
                    SizedBox(
                      width: 4.0,
                    ),
                    Container(
                      width: rowWidth * 0.18,
                      height: 4.0,
                      color: Colors.grey,
                    ),
                    SizedBox(
                      width: 4.0,
                    ),
                    Container(
                        width: rowWidth * 0.18,
                        height: 4.0,
                        color: Colors.grey),
                  ],
                )),
            SizedBox(
              width: 10.0,
            ),
          ],
        ),
      ),
    );
  }
}
