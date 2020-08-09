import 'package:flutter/cupertino.dart';
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
final Color currentVerbalButtonColor9 = kVerbalRButtonFillColorDefault;
final Color currentVerbalButtonColor10 = kVerbalRButtonFillColorDefault;
final Color currentVerbalButtonColor11 = kVerbalRButtonFillColorDefault;
final Color currentVerbalButtonColor12 = kVerbalRButtonFillColorDefault;
final Color currentVerbalButtonColor13 = kVerbalRButtonFillColorDefault;
final Color currentVerbalButtonColor14 = kVerbalRButtonFillColorDefault;
final Color currentVerbalButtonColor15 = kVerbalRButtonFillColorDefault;

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
final TextStyle ts_currentVerbalTextStyle9 = ts_verbalReasoningButtonSelected;
final TextStyle ts_currentVerbalTextStyle10 = ts_verbalReasoningButtonSelected;
final TextStyle ts_currentVerbalTextStyle11 = ts_verbalReasoningButtonSelected;
final TextStyle ts_currentVerbalTextStyle12 = ts_verbalReasoningButtonSelected;
final TextStyle ts_currentVerbalTextStyle13 = ts_verbalReasoningButtonSelected;
final TextStyle ts_currentVerbalTextStyle14 = ts_verbalReasoningButtonSelected;
final TextStyle ts_currentVerbalTextStyle15 = ts_verbalReasoningButtonSelected;

class SynonymScreen extends StatefulWidget {
  @override
  _SynonymScreenState createState() => _SynonymScreenState();
}

