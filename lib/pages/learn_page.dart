
import 'package:chuuse/custom_widgets/Coursecard.dart';
import 'package:chuuse/custom_widgets/coursecontentItem.dart';
import 'package:chuuse/pages/courseContent.dart';
import 'package:chuuse/pages/navbar.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class LearnPage extends StatefulWidget {
  @override
  _LearnPageState createState() => _LearnPageState();
}

class _LearnPageState extends State<LearnPage> {
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
          child: Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 15),
            //this is a course cards
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: <Widget>[
                     Padding(
                       padding: const EdgeInsets.symmetric(vertical: 10),
                       child: CourseCard(
                        school: 'Convenant University',
                        course: 'Computer Science',
                        duration: '50m',
                        progress: LinearPercentIndicator(
                            width: 350,
                            lineHeight: 7,
                            percent: 0.5,
                            linearStrokeCap: LinearStrokeCap.roundAll,
                            backgroundColor: Colors.grey[400],
                            progressColor: Colors.green),
                    ),
                     ),
                     
                  

                  //this is a course cards
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    child: CourseCard(
                      school: 'Babcock University',
                      course: 'Human Nutrition',
                      duration: '1h 30m',
                      progress: LinearPercentIndicator(
                          width: 350,
                          lineHeight: 7,
                          percent: 0.3,
                          linearStrokeCap: LinearStrokeCap.roundAll,
                          backgroundColor: Colors.grey[400],
                          progressColor: Colors.yellow),
                    ),
                  ),
                  
                  //another course card
                   CourseCard(
                      school: 'School Of Creative Arts',
                      course: 'Learning Basic Design',
                      duration: '1h 15m',
                      progress: LinearPercentIndicator(
                          width: 350,
                          lineHeight: 7,
                          percent: 0.1,
                          linearStrokeCap: LinearStrokeCap.roundAll,
                          backgroundColor: Colors.grey[400],
                          progressColor: Colors.red),
                    ),
                ],
              ),
            ),
          )),
    );
  }
}
