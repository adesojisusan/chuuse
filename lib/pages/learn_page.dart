import 'package:chuuse/courseClasses/classMyCourses.dart';
import 'package:chuuse/pages/navbar.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class LearnPage extends StatefulWidget {
  @override
  _LearnPageState createState() => _LearnPageState();
}

class _LearnPageState extends State<LearnPage> {
  List<MyCourses> mycourse = [];

  Widget myCoursesCard(mycourse) {
    return Padding(
      padding: EdgeInsets.only(left: 15, right: 15, top: 10),
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            CourseCards(
              school: 'Convenant University',
              course: 'Computer Science',
              progressText: 'You\'re making progress',
              progress: LinearPercentIndicator(
                width: 320,
                lineHeight: 7.0,
                percent: 0.5,
                linearStrokeCap: LinearStrokeCap.roundAll,
                backgroundColor: Colors.grey[400],
                progressColor: Colors.green,
              ),
              duration: '50m',
            ),
            CourseCards(
              school: 'Babcock University',
              course: 'Human Nutrition',
              progressText: 'You\'re making progress',
              progress: LinearPercentIndicator(
                width: 320,
                lineHeight: 7.0,
                percent: 0.2,
                linearStrokeCap: LinearStrokeCap.roundAll,
                backgroundColor: Colors.grey[400],
                progressColor: Colors.yellow,
              ),
              duration: '1h 30m',
            ),
            CourseCards(
              school: 'Convenant University',
              course: 'Computer Science',
              progressText: 'You\'re making progress',
              progress: LinearPercentIndicator(
                width: 320,
                lineHeight: 7.0,
                percent: 0.5,
                linearStrokeCap: LinearStrokeCap.roundAll,
                backgroundColor: Colors.grey[400],
                progressColor: Colors.green,
              ),
            ),
            CourseCards(
              school: 'josh university',
              course: 'Computer Science',
              progressText: 'You\'re making progress',
              progress: LinearPercentIndicator(
                width: 320,
                lineHeight: 7.0,
                percent: 0.5,
                linearStrokeCap: LinearStrokeCap.roundAll,
                backgroundColor: Colors.grey[400],
                progressColor: Colors.green,
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //This is the beginning of the App Bar on the learn page
      appBar: AppBar(
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.only(
              top: 18,
              bottom: 6,
            ),
            child: Container(
              width: 90.0,
              padding: EdgeInsets.only(
                left: 5,
                right: 5,
                top: 5,
                bottom: 5,
              ),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(30)),
              child: Image.asset('assets/images/logo.jpg'),
            ),
          ),
          SizedBox(
            //This sizedbox is to move the chuuse logo to the left side of the page
            width: 275,
          ),
          Icon(Icons.settings)
        ],
        backgroundColor: Colors.teal,
      ),
      //This is the end of the App Bar

      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/bg1.png'), fit: BoxFit.fill),
        ),
        child: Column(
          children:
              mycourse.map((mycourse) => myCoursesCard(mycourse)).toList(),
        ),
      ),
    );
  }
}

class CourseCards extends StatelessWidget {
  final String school;
  final String course;
  final String progressText;
  final LinearPercentIndicator progress;
  final Divider divider;
  final String duration;
  final String timeLeft;
  final Widget icon;
  const CourseCards({
    Key key,
    this.school,
    this.course,
    this.duration,
    this.divider,
    this.icon,
    this.progress,
    this.progressText,
    this.timeLeft,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 12),
      width: 390,
      height: 250,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(10)),
        child: Card(
            child: Padding(
              padding: const EdgeInsets.only(left:10,right:10),
              child: Stack(children: <Widget>[
          Text(
              school,
              style: TextStyle(fontSize: 20.0),
          ),
          Positioned(right: 20, child: Icon(Icons.list)),
          SizedBox(height: 0),
          Positioned(
                bottom: 170,
                child: Text(course,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30))),
          SizedBox(height: 20),
          Positioned(
                bottom: 120,
                child: Text(
                  progressText,
                  style: TextStyle(fontSize: 15),
                )),
          Positioned(bottom: 100, child: progress),
          Positioned(
                bottom: 70,
                child: Text(
                  duration,
                  style: TextStyle(fontWeight: FontWeight.bold),
                )),
                Positioned(bottom:70,right:220,child: Text('to go in week 1')),
                Positioned(right:25,bottom:50,child: Icon(Icons.exit_to_app,color: Colors.teal,size: 40,))
        ]),
            )),
      );
  }
}
