import 'package:flutter/material.dart';
import 'main.dart';
import 'package:english_quiz/CustomButtons.dart';

const Color kVerbalRButtonFillColorDefault = Color(0xFFADD9C0);
const Color kVerbalRButtonColorSelected = Color(0xFFF6F6F6);

//TODO , add more here in case levels increase
final Color currentVerbalButtonColor0 = kVerbalRButtonFillColorDefault;
final Color currentVerbalButtonColor1 = kVerbalRButtonFillColorDefault;
final Color currentVerbalButtonColor2 = kVerbalRButtonFillColorDefault;
final Color currentVerbalButtonColor3 = kVerbalRButtonFillColorDefault;
final Color currentVerbalButtonColor4 = kVerbalRButtonFillColorDefault;
final Color currentVerbalButtonColor5 = kVerbalRButtonFillColorDefault;
final Color currentVerbalButtonColor6 = kVerbalRButtonFillColorDefault;
final Color currentVerbalButtonColor7 = kVerbalRButtonFillColorDefault;
final Color currentVerbalButtonColor8 = kVerbalRButtonFillColorDefault;

//TODO , add more here in case levels increase
final TextStyle ts_currentVerbalTextStyle0 = ts_verbalReasoningButtonSelected;
final TextStyle ts_currentVerbalTextStyle1 = ts_verbalReasoningButtonSelected;
final TextStyle ts_currentVerbalTextStyle2 = ts_verbalReasoningButtonSelected;
final TextStyle ts_currentVerbalTextStyle3 = ts_verbalReasoningButtonSelected;
final TextStyle ts_currentVerbalTextStyle4 = ts_verbalReasoningButtonSelected;
final TextStyle ts_currentVerbalTextStyle5 = ts_verbalReasoningButtonSelected;
final TextStyle ts_currentVerbalTextStyle6 = ts_verbalReasoningButtonSelected;
final TextStyle ts_currentVerbalTextStyle7 = ts_verbalReasoningButtonSelected;
final TextStyle ts_currentVerbalTextStyle8 = ts_verbalReasoningButtonSelected;

class VerbalReasoning extends StatefulWidget {
  @override
  _VerbalReasoningState createState() => _VerbalReasoningState();
}

class _VerbalReasoningState extends State<VerbalReasoning> {
  final int scoreVerbalCategory = 60;

  //TODO code clean up may be needed to convert this to a array
  List<Color> colorsList = [
    currentVerbalButtonColor0,
    currentVerbalButtonColor1,
    currentVerbalButtonColor2,
    currentVerbalButtonColor3,
    currentVerbalButtonColor4,
    currentVerbalButtonColor5,
    currentVerbalButtonColor6,
    currentVerbalButtonColor7,
    currentVerbalButtonColor8
  ];
  List<TextStyle> ts_LevelButtons = [
    ts_currentVerbalTextStyle0,
    ts_currentVerbalTextStyle1,
    ts_currentVerbalTextStyle2,
    ts_currentVerbalTextStyle3,
    ts_currentVerbalTextStyle4,
    ts_currentVerbalTextStyle5,
    ts_currentVerbalTextStyle6,
    ts_currentVerbalTextStyle7,
    ts_currentVerbalTextStyle8
  ];

  void colorTextStyleInitializer() {
    for (int i = 0; i < colorsList.length; i++) {}

    for (int i = 0; i < ts_LevelButtons.length; i++) {}
  }

  static List<String> levels = [
    'Level 1',
    'Level 2',
    'Level 3',
    'Level 4',
    'Level 5',
    'Level 6',
    'Level 7',
    'Level 8',
    'Level 9'
  ];

  Widget textWidgetCreator(String levelNumber, TextStyle ts) {
    return Text(
      levelNumber,
      style: ts,
    );
  }

