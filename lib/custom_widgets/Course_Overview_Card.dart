import 'package:flutter/material.dart';

class CourseOverviewCard extends StatelessWidget {
  final Color cardColor;
  final String courseTitle;
  final String institution;
  const CourseOverviewCard({
    Key key,
    this.cardColor,
    this.courseTitle,
    this.institution,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 210,
      width: 150,
      decoration: BoxDecoration(color: Colors.white, boxShadow: [
        BoxShadow(
            offset: Offset(0, 5),
            blurRadius: 10,
            color: Colors.black.withOpacity(.5))
      ]),
      child: Column(children: <Widget>[
        Container(
          height: 80,
          width: 150,
          decoration: BoxDecoration(
            color: cardColor,
          ),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20)),
              child: Padding(
                padding: const EdgeInsets.only(left: 25, top: 5),
                child: Text(
                  'LBA',
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 7),
          child: Text(courseTitle,style:TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold
          )),
        ),
        SizedBox(height:20),
        Padding(
          padding: const EdgeInsets.only(left: 7),
          child: Text(institution,style: TextStyle(
            fontSize:18
          ),),
        ),
      ]),
    );
  }
}