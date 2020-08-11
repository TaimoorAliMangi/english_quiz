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
    final double screenHeight = MediaQuery.of(context).size.height;
    final double setContainerHeight = screenHeight * 0.8;
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomPadding: false,
      body: SafeArea(
        child: Center(
          child: Column(
              //mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                Expanded(
                  flex: 1,
                  child: Column(
                    //mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                        margin:
                            EdgeInsets.only(left: 10.0, right: 10.0, top: 10.0),
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
                        margin: EdgeInsets.only(
                          left: 10.0,
                          right: 10.0,
                        ),
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
                      CustomButton(
                        shapeborder: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12.0),
                        ),
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
                      Container(
                        width: 340.0,
                        padding: EdgeInsets.all(5.0),
                        child: GestureDetector(
                          onTap: () {
                            //Todo This is place where Forgot possword code should go
                            print('Forgot Passowrd Clicked');
                          },
                          child: Text(
                            'Forgot Password ?',
                            style:
                                TextStyle(fontSize: 13.0, color: Colors.grey),
                            textAlign: TextAlign.end,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Container(
                        margin: EdgeInsets.all(3.0),
                        width: 340.0,
                        height: 1.0,
                        color: Colors.blueGrey,
                      ),
                      Container(
                        margin: EdgeInsets.all(2.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            CustomButton(
                              shapeborder: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12.0),
                              ),
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
                              shapeborder: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12.0),
                              ),
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
                        margin: EdgeInsets.all(2.0),
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
                      SizedBox(
                        height: 10.0,
                      ),
                      CustomButton(
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
                                  builder: (context) => SignUpForm(),
                                ));
                          });
                        },
                        c: ksignupButtonColor,
                      ),
                    ],
                  ),
                ),
              ]),
        ),
      ),
    );
  }
}
