import 'main.dart';
import 'package:english_quiz/CustomButtons.dart';
import 'package:flutter/material.dart';
import 'LoginScreen.dart';
import 'package:english_quiz/CategoryScreen.dart';

class SignUpForm extends StatefulWidget {
  @override
  _SignUpFormState createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomPadding: false,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              SizedBox(
                width: 25.0,
              ),
              SizedBox(
                width: 25.0,
              ),
              Column(
                children: <Widget>[
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        '*',
                        style: signupScreen_asterik,
                      ),
                      Text(
                        'Sign Up!',
                        style: ts_signUP_Screen,
                      ),
                      Text(
                        '*',
                        style: signupScreen_asterik,
                      ),
                    ],
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(0.0, 10.0, 10.0, 7),
                    width: 350.0,
                    height: 70.0,
                    child: TextField(
                      onSubmitted: (value) =>
                          {}, //TODO Edit this function so that when user submits Email it can be processed here
                      decoration: InputDecoration(
                        hintText: "Enter Email",
                        contentPadding: EdgeInsets.all(10.0),
                        hintStyle:
                            TextStyle(fontSize: 15.0, color: Colors.grey),
                        enabled: true,
                        enabledBorder: outputBorderStyle_TextField_SignUpScreen,
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(0.0, 15.0, 10.0, 0.0),
                    width: 350.0,
                    height: 70.0,
                    child: TextField(
                      onSubmitted: (value) =>
                          {}, //TODO Edit this function so that when user submits password it can be processed here
                      decoration: InputDecoration(
                        hintText: "Enter Password",
                        contentPadding: EdgeInsets.all(10.0),
                        hintStyle:
                            TextStyle(fontSize: 15.0, color: Colors.grey),
                        enabled: true,
                        enabledBorder: outputBorderStyle_TextField_SignUpScreen,
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(0.0, 15.0, 10.0, 0.0),
                    width: 350.0,
                    height: 70.0,
                    child: TextField(
                      onSubmitted: (value) =>
                          {}, //TODO Edit this function so that when user submits Re-Enter Password Field it can be processed here
                      decoration: InputDecoration(
                        hintText: "Re-Enter Password",
                        contentPadding: EdgeInsets.all(10.0),
                        hintStyle:
                            TextStyle(fontSize: 15.0, color: Colors.grey),
                        enabled: true,
                        enabledBorder: outputBorderStyle_TextField_SignUpScreen,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(0.0, 15.0, 10.0, 0.0),
                    child: CustomButton(
                      shapeborder: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      childw: Text(
                        'Sign up',
                        style: buttonText,
                        textAlign: TextAlign.center,
                      ),
                      width: 340.0,
                      height: 50.0,
                      func: () {
                        //TODO This code is responsible for when Sign Up Button is clicked
                        setState(() {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => CategorySelectionScreen(),
                              ));
                        });
                      },
                      c: ksignupButtonColor,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  Container(
                    height: 200.0,
                    child: Image.asset(
                      'assets/SignUpToon.JPG',
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
