import 'package:english_quiz/SecondWelcomeScreen.dart';
import 'package:flutter/material.dart';
import 'main.dart'; //TODO once all the constants are defined in main.dart, we need to create a separate dart file to refer to constants and import it here.

class WelcomeScreen extends StatefulWidget {
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              //TODO Gesture Controller over SizedBox needs to be removed, this is just for debugging purposes
              GestureDetector(
                child: SizedBox(
                  height: 10.0,
                  child: Container(
                    color: Colors.grey,
                  ),
                ),
                onTap: () {
                  setState(() {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SecondWelcomeScreen(),
                        ));
                  });
                },
              ),
              SizedBox(),
              Column(
                children: <Widget>[
                  Image.asset(
                    'assets/Logo_WelcomeScreen.JPG',
                    fit: BoxFit.contain,
                  ),
                  Text(
                    'ELEVEN',
                    style: ts_welcomeScreen,
                  ),
                  Text(
                    'ACE',
                    style: ts_welcomeScreen,
                  ),
                ],
              ),
              SizedBox(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Powered by:',
                    style: ts_welcomeScreen_2,
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Text(
                    'Brown Box Solutions',
                    style: ts_welcomeScreen_3,
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
