import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:english_quiz/CustomButtons.dart';
import 'package:english_quiz/main.dart';

const Color kSynonymButtonColorUnselected = Color(0xFFEDA5A5);
const Color kSynonymButtonColorSelected = Color(0xFFF6F6F6);
const Color listViewBackgroundColor = Color(0xFFE25353);

const TextStyle ts_ShuffledSentences = TextStyle(
  fontWeight: FontWeight.bold,
  fontSize: 25.0,
  color: listViewBackgroundColor,
);

const TextStyle buttonTextContinue = TextStyle(
  fontWeight: FontWeight.w500,
  fontSize: 20.0,
  color: listViewBackgroundColor,
);

const TextStyle ts_SynonymButtonSelected = TextStyle(
  fontWeight: FontWeight.bold,
  fontSize: 25.0,
  color: Color(0xFF6F6F6F),
);

const TextStyle ts_SynonymButtonUnSelected = TextStyle(
  fontSize: 25.0,
  color: Colors.grey,
);

const TextStyle ts_SynonymScreen = TextStyle(
  fontWeight: FontWeight.bold,
  fontSize: 25.0,
  color: Colors.white,
);

const TextStyle ts_SynonymScreenSmall = TextStyle(
  fontSize: 20.0,
  color: Colors.white,
);

//TODO , add more here in case levels increase

final Color currentSynonymLevelColor0 = kSynonymButtonColorUnselected;
final Color currentSynonymLevelColor1 = kSynonymButtonColorUnselected;
final Color currentSynonymLevelColor2 = kSynonymButtonColorUnselected;
final Color currentSynonymLevelColor3 = kSynonymButtonColorUnselected;
final Color currentSynonymLevelColor4 = kSynonymButtonColorUnselected;
final Color currentSynonymLevelColor5 = kSynonymButtonColorUnselected;
final Color currentSynonymLevelColor6 = kSynonymButtonColorUnselected;
final Color currentSynonymLevelColor7 = kSynonymButtonColorUnselected;
final Color currentSynonymLevelColor8 = kSynonymButtonColorUnselected;
final Color currentSynonymLevelColor9 = kSynonymButtonColorUnselected;
final Color currentSynonymLevelColor10 = kSynonymButtonColorUnselected;
final Color currentSynonymLevelColor11 = kSynonymButtonColorUnselected;
final Color currentSynonymLevelColor12 = kSynonymButtonColorUnselected;
final Color currentSynonymLevelColor13 = kSynonymButtonColorUnselected;
final Color currentSynonymLevelColor14 = kSynonymButtonColorUnselected;
final Color currentSynonymLevelColor15 = kSynonymButtonColorUnselected;

//TODO , add more here in case levels increase

final TextStyle ts_currentSynonymLevelStyle0 = ts_SynonymButtonUnSelected;
final TextStyle ts_currentSynonymLevelStyle1 = ts_SynonymButtonUnSelected;
final TextStyle ts_currentSynonymLevelStyle2 = ts_SynonymButtonUnSelected;
final TextStyle ts_currentSynonymLevelStyle3 = ts_SynonymButtonUnSelected;
final TextStyle ts_currentSynonymLevelStyle4 = ts_SynonymButtonUnSelected;
final TextStyle ts_currentSynonymLevelStyle5 = ts_SynonymButtonUnSelected;
final TextStyle ts_currentSynonymLevelStyle6 = ts_SynonymButtonUnSelected;
final TextStyle ts_currentSynonymLevelStyle7 = ts_SynonymButtonUnSelected;
final TextStyle ts_currentSynonymLevelStyle8 = ts_SynonymButtonUnSelected;
final TextStyle ts_currentSynonymLevelStyle9 = ts_SynonymButtonUnSelected;
final TextStyle ts_currentSynonymLevelStyle10 = ts_SynonymButtonUnSelected;
final TextStyle ts_currentSynonymLevelStyle11 = ts_SynonymButtonUnSelected;
final TextStyle ts_currentSynonymLevelStyle12 = ts_SynonymButtonUnSelected;
final TextStyle ts_currentSynonymLevelStyle13 = ts_SynonymButtonUnSelected;
final TextStyle ts_currentSynonymLevelStyle14 = ts_SynonymButtonUnSelected;
final TextStyle ts_currentSynonymLevelStyle15 = ts_SynonymButtonUnSelected;

enum screenState { levelSelectorState, continueState }

class ShuffledScreen extends StatefulWidget {
  @override
  _ShuffledScreenState createState() => _ShuffledScreenState();
}

class _ShuffledScreenState extends State<ShuffledScreen> {
  bool viewSelector =
      false; //this helps track if level button has been pressed by the user or not
  double heightScreen;
  double widthScreen;
  double listViewHeight;
  String screenStateString = screenState.levelSelectorState.toString();
  List<Color> colorsList = [
    currentSynonymLevelColor0,
    currentSynonymLevelColor1,
    currentSynonymLevelColor2,
    currentSynonymLevelColor3,
    currentSynonymLevelColor4,
    currentSynonymLevelColor5,
    currentSynonymLevelColor6,
    currentSynonymLevelColor7,
    currentSynonymLevelColor8,
    currentSynonymLevelColor9,
    currentSynonymLevelColor10,
    currentSynonymLevelColor11,
    currentSynonymLevelColor12,
    currentSynonymLevelColor13,
    currentSynonymLevelColor14,
    currentSynonymLevelColor15,
  ];

