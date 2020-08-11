import 'package:english_quiz/AntonymsScreen.dart';
import 'package:english_quiz/Cloze.dart';
import 'package:english_quiz/ShuffledSentences.dart';
import 'package:english_quiz/SynonymScreen.dart';
import 'main.dart';
import 'package:flutter/material.dart';
import 'package:english_quiz/CustomButtons.dart';

class CategorySelectionScreen extends StatefulWidget {
  @override
  _CategorySelectionScreenState createState() =>
      _CategorySelectionScreenState();
}

class _CategorySelectionScreenState extends State<CategorySelectionScreen> {
  final List<String> username = ['David', 'John', 'Elliot', 'Babar Azam'];
  final List<String> userLevel = ['Advanced', 'Beginner', 'Intermediate'];

  final int scoreStarCategory = 230;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(right: 10.0, top: 10.0),
              width: 340.0,
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
                          scoreStarCategory.toString(),
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
                  )
                ],
              ),
            ),
            Row(
              //mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: Container(
                    //width: 300.0,
                    margin: EdgeInsets.only(left: 30.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(
                          height: 120.0,
                        ),
                        Text(
                          username[0],
                          style: usernameDisplayCategoryScreenStyle,
                          textAlign: TextAlign.start,
                        ),
                        Text(userLevel[1],
                            style: userLevelDisplayCategoryScreenStyle,
                            textAlign: TextAlign.start),
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 175.0,
                  child: Image.asset(
                    'assets/SignUpToon.JPG',
                    fit: BoxFit.contain,
                  ),
                ),
              ],
            ),
            Expanded(
              flex: 1,
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0.0, 15.0, 15.0, 0.0),
                    child: CustomButton(
                      shapeborder: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      childw: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            'Synonyms',
                            style: buttonTextCategoryScreen,
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                      width: 340.0,
                      height: 75.0,
                      func: () {
                        //TODO This code is responsible for when Synonyms Button in Category Screen is clicked

                        setState(() {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => SynonymScreen(),
                              ));
                        });
                      },
                      c: kSynonymColor,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0.0, 15.0, 15.0, 0.0),
                    child: CustomButton(
                      shapeborder: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      childw: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            'Antonyms',
                            style: buttonTextCategoryScreen,
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                      width: 340.0,
                      height: 75.0,
                      func: () {
                        //TODO This code is responsible for when Antonyms Button in Category Screen is clicked
                        setState(() {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => AntonymScreen(),
                              ));
                        });
                      },
                      c: kAntonyms,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0.0, 15.0, 15.0, 0.0),
                    child: CustomButton(
                      shapeborder: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      childw: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            'Shuffled Sentences',
                            style: buttonTextCategoryScreen,
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                      width: 340.0,
                      height: 75.0,
                      func: () {
                        //TODO This code is responsible for when ShuffledSentences and Comprehension Button in Category Screen is clicked
                        setState(() {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => ShuffledScreen(),
                              ));
                        });
                      },
                      c: kShuffledSentences,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0.0, 15.0, 15.0, 0.0),
                    child: CustomButton(
                      shapeborder: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      childw: Text(
                        'Cloze',
                        style: buttonTextCategoryScreen,
                        textAlign: TextAlign.center,
                      ),
                      width: 340.0,
                      height: 75.0,
                      func: () {
                        //TODO This code is responsible for when Cloze Button in Category Screen is clicked
                        setState(() {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => ClozeScreen(),
                              ));
                        });
                      },
                      c: kClozeColor,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
