import 'package:flutter/material.dart';
//this is the rectangle button
class RectangleButton extends StatelessWidget {
    final String text;
  final Function press;
  final double fontsize;
  final Color color;

  const RectangleButton({
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
            borderRadius: BorderRadius.circular(5)
            ),
        child: Text(
          text,
          style: TextStyle(fontSize: fontsize, color: Colors.black),
        ),
      ),
    );
  }
}