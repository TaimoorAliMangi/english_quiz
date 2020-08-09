import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final Widget childw;
  final Function func;
  final Color c;
  final double width;
  final double height;
  CustomButton({this.childw, this.func, this.c, this.width, this.height});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: func,
      child: childw,
      elevation: 2.0,
      constraints: BoxConstraints.tightFor(width: width, height: height),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0),
      ),
      fillColor: c,
    );
  }
}
