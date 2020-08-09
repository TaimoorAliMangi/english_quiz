import 'package:english_quiz/SignUPScreen.dart';
import 'package:flutter/material.dart';
import 'main.dart'; //TODO once all the constants are defined in main.dart, we need to create a separate dart file to refer to constants and import it here,
import 'package:english_quiz/CustomButtons.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomPadding: false,
      body: SafeArea(
        child: Center(
          child: Column(
              //mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      height: 140.0,
                      child: Image.asset(
                        'assets/signInToon.JPG',
                        fit: BoxFit.fitHeight,
                      ),
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          '*',
                          style: signinScreen_asterik,
                        ),
                        Text(
                          'Sign In!',
                          style: ts_SecondwelcomeScreen1,
                        ),
                        Text(
                          '*',
                          style: signinScreen_asterik,
                        ),
                      ],
                    ),
                    Container(
                      padding: EdgeInsets.fromLTRB(0.0, 10.0, 10.0, 7),
                      width: 350.0,
                      height: 70.0,
                      child: TextField(
                        onSubmitted: (value) =>
                            {}, //TODO Edit this function so that when user submits username it can be processed here
                        decoration: InputDecoration(
                          hintText: "Enter Username",
                          contentPadding: EdgeInsets.all(10.0),
                          hintStyle:
                              TextStyle(fontSize: 15.0, color: Colors.grey),
                          enabled: true,
                          enabledBorder: outputBorderStyle_TextField,
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
                          enabledBorder: outputBorderStyle_TextField,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0.0, 15.0, 15.0, 0.0),
                      child: CustomButton(
                        childw: Text(
                          'Sign In',
                          style: buttonText,
                          textAlign: TextAlign.center,
                        ),
                        width: 340.0,
                        height: 50.0,
                        func: () {
                          //TODO This code is responsible for when Sign In Button is clicked
                          setState(() {});
                        },
                        c: ksiginpButtonColor,
                      ),
                    ),
                    Container(
                      width: 340.0,
                      padding: EdgeInsets.all(20.0),
                      child: GestureDetector(
                        onTap: () {
                          //Todo This is place where Forgot possword code should go
                          print('Forgot Passowrd Clicked');
                        },
                        child: Text(
                          'Forgot Password ?',
                          style: TextStyle(fontSize: 16.0, color: Colors.grey),
                          textAlign: TextAlign.end,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(10.0),
                      width: 340.0,
                      height: 1.0,
                      color: Colors.blueGrey,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          CustomButton(
                            childw: Text(
                              'Facebook',
                              style: buttonText,
                              textAlign: TextAlign.center,
                            ),
                            width: 165.0,
                            height: 50.0,
                            func: () {
                              //TODO This code is responsible for when Facebook Button is clicked
                              setState(() {});
                            },
                            c: kfacebookButtonColor,
                          ),
                          SizedBox(width: 10.0),
                          CustomButton(
                            childw: Text(
                              'Gmail',
                              style: buttonText,
                              textAlign: TextAlign.center,
                            ),
                            width: 165.0,
                            height: 50.0,
                            func: () {
                              //TODO This code is responsible for when Gmail Button is clicked
                              setState(() {});
                            },
                            c: kgmailButtonColor,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(10.0),
                      width: 350.0,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          Container(
                            width: 90.0,
                            height: 1.0,
                            color: Colors.blueGrey,
                          ),
                          Text(
                            'Don\'t have an account?',
                            style: TextStyle(
                              //fontWeight: FontWeight.w500,
                              fontSize: 15.0,
                              color: ksignupButtonColor,
                            ),
                          ),
                          Container(
                            width: 90.0,
                            height: 1.0,
                            color: Colors.blueGrey,
                          ),
                        ],
                      ),
                    ),
                    CustomButton(
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
                                builder: (context) => SignUpForm(),
                              ));
                        });
                      },
                      c: ksignupButtonColor,
                    ),
                  ],
                ),
                SizedBox(width: 10.0),
              ]),
        ),
      ),
    );
  }
}
