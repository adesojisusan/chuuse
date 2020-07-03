import 'package:flutter/material.dart';

class CourseCatalog extends StatelessWidget {
  final String title;
  final Color color;
  const CourseCatalog({
    Key key,
    this.color,
    this.title
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 210,
      width: 150,
      decoration: BoxDecoration(
        color: color,
        boxShadow: [
    BoxShadow(
        offset: Offset(0, 5),
        blurRadius: 10,
        color: Colors.black.withOpacity(.5))
        ]
      ),
      child:Padding(
        padding: const EdgeInsets.only(top:70,left: 15),
        child: Text(title,style:TextStyle(fontSize:22,fontWeight:FontWeight.w500, color:Colors.white)),
      ),

    );
  }
}