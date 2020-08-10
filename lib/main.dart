import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/material.dart';
import 'package:english_quiz/WelcomeScreen.dart';

const TextStyle buttonText = TextStyle(
  fontWeight: FontWeight.w500,
  fontSize: 20.0,
  color: Color(0xFFFFFFFF),
);

const TextStyle buttonTextCategoryScreen = TextStyle(
  fontSize: 25.0,
  color: Color(0xFFFFFFFF),
);

const TextStyle ts_welcomeScreen = TextStyle(
  fontWeight: FontWeight.w700,
  fontSize: 35.0,
  color: Color(0xFF5FB884),
);

const TextStyle ts_signUP_Screen = TextStyle(
  fontWeight: FontWeight.w700,
  fontSize: 35.0,
  color: Color(0xFFE2BC47),
);

const TextStyle ts_welcomeScreen_2 = TextStyle(
  fontSize: 15.0,
  fontWeight: FontWeight.bold,
  color: Colors.grey,
);

const TextStyle ts_welcomeScreen_3 = TextStyle(
  fontSize: 18.0,
  fontWeight: FontWeight.w900,
  fontStyle: FontStyle.italic,
  color: Color(0Xff6F6F6F),
);

const TextStyle ts_SecondwelcomeScreen1 = TextStyle(
  fontWeight: FontWeight.bold,
  fontSize: 35.0,
  color: Color(0xFF5FB884),
);

const TextStyle ts_SecondwelcomeScreen2 = TextStyle(
  fontSize: 28.0,
  color: Color(0xFF5FB884),
);

const TextStyle signinScreen_asterik = TextStyle(
  fontSize: 20.0,
  color: Color(0xFFEB5757),
);

const TextStyle signupScreen_asterik = TextStyle(
  fontSize: 20.0,
  color: Colors.blue,
);

const TextStyle scoreCategoryScreen = TextStyle(
  fontSize: 22.0,
  // fontWeight: FontWeight.bold,
  color: Colors.yellow,
);

const TextStyle usernameDisplayCategoryScreenStyle = TextStyle(
  fontSize: 20.0,
  fontWeight: FontWeight.bold,
  color: Color(0xFF828282),
);

const TextStyle userLevelDisplayCategoryScreenStyle = TextStyle(
  fontSize: 20.0,
  //fontWeight: FontWeight.bold,
  color: Color(0xFF828282),
);

const TextStyle ts_VerbalReasoning = TextStyle(
  fontWeight: FontWeight.bold,
  fontSize: 25.0,
  color: Color(0xFF67C38D),
);

final Color kVerbalRColorListButtons = Color(0xFFADD9C0);
final Color kVerbalRColorSelected = Color(0xFFF6F6F6);

final Color ksiginpButtonColor = Color(0xFF67C38D);
final Color kfacebookButtonColor = Color(0xFF50C0E4);
final Color kgmailButtonColor = Color(0xFFDE5151);
final Color ksignupButtonColor = Color(0xFFE2BC47);

final Color kSynonymColor = Color(0xFF67C38D);
final Color kClozeColor = Color(0xFF50C0E4);
final Color kShuffledSentences = Color(0xFFDE5151);
final Color kAntonyms = Color(0xFFE2BC47);

final OutlineInputBorder outputBorderStyle_TextField = OutlineInputBorder(
    borderRadius: BorderRadius.circular(10.0),
    borderSide:
        BorderSide(style: BorderStyle.solid, color: Colors.green, width: 1.5));

final OutlineInputBorder outputBorderStyle_TextField_SignUpScreen =
    OutlineInputBorder(
        borderRadius: BorderRadius.circular(10.0),
        borderSide: BorderSide(
            style: BorderStyle.solid, color: ksignupButtonColor, width: 1.5));

final BorderSide borderside = BorderSide(
    width: 1.0,
    color: ksignupButtonColor,
    style: BorderStyle.solid); //This is used to edit the score border

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        backgroundColor: Colors.white,
      ),
      home: WelcomeScreen(),
    ),
  );
}
