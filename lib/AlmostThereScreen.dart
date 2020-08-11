import 'main.dart';
import 'package:flutter/material.dart';
import 'CustomButtons.dart';

class AlmostThereScreen extends StatefulWidget {
  @override
  _AlmostThereScreenState createState() => _AlmostThereScreenState();
}

class _AlmostThereScreenState extends State<AlmostThereScreen> {
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
                width: 10.0,
              ),
              Column(
                children: <Widget>[
                  Container(
                    width: 150.0,
                    height: 150.0,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/secondWelcomeScreen.JPG'),
                      ),
                      shape: BoxShape.circle,
                      border: Border.all(
                          color: ksignupButtonColor,
                          width: 1.0,
                          style: BorderStyle.solid),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(0.0, 15.0, 10.0, 0.0),
                    width: 350.0,
                    height: 70.0,
                    child: TextField(
                      onSubmitted: (value) =>
                          {}, //TODO Edit this function so that when user submits username in AlmostThere Screen it can be processed here
                      decoration: InputDecoration(
                        hintText: "Enter Username",
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
                      childw: Text(
                        'Done',
                        style: buttonText,
                        textAlign: TextAlign.center,
                      ),
                      width: 340.0,
                      height: 50.0,
                      func: () {
                        //TODO This code is responsible for when Done Button is clicked on Almost There Screen
                        setState(() {
//                          Navigator.push(
//                              context,
//                              MaterialPageRoute(
//                                builder: (context) => LoginScreen(),
//                              ));
                        });
                      },
                      c: ksignupButtonColor,
                      shapeborder: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  Container(
                    height: 200.0,
                    child: Image.asset(
                      'assets/SignUpToon.JPG',
                      fit: BoxFit.cover,
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