  @override
  Widget build(BuildContext context) {
    final double heightScreen = MediaQuery.of(context).size.height;
    final double widthScreen = MediaQuery.of(context).size.width;
    final double listViewHeight = heightScreen * 0.8;
    final double listbuttonWidth = widthScreen * 0.8;

    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Container(
                        width: 50.0,
                        height: 50.0,
                        child: Icon(
                          Icons.star,
                          color: Colors.white,
                          size: 35.0,
                        ),
                        decoration: BoxDecoration(
                          color: ksignupButtonColor,
                          shape: BoxShape.circle,
                          border: Border.all(
                              color: ksignupButtonColor,
                              width: 2.0,
                              style: BorderStyle.solid),
                        ),
                      ),
                      Container(
                        width: 50.0,
                        height: 30.0,
                        padding: EdgeInsets.all(2.0),
                        child: Text(
                          //TODO update Score of VerbalReasoning
                          scoreVerbalCategory.toString(),
                          style: scoreCategoryScreen,
                          textAlign: TextAlign.start,
                        ),
                        decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          //borderRadius: BorderRadius.circular(5.0),
                          border: Border(
                              top: borderside,
                              right: borderside,
                              bottom: borderside,
                              left: BorderSide.none),
                        ),
                      )
                    ],
                  ),
                  GestureDetector(
                    onTap: () {
                      //TODO THis place is called when Settings/More button in CategoryScreen is pressed, top right corner.
                    },
                    child: Container(
                      child: Icon(
                        Icons.more_vert,
                        color: ksignupButtonColor,
                        size: 30.0,
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                //padding: EdgeInsets.all(8),
                // margin: EdgeInsets.all(8),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.all(10.0),
                      child: Text(
                        'Verbal Reasoning',
                        style: ts_VerbalReasoning,
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Container(
                      height: listViewHeight,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Color(0xFF6ECE96),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20.0),
                          topRight: Radius.circular(20.0),
                        ),
                      ),
                      child: ListView(
                        physics: AlwaysScrollableScrollPhysics(),
                        scrollDirection: Axis.vertical,
                        shrinkWrap: true,
                        padding: EdgeInsets.all(15.0),
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.all(8.0),
                            child: CustomButton(
                              height: 70.0,
                              childw: textWidgetCreator(
                                  levels[0], ts_LevelButtons[0]),
                              c: colorsList[0],
                              func: () {
                                //TODO when level 1 is pressed

                                setState(() {
                                  if (colorsList[0] ==
                                      kVerbalRButtonFillColorDefault) {
                                    colorsList[0] = kVerbalRButtonColorSelected;

                                    ts_LevelButtons[0] =
                                        ts_verbalReasoningButtonSelected;
                                  } else {
                                    colorsList[0] =
                                        kVerbalRButtonFillColorDefault;

                                    ts_LevelButtons[0] =
                                        ts_verbalReasoningButtonDefault;
                                  }
                                });
                              },
                            ),
                          ),
                          Container(
                            width: double.infinity,
                            padding: EdgeInsets.all(8.0),
                            child: CustomButton(
                              height: 70.0,
                              childw: textWidgetCreator(
                                  levels[01], ts_LevelButtons[01]),
                              c: colorsList[01],
                              func: () {
                                //TODO when level 2 is pressed
                                setState(() {
                                  if (colorsList[01] ==
                                      kVerbalRButtonFillColorDefault) {
                                    colorsList[01] =
                                        kVerbalRButtonColorSelected;

                                    ts_LevelButtons[01] =
                                        ts_verbalReasoningButtonSelected;
                                  } else {
                                    colorsList[01] =
                                        kVerbalRButtonFillColorDefault;

                                    ts_LevelButtons[01] =
                                        ts_verbalReasoningButtonDefault;
                                  }
                                });
                              },
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(8.0),
                            child: CustomButton(
                              height: 70.0,
                              childw: textWidgetCreator(
                                  levels[02], ts_LevelButtons[02]),
                              c: colorsList[02],
                              func: () {
                                //TODO when level 3 is pressed
                                setState(() {
                                  if (colorsList[02] ==
                                      kVerbalRButtonFillColorDefault) {
                                    colorsList[02] =
                                        kVerbalRButtonColorSelected;

                                    ts_LevelButtons[02] =
                                        ts_verbalReasoningButtonSelected;
                                  } else {
                                    colorsList[02] =
                                        kVerbalRButtonFillColorDefault;

                                    ts_LevelButtons[2] =
                                        ts_verbalReasoningButtonDefault;
                                  }
                                });
                              },
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(8.0),
                            child: CustomButton(
                              height: 70.0,
                              childw: textWidgetCreator(
                                  levels[03], ts_LevelButtons[03]),
                              c: colorsList[03],
                              func: () {
                                //TODO when level 4 is pressed
                                setState(() {
                                  if (colorsList[03] ==
                                      kVerbalRButtonFillColorDefault) {
                                    colorsList[03] =
                                        kVerbalRButtonColorSelected;

                                    ts_LevelButtons[03] =
                                        ts_verbalReasoningButtonSelected;
                                  } else {
                                    colorsList[03] =
                                        kVerbalRButtonFillColorDefault;

                                    ts_LevelButtons[03] =
                                        ts_verbalReasoningButtonDefault;
                                  }
                                });
                              },
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(8.0),
                            child: CustomButton(
                              height: 70.0,
                              childw: textWidgetCreator(
                                  levels[04], ts_LevelButtons[04]),
                              c: colorsList[04],
                              func: () {
                                //TODO when level 5 is pressed
                                setState(() {
                                  if (colorsList[04] ==
                                      kVerbalRButtonFillColorDefault) {
                                    colorsList[04] =
                                        kVerbalRButtonColorSelected;

                                    ts_LevelButtons[04] =
                                        ts_verbalReasoningButtonSelected;
                                  } else {
                                    colorsList[04] =
                                        kVerbalRButtonFillColorDefault;

                                    ts_LevelButtons[04] =
                                        ts_verbalReasoningButtonDefault;
                                  }
                                });
                              },
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(8.0),
                            child: CustomButton(
                              height: 70.0,
                              childw: textWidgetCreator(
                                  levels[05], ts_LevelButtons[05]),
                              c: colorsList[05],
                              func: () {
                                //TODO when level 6 is pressed
                                setState(() {
                                  if (colorsList[05] ==
                                      kVerbalRButtonFillColorDefault) {
                                    colorsList[05] =
                                        kVerbalRButtonColorSelected;

                                    ts_LevelButtons[05] =
                                        ts_verbalReasoningButtonSelected;
                                  } else {
                                    colorsList[05] =
                                        kVerbalRButtonFillColorDefault;

                                    ts_LevelButtons[05] =
                                        ts_verbalReasoningButtonDefault;
                                  }
                                });
                              },
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(8.0),
                            child: CustomButton(
                              height: 70.0,
                              childw: textWidgetCreator(
                                  levels[06], ts_LevelButtons[06]),
                              c: colorsList[6],
                              func: () {
                                //TODO when level 7 is pressed
                                setState(() {
                                  if (colorsList[6] ==
                                      kVerbalRButtonFillColorDefault) {
                                    colorsList[6] = kVerbalRButtonColorSelected;

                                    ts_LevelButtons[6] =
                                        ts_verbalReasoningButtonSelected;
                                  } else {
                                    colorsList[6] =
                                        kVerbalRButtonFillColorDefault;

                                    ts_LevelButtons[6] =
                                        ts_verbalReasoningButtonDefault;
                                  }
                                });
                              },
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(8.0),
                            child: CustomButton(
                              height: 70.0,
                              childw: textWidgetCreator(
                                  levels[7], ts_LevelButtons[7]),
                              c: colorsList[7],
                              func: () {
                                //TODO when level 8 is pressed
                                setState(() {
                                  if (colorsList[7] ==
                                      kVerbalRButtonFillColorDefault) {
                                    colorsList[7] = kVerbalRButtonColorSelected;

                                    ts_LevelButtons[7] =
                                        ts_verbalReasoningButtonSelected;
                                  } else {
                                    colorsList[7] =
                                        kVerbalRButtonFillColorDefault;

                                    ts_LevelButtons[7] =
                                        ts_verbalReasoningButtonDefault;
                                  }
                                });
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ])));
  }
}