  List<TextStyle> ts_LevelButtons = [
    ts_currentSynonymLevelStyle0,
    ts_currentSynonymLevelStyle1,
    ts_currentSynonymLevelStyle2,
    ts_currentSynonymLevelStyle3,
    ts_currentSynonymLevelStyle4,
    ts_currentSynonymLevelStyle5,
    ts_currentSynonymLevelStyle6,
    ts_currentSynonymLevelStyle7,
    ts_currentSynonymLevelStyle8,
    ts_currentSynonymLevelStyle8,
    ts_currentSynonymLevelStyle9,
    ts_currentSynonymLevelStyle10,
    ts_currentSynonymLevelStyle11,
    ts_currentSynonymLevelStyle12,
    ts_currentSynonymLevelStyle13,
    ts_currentSynonymLevelStyle14,
    ts_currentSynonymLevelStyle15
  ];

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

  void colorTextStyleInitializer(int x) {
    for (int i = 0; i < colorsList.length; i++) {
      if (i != x) {
        colorsList[i] = kSynonymButtonColorUnselected;
      } else {}
    }
    for (int i = 0; i < ts_LevelButtons.length; i++) {
      if (i != x) {
        ts_LevelButtons[i] = ts_SynonymButtonUnSelected;
      }
      {}
    }
  }

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
          child: CustomButton(
            shapeborder: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12.0),
            ),
            height: 100.0,
            childw: textWidgetCreator(
                levels[indexLevels1], ts_LevelButtons[indexTextStyles1]),
            c: colorsList[IndexColorList1],
            func: () {
              //TODO this function is called when Odd level is selected, please note that based on the arguments you can find out which level was clicked and code accordingly

              //this code is resposible for changing color and textStyle
              setState(() {
                if (colorsList[IndexColorList1] ==
                    kSynonymButtonColorUnselected) {
                  colorsList[IndexColorList1] = kSynonymButtonColorSelected;

                  ts_LevelButtons[indexTextStyles1] = ts_SynonymButtonSelected;
                  colorTextStyleInitializer(indexLevels1);

                  //TODO Add delay of 200ms
                  screenStateString = screenState.continueState.toString();
                  print('The state is $screenStateString');
                  viewSelector = true;
                } else {}
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
            shapeborder: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12.0),
            ),
            height: 100.0,
            childw: textWidgetCreator(
                levels[indexLevels2], ts_LevelButtons[indexTextStyles2]),
            c: colorsList[IndexColorList2],
            func: () {
              //TODO this function is called when Even level is selected, please note that based on the arguments you can find out which level was clicked and code accordingly
              //this code is resposible for changing color and textStyle
              setState(() {
                if (colorsList[IndexColorList2] ==
                    kSynonymButtonColorUnselected) {
                  colorsList[IndexColorList2] = kSynonymButtonColorSelected;
                  ts_LevelButtons[indexTextStyles2] = ts_SynonymButtonSelected;

                  colorTextStyleInitializer(indexLevels2);

                  //TODO Add delay of 200ms
                  screenStateString = screenState.continueState.toString();
                  print('The state is $screenStateString');
                  viewSelector = true;
                } else {}
              });
            },
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    heightScreen = MediaQuery.of(context).size.height;
    widthScreen = MediaQuery.of(context).size.width;

    listViewHeight = heightScreen * 0.8;

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
                  GestureDetector(
                    onTap: () {
                      //TODO This place is called when Backbutton is pressed inside SynonymLevelScreen
                      print('Back Pressed');
                      print('The state is $screenStateString');
                      setState(() {
                        if (screenStateString ==
                            screenState.levelSelectorState.toString()) {
                          Navigator.pop(context);
                        } else {
                          screenStateString =
                              screenState.levelSelectorState.toString();
                          viewSelector = false;
                        }
                      });
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
                  GestureDetector(
                    onTap: () {
                      //TODO THis place is called when Settings/More button in CategoryScreen is pressed, top right corner.
                      print('Settings Pressed');
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
                      'Shuffled Sentences',
                      style: ts_ShuffledSentences,
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Container(
                    height: listViewHeight,
                    decoration: BoxDecoration(
                      color: listViewBackgroundColor,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20.0),
                        topRight: Radius.circular(20.0),
                      ),
                    ),
                    child: buildListViewOrContinueContainer(viewSelector),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildListViewOrContinueContainer(bool selector) {
    if (selector == false) {
      return ListView(
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
      );
    } else {
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SizedBox(
            height: 10.0,
          ),
          Text(
            'ROUND RULES',
            style: ts_SynonymScreen,
          ),
          SizedBox(
            height: 10.0,
          ),
          Text(
            'Find the odd word out',
            style: ts_SynonymScreenSmall,
          ),
          Text(
            'of these sentences',
            style: ts_SynonymScreenSmall,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Expanded(
                flex: 1,
                child: SizedBox(
                  width: 10.0,
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  margin: EdgeInsets.only(
                    top: 10.0,
                    bottom: 10.0,
                  ),
                  height: heightScreen * 0.4,
                  child: Image.asset(
                    'assets/ShuffledScreenContinue.JPG',
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ],
          ),
          CustomButton(
            shapeborder: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12.0),
            ),
            width: 350.0,
            height: 70.0,
            childw: Text(
              'Continue',
              style: buttonTextContinue,
            ),
            func: () {
              //TODO this is called when continue is pressed
            },
            c: Colors.white,
          ),
          SizedBox(
            height: 10.0,
          ),
        ],
      );
    }
  }
}