class _SynonymScreenState extends State<SynonymScreen> {
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
    currentVerbalButtonColor8,
    currentVerbalButtonColor9,
    currentVerbalButtonColor10,
    currentVerbalButtonColor11,
    currentVerbalButtonColor12,
    currentVerbalButtonColor13,
    currentVerbalButtonColor14,
    currentVerbalButtonColor15,
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
    ts_currentVerbalTextStyle8,
    ts_currentVerbalTextStyle8,
    ts_currentVerbalTextStyle9,
    ts_currentVerbalTextStyle10,
    ts_currentVerbalTextStyle11,
    ts_currentVerbalTextStyle12,
    ts_currentVerbalTextStyle13,
    ts_currentVerbalTextStyle14,
    ts_currentVerbalTextStyle15
  ];

  void colorTextStyleInitializer(int x) {
    for (int i = 0; i < colorsList.length; i++) {
      if (i != x) {
        colorsList[i] = kVerbalRButtonFillColorDefault;
      } else {}
    }
    for (int i = 0; i < ts_LevelButtons.length; i++) {
      if (i != x) {
        ts_LevelButtons[i] = ts_verbalReasoningButtonDefault;
      }
      {}
    }
  }

  //TODO Need to Edit Level in case more levelBlocks are to be added

  List<String> levels = [
    'Level 1',
    'Level 2',
    'Level 3',
    'Level 4',
    'Level 5',
    'Level 6',
    'Level 7',
    'Level 8',
    'Level 9',
    'Level 10',
    'Level 11',
    'Level 12',
    'Level 13',
    'Level 14',
    'Level 15',
    'Level 16',
  ];

  Widget textWidgetCreator(String levelNumber, TextStyle ts) {
    return Text(
      levelNumber,
      style: ts,
    );
  }

  Row buildRow(
    int indexLevels1,
    int indexTextStyles1,
    int IndexColorList1,
    int indexLevels2,
    int indexTextStyles2,
    int IndexColorList2,
  ) {
    return Row(
      children: <Widget>[
        Expanded(
          //padding: EdgeInsets.all(8.0),
          child: CustomButton(
            height: 100.0,
            childw: textWidgetCreator(
                levels[indexLevels1], ts_LevelButtons[indexTextStyles1]),
            c: colorsList[IndexColorList1],
            func: () {
              //TODO when level 1 is pressed

              setState(() {
                if (colorsList[IndexColorList1] ==
                    kVerbalRButtonFillColorDefault) {
                  colorsList[IndexColorList1] = kVerbalRButtonColorSelected;

                  ts_LevelButtons[indexTextStyles1] =
                      ts_verbalReasoningButtonSelected;
                  colorTextStyleInitializer(indexLevels1);
                } else {
                  colorsList[IndexColorList1] = kVerbalRButtonFillColorDefault;

                  ts_LevelButtons[indexTextStyles1] =
                      ts_verbalReasoningButtonDefault;

                  colorTextStyleInitializer(indexLevels1);
                }
              });
            },
          ),
        ),
        SizedBox(
          width: 10.0,
        ),
        Expanded(
          //padding: EdgeInsets.all(8.0),
          child: CustomButton(
            height: 100.0,
            childw: textWidgetCreator(
                levels[indexLevels2], ts_LevelButtons[indexTextStyles2]),
            c: colorsList[IndexColorList2],
            func: () {
              //TODO when level 2 is pressed

              setState(() {
                if (colorsList[IndexColorList2] ==
                    kVerbalRButtonFillColorDefault) {
                  colorsList[IndexColorList2] = kVerbalRButtonColorSelected;
                  ts_LevelButtons[indexTextStyles2] =
                      ts_verbalReasoningButtonSelected;
                  colorTextStyleInitializer(indexLevels2);
                } else {
                  colorsList[IndexColorList2] = kVerbalRButtonFillColorDefault;

                  ts_LevelButtons[indexTextStyles2] =
                      ts_verbalReasoningButtonDefault;
                  colorTextStyleInitializer(indexLevels2);
                }
              });
            },
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    final double heightScreen = MediaQuery.of(context).size.height;
    final double widthScreen = MediaQuery.of(context).size.width;
    final double listViewHeight = heightScreen * 0.8;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(
                top: 10.0,
                left: 10,
                right: 12,
              ),
              width: MediaQuery.of(context).size.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Icon(
                        Icons.star,
                        color: ksignupButtonColor,
                        size: 35.0,
                      ),
                      Container(
                        width: 50.0,
                        height: 30.0,
                        padding: EdgeInsets.all(2.0),
                        child: Text(
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
                    child: Icon(
                      Icons.more_vert,
                      color: ksignupButtonColor,
                      size: 30.0,
                    ),
                  )
                ],
              ),
            ),
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.all(10.0),
                    child: Text(
                      'Synonyms',
                      style: ts_VerbalReasoning,
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Container(
                    height: listViewHeight,
                    decoration: BoxDecoration(
                      color: Color(0xFF6ECE96),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20.0),
                        topRight: Radius.circular(20.0),
                      ),
                    ),
                    child: ListView(
                      physics: AlwaysScrollableScrollPhysics(),
                      shrinkWrap: true,
                      padding: EdgeInsets.all(15.0),
                      children: <Widget>[
                        Column(
                          children: <Widget>[
                            buildRow(0, 0, 0, 1, 1, 1),
                            SizedBox(
                              height: 10.0,
                            ),
                            buildRow(2, 2, 2, 3, 3, 3),
                            SizedBox(
                              height: 10.0,
                            ),
                            buildRow(4, 4, 4, 5, 5, 5),
                            SizedBox(
                              height: 10.0,
                            ),
                            buildRow(6, 6, 6, 7, 7, 7),
                            SizedBox(
                              height: 10.0,
                            ),
                            buildRow(8, 8, 8, 9, 9, 9),
                            SizedBox(
                              height: 10.0,
                            ),
                            buildRow(10, 10, 10, 11, 11, 11),
                            SizedBox(
                              height: 10.0,
                            ),
                            buildRow(12, 12, 12, 13, 13, 13),
                            SizedBox(
                              height: 10.0,
                            ),
                            buildRow(14, 14, 14, 15, 15, 15),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
