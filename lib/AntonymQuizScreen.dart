import 'package:english_quiz/CustomButtons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const Color incorrectAnswerAntonymColor = Color(0xFFEB5757);
const Color correctAnswerAntonymColor = Color(0xFF6FCF97);

const TextStyle ts_AntonymHead = TextStyle(
    fontSize: 20.0, color: Color(0xFFE4BE48), fontWeight: FontWeight.bold);

const TextStyle ts_AntonymHeadWord =
    TextStyle(fontSize: 40.0, color: Colors.grey, fontWeight: FontWeight.bold);

const TextStyle ts_AntonymButtonText = TextStyle(
  fontWeight: FontWeight.bold,
  fontSize: 20.0,
  color: Colors.grey,
);

const TextStyle ts_AntonymButtonTextPressed = TextStyle(
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

List<Color> currentButtonColor = [
  buttonCurrentColor0,
  buttonCurrentColor1,
  buttonCurrentColor2,
  buttonCurrentColor3
];

TextStyle ts_currentAntonymStyle0 = ts_AntonymButtonText;
TextStyle ts_currentAntonymStyle1 = ts_AntonymButtonText;
TextStyle ts_currentAntonymStyle2 = ts_AntonymButtonText;
TextStyle ts_currentAntonymStyle3 = ts_AntonymButtonText;
List<TextStyle> currentAntonymButtonTextStyle = [
  ts_currentAntonymStyle0,
  ts_currentAntonymStyle1,
  ts_currentAntonymStyle2,
  ts_currentAntonymStyle3
];

String optionA = 'Cease';
String optionB = 'Start';
String optionC = 'Beguile';
String optionD = 'Bereavement';
List<String> optionButtonText = [optionA, optionB, optionC, optionD];

class AntonymQuizScreen extends StatefulWidget {
  @override
  _AntonymQuizScreenState createState() => _AntonymQuizScreenState();
}

class _AntonymQuizScreenState extends State<AntonymQuizScreen> {
  int timer = 140;
  String wordAntonym = 'Begin';
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
                  print('Back Pressed in Antonym Quiz Screen');
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
                    'Antonyms',
                    style: ts_AntonymHead,
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
              height: heigthRow,
              width: rowWidth,
              margin: EdgeInsets.only(top: 10.0),
              child: Center(
                child: Text(
                  wordAntonym,
                  style: ts_AntonymHeadWord,
                ),
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(14.0),
                border: Border.all(
                    color: borderColorDefaultButton,
                    width: 3.0,
                    style: BorderStyle.solid),
                color: Colors.white,
                shape: BoxShape.rectangle,
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
                        style: currentAntonymButtonTextStyle[0],
                      ),
                      shapeborder: shapeborder_Antonym,
                      func: () {
                        //TODO when option Ais pressed
                        setState(() {
                          if (correctAnswer == 0) {
                            currentButtonColor[0] = correctAnswerAntonymColor;
                            currentAntonymButtonTextStyle[0] =
                                ts_AntonymButtonTextPressed;
                          } else {
                            currentButtonColor[0] = incorrectAnswerAntonymColor;
                            currentAntonymButtonTextStyle[0] =
                                ts_AntonymButtonTextPressed;
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
                        style: currentAntonymButtonTextStyle[1],
                      ),
                      shapeborder: shapeborder_Antonym,
                      func: () {
                        //TODO when option B is pressed
                        setState(() {
                          if (correctAnswer == 1) {
                            currentButtonColor[1] = correctAnswerAntonymColor;
                            currentAntonymButtonTextStyle[1] =
                                ts_AntonymButtonTextPressed;
                          } else {
                            currentButtonColor[1] = incorrectAnswerAntonymColor;
                            currentAntonymButtonTextStyle[1] =
                                ts_AntonymButtonTextPressed;
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
                        style: currentAntonymButtonTextStyle[2],
                      ),
                      shapeborder: shapeborder_Antonym,
                      func: () {
                        //TODO when option C is pressed
                        setState(() {
                          if (correctAnswer == 2) {
                            currentButtonColor[2] = correctAnswerAntonymColor;
                            currentAntonymButtonTextStyle[2] =
                                ts_AntonymButtonTextPressed;
                          } else {
                            currentButtonColor[2] = incorrectAnswerAntonymColor;
                            currentAntonymButtonTextStyle[2] =
                                ts_AntonymButtonTextPressed;
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
                        style: currentAntonymButtonTextStyle[3],
                      ),
                      shapeborder: shapeborder_Antonym,
                      func: () {
                        //TODO when option D is pressed
                        setState(() {
                          if (correctAnswer == 3) {
                            currentButtonColor[3] = correctAnswerAntonymColor;
                            currentAntonymButtonTextStyle[3] =
                                ts_AntonymButtonTextPressed;
                          } else {
                            currentButtonColor[3] = incorrectAnswerAntonymColor;
                            currentAntonymButtonTextStyle[3] =
                                ts_AntonymButtonTextPressed;
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
                      height: 3.0,
                      color: Colors.yellow,
                    ),
                    SizedBox(
                      width: 4.0,
                    ),
                    Container(
                      width: rowWidth * 0.18,
                      height: 3.0,
                      color: Colors.yellow,
                    ),
                    SizedBox(
                      width: 4.0,
                    ),
                    Container(
                      width: rowWidth * 0.18,
                      height: 3.0,
                      color: Colors.yellow,
                    ),
                    SizedBox(
                      width: 4.0,
                    ),
                    Container(
                      width: rowWidth * 0.18,
                      height: 3.0,
                      color: Colors.yellow,
                    ),
                    SizedBox(
                      width: 4.0,
                    ),
                    Container(
                        width: rowWidth * 0.18,
                        height: 3.0,
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
