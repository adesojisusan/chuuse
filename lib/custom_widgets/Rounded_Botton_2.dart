import 'package:flutter/material.dart';
//this is the rounded button
class RoundedButton2 extends StatelessWidget {
    final String text;
  final Function press;
  final double fontsize;
  final Color color;

  const RoundedButton2({
    Key key,
    this.text,
    this.press,
    this.fontsize,
    this.color
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
        alignment: Alignment.center,
        decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(30),
            ),
        child: Text(
          text,
          style: TextStyle(fontSize: fontsize, color: Colors.black),
        ),
      ),
    );
  }
}