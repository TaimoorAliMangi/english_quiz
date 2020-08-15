import 'package:flutter/material.dart';
import 'main.dart';

const TextStyle ts_Leaderboard = TextStyle(
    fontSize: 35.0, color: Color(0xFF6F6F6F), fontWeight: FontWeight.bold);

class LeaderboardScreen extends StatefulWidget {
  @override
  _LeaderboardScreenState createState() => _LeaderboardScreenState();
}

class _LeaderboardScreenState extends State<LeaderboardScreen> {
  double heigthRow;
  double rowWidth;
  @override
  Widget build(BuildContext context) {
    heigthRow = MediaQuery.of(context).size.height * 0.1;
    rowWidth = MediaQuery.of(context).size.width * 0.85;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                width: rowWidth,
                height: heigthRow * 0.9,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    GestureDetector(
                      onTap: () {
                        //TODO This place is called when Backbutton is pressed inside SynonymLevelScreen
                        print('Back Pressed in Leaderboard Screen');
                        Navigator.pop(context);
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
                            style:
                                TextStyle(color: Colors.grey, fontSize: 15.0),
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
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(
                    Icons.star,
                    color: ksignupButtonColor,
                    size: 40.0,
                  ),
                  Icon(
                    Icons.star,
                    color: ksignupButtonColor,
                    size: 60.0,
                  ),
                  Icon(
                    Icons.star,
                    color: ksignupButtonColor,
                    size: 40.0,
                  ),
                ],
              ),
              Text(
                'Leader Board',
                style: ts_Leaderboard,
              ),
              SizedBox(
                height: 10.0,
              ),
              Expanded(
                child: ListView(
                  physics: AlwaysScrollableScrollPhysics(),
                  shrinkWrap: true,
                  padding: EdgeInsets.all(15.0),
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.all(5.0),
                      width: rowWidth,
                      height: heigthRow * 0.8,
                      decoration: BoxDecoration(
                        color: Color(0xFF67C38D),
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(12.0),
                        border: Border.all(
                            color: Colors.black12,
                            width: 1.0,
                            style: BorderStyle.solid),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.all(10.0),
                            padding: EdgeInsets.all(5.0),
                            child: Center(
                              child: Text(
                                '1',
                                style: TextStyle(
                                  fontSize: 20.0,
                                  color: Color(0xFF67C38D),
                                ),
                              ),
                            ),
                            width: 35.0,
                            height: heigthRow,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white,
                              border: Border.all(
                                  color: Color(0xFF67C38D),
                                  width: 1.0,
                                  style: BorderStyle.solid),
                            ),
                          ),
                          Text(
                            'Abraham',
                            style:
                                TextStyle(color: Colors.white, fontSize: 25.0),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Icon(
                                Icons.star,
                                color: ksignupButtonColor,
                                size: 30.0,
                              ),
                              Icon(
                                Icons.star,
                                color: ksignupButtonColor,
                                size: 50.0,
                              ),
                              Icon(
                                Icons.star,
                                color: ksignupButtonColor,
                                size: 30.0,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(5.0),
                      width: rowWidth,
                      height: heigthRow * 0.8,
                      decoration: BoxDecoration(
                        color: Color(0xFF50BEE1),
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(12.0),
                        border: Border.all(
                            color: Colors.black12,
                            width: 1.0,
                            style: BorderStyle.solid),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.all(10.0),
                            padding: EdgeInsets.all(5.0),
                            child: Center(
                              child: Text(
                                '2',
                                style: TextStyle(
                                  fontSize: 20.0,
                                  color: Color(0xFF50C0E4),
                                ),
                              ),
                            ),
                            width: 35.0,
                            height: heigthRow,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white,
                              border: Border.all(
                                  color: Color(0xFF50C0E4),
                                  width: 1.0,
                                  style: BorderStyle.solid),
                            ),
                          ),
                          Text(
                            'David',
                            style:
                                TextStyle(color: Colors.white, fontSize: 25.0),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Icon(
                                Icons.star,
                                color: ksignupButtonColor,
                                size: 30.0,
                              ),
                              Icon(
                                Icons.star,
                                color: ksignupButtonColor,
                                size: 50.0,
                              ),
                              Icon(
                                Icons.star,
                                color: ksignupButtonColor,
                                size: 30.0,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(5.0),
                      width: rowWidth,
                      height: heigthRow * 0.8,
                      decoration: BoxDecoration(
                        color: Color(0xFFE35454),
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(12.0),
                        border: Border.all(
                            color: Colors.black12,
                            width: 1.0,
                            style: BorderStyle.solid),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.all(10.0),
                            padding: EdgeInsets.all(5.0),
                            child: Center(
                              child: Text(
                                '3',
                                style: TextStyle(
                                  fontSize: 20.0,
                                  color: Color(0xFFE35454),
                                ),
                              ),
                            ),
                            width: 35.0,
                            height: heigthRow,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white,
                              border: Border.all(
                                  color: Color(0xFFE35454),
                                  width: 1.0,
                                  style: BorderStyle.solid),
                            ),
                          ),
                          Text(
                            'Solomon',
                            style:
                                TextStyle(color: Colors.white, fontSize: 25.0),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Icon(
                                Icons.star,
                                color: ksignupButtonColor,
                                size: 30.0,
                              ),
                              Icon(
                                Icons.star,
                                color: ksignupButtonColor,
                                size: 50.0,
                              ),
                              Icon(
                                Icons.star,
                                color: ksignupButtonColor,
                                size: 30.0,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(5.0),
                      width: rowWidth,
                      height: heigthRow * 0.8,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(12.0),
                        border: Border.all(
                            color: Colors.blueGrey,
                            width: 1.0,
                            style: BorderStyle.solid),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.all(10.0),
                            padding: EdgeInsets.all(5.0),
                            child: Center(
                              child: Text(
                                '4',
                                style: TextStyle(
                                  fontSize: 20.0,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            width: 35.0,
                            height: heigthRow,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color(0xFF7D7D7D),
                              border: Border.all(
                                  color: Color(0xFF7D7D7D),
                                  width: 1.0,
                                  style: BorderStyle.solid),
                            ),
                          ),
                          Text(
                            'Adam',
                            style: TextStyle(
                                color: Color(0xFF7D7D7D), fontSize: 25.0),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              SizedBox(
                                width: 55.0,
                              ),
                              Icon(
                                Icons.star,
                                color: ksignupButtonColor,
                                size: 50.0,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(5.0),
                      width: rowWidth,
                      height: heigthRow * 0.8,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(12.0),
                        border: Border.all(
                            color: Colors.blueGrey,
                            width: 1.0,
                            style: BorderStyle.solid),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.all(10.0),
                            padding: EdgeInsets.all(5.0),
                            child: Center(
                              child: Text(
                                '5',
                                style: TextStyle(
                                  fontSize: 20.0,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            width: 35.0,
                            height: heigthRow,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color(0xFF7D7D7D),
                              border: Border.all(
                                  color: Color(0xFF7D7D7D),
                                  width: 1.0,
                                  style: BorderStyle.solid),
                            ),
                          ),
                          Text(
                            'Kane',
                            style: TextStyle(
                                color: Color(0xFF7D7D7D), fontSize: 25.0),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              SizedBox(
                                width: 55.0,
                              ),
                              Icon(
                                Icons.star,
                                color: ksignupButtonColor,
                                size: 50.0,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(5.0),
                      width: rowWidth,
                      height: heigthRow * 0.8,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(12.0),
                        border: Border.all(
                            color: Colors.blueGrey,
                            width: 1.0,
                            style: BorderStyle.solid),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.all(10.0),
                            padding: EdgeInsets.all(5.0),
                            child: Center(
                              child: Text(
                                '6',
                                style: TextStyle(
                                  fontSize: 20.0,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            width: 35.0,
                            height: heigthRow,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color(0xFF7D7D7D),
                              border: Border.all(
                                  color: Color(0xFF7D7D7D),
                                  width: 1.0,
                                  style: BorderStyle.solid),
                            ),
                          ),
                          Text(
                            'Abel',
                            style: TextStyle(
                                color: Color(0xFF7D7D7D), fontSize: 25.0),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              SizedBox(
                                width: 55.0,
                              ),
                              Icon(
                                Icons.star,
                                color: ksignupButtonColor,
                                size: 50.0,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(5.0),
                      width: rowWidth,
                      height: heigthRow * 0.8,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(12.0),
                        border: Border.all(
                            color: ksignupButtonColor,
                            width: 3.0,
                            style: BorderStyle.solid),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.all(10.0),
                            padding: EdgeInsets.all(5.0),
                            child: Center(
                              child: Text(
                                '7',
                                style: TextStyle(
                                  fontSize: 20.0,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            width: 35.0,
                            height: heigthRow,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color(0xFF7D7D7D),
                              border: Border.all(
                                  color: Color(0xFF7D7D7D),
                                  width: 1.0,
                                  style: BorderStyle.solid),
                            ),
                          ),
                          Text(
                            'Osama999',
                            style: TextStyle(
                                color: Color(0xFF7D7D7D), fontSize: 25.0),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              SizedBox(
                                width: 55.0,
                              ),
                              Icon(
                                Icons.star,
                                color: ksignupButtonColor,
                                size: 50.0,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(5.0),
                      width: rowWidth,
                      height: heigthRow * 0.8,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(12.0),
                        border: Border.all(
                            color: Colors.blueGrey,
                            width: 1.0,
                            style: BorderStyle.solid),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.all(10.0),
                            padding: EdgeInsets.all(5.0),
                            child: Center(
                              child: Text(
                                '8',
                                style: TextStyle(
                                  fontSize: 20.0,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            width: 35.0,
                            height: heigthRow,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color(0xFF7D7D7D),
                              border: Border.all(
                                  color: Color(0xFF7D7D7D),
                                  width: 1.0,
                                  style: BorderStyle.solid),
                            ),
                          ),
                          Text(
                            'Noah',
                            style: TextStyle(
                                color: Color(0xFF7D7D7D), fontSize: 25.0),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              SizedBox(
                                width: 55.0,
                              ),
                              Icon(
                                Icons.star,
                                color: ksignupButtonColor,
                                size: 50.0,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
