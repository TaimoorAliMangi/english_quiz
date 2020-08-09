import 'package:english_quiz/LoginScreen.dart';
import 'main.dart'; //TODO once all the constants are defined in main.dart, we need to create a separate dart file to refer to constants and import it here.
import 'package:flutter/material.dart';

class SecondWelcomeScreen extends StatefulWidget {
  @override
  _SecondWelcomeScreenState createState() => _SecondWelcomeScreenState();
}

class _SecondWelcomeScreenState extends State<SecondWelcomeScreen> {
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
                          builder: (context) => LoginScreen(),
                        ));
                  });
                },
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    'Hey There, Champ.',
                    style: ts_SecondwelcomeScreen1,
                  ),
                  Text(
                    'Let\s learn togather!',
                    style: ts_SecondwelcomeScreen2,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Image.asset(
                    'assets/secondWelcomeScreen.JPG',
                    fit: BoxFit.contain,
                  ),
                ],
              ),
              SizedBox(),
            ],
          ),
        ),
      ),
    );
  }
}
