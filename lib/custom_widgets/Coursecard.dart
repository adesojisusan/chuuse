import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
class CourseCard extends StatelessWidget {
  final String school;
  final String course;
  final String duration;
  final LinearPercentIndicator progress;

  const CourseCard(
      {Key key, this.course, this.duration, this.progress, this.school})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 415,
        height: 200,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
            boxShadow: [
              BoxShadow(
                  offset: Offset(0, 10),
                  blurRadius: 30,
                  color: Colors.black.withOpacity(.5))
            ]),
        child: Stack(children: <Widget>[
          //this shows the schools
          Positioned(
              left: 10,
              top: 20,
              child: Text(school, style: TextStyle(fontSize: 20))),

          //this one shows the list icon botton
          Positioned(
              right: 15,
              bottom: 140,
              child: IconButton(
                  icon: Icon(
                    Icons.list,
                    size: 27,
                    color: Colors.black,
                  ),
                  onPressed: () {})),

          //this shows the course
          Positioned(
              top: 50,
              left: 10,
              child: Text(course,
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold))),

          //this shows the progress text
          Positioned(
              bottom: 78, left: 15, child: Text('you\'re making progress')),

          //this shows the percent indicator
          Positioned(bottom: 60, left: 5, child: progress),

          //this text is for the duration of the course
          Positioned(
              bottom: 20,
              left: 15,
              child: Text(
                duration,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              )),

          Positioned(bottom: 20, left: 80, child: Text('to go in week 1')),

          //this is the exit button
          Positioned(
              bottom: 15,
              right: 15,
              child: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.exit_to_app,
                    size: 30,
                    color: Colors.teal,
                  ))),
        ]),);}}