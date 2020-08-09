import 'package:english_quiz/VerbalScreen_LevelSelector.dart';

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

  final int scoreStarCategory = 140;

  @override
  Widget build(BuildContext context) {
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      SizedBox(
                        height: 120.0,
                      ),
                      Text(
                        username[0],
                        style: usernameDisplayCategoryScreenStyle,
                        textAlign: TextAlign.center,
                      ),
                      Text(userLevel[1],
                          style: userLevelDisplayCategoryScreenStyle,
                          textAlign: TextAlign.end),
                    ],
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
            Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.fromLTRB(0.0, 15.0, 15.0, 0.0),
                  child: CustomButton(
                    childw: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'Verbal',
                          style: buttonTextCategoryScreen,
                          textAlign: TextAlign.center,
                        ),
                        Text(
                          'Reasoning',
                          style: buttonTextCategoryScreen,
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                    width: 340.0,
                    height: 75.0,
                    func: () {
                      //TODO This code is responsible for when VerbalReasoning Button in Category Screen is clicked
                      setState(() {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => VerbalReasoning(),
                            ));
                      });
                    },
                    c: kVerbalReasoningColor,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0.0, 15.0, 15.0, 0.0),
                  child: CustomButton(
                    childw: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'Non-Verbal',
                          style: buttonTextCategoryScreen,
                          textAlign: TextAlign.center,
                        ),
                        Text(
                          'Reasoning',
                          style: buttonTextCategoryScreen,
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                    width: 340.0,
                    height: 75.0,
                    func: () {
                      //TODO This code is responsible for when NonVerbalReasoning Button in Category Screen is clicked
                      setState(() {});
                    },
                    c: kNonVerbalColor,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0.0, 15.0, 15.0, 0.0),
                  child: CustomButton(
                    childw: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'English Grammar',
                          style: buttonTextCategoryScreen,
                          textAlign: TextAlign.center,
                        ),
                        Text(
                          '& Comprehension',
                          style: buttonTextCategoryScreen,
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                    width: 340.0,
                    height: 75.0,
                    func: () {
                      //TODO This code is responsible for when EnglishGrammer and Comprehension Button in Category Screen is clicked
                      setState(() {});
                    },
                    c: kEnglishGrammarandCompColor,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0.0, 15.0, 15.0, 0.0),
                  child: CustomButton(
                    childw: Text(
                      'Math',
                      style: buttonTextCategoryScreen,
                      textAlign: TextAlign.center,
                    ),
                    width: 340.0,
                    height: 75.0,
                    func: () {
                      //TODO This code is responsible for when Math Button in Category Screen is clicked
                      setState(() {});
                    },
                    c: kMathColor,
                  ),
                ),
                SizedBox(
                  height: 40.0,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
