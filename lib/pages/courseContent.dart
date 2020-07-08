import 'package:chuuse/custom_widgets/coursecontentItem.dart';
import 'package:flutter/material.dart';

class CourseContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[400],
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(
              top: 24,
            ),
            //this is the top menu
            child: Container(
              height: 50,
              width: 470,
              decoration: BoxDecoration(
                color: Colors.teal,
              ),
              child: Stack(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 90, top: 10),
                    child: Text(
                      'Learning Basic Design Concepts',
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 5, top: 10),
                    child: GestureDetector(
                        onTap: () => Navigator.pop(context),
                        child: Icon(Icons.close)),
                  ),
                ],
              ),
            ),
          ),
          CourseContentItem(
            title: 'What is creativity',
            icon: Icons.play_arrow,
            status: Icons.done,
            duration: 'lecture-5m',
          ),
          CourseContentItem(
            title: 'Introductory quiz (lots of fun and useful info)',
            icon: Icons.chrome_reader_mode,
            status: Icons.done,
            duration: 'Graded Quiz',
          ),
          CourseContentItem(
            title: 'Get to know your classmates',
            icon: Icons.chrome_reader_mode,
            status: Icons.done,
            duration: 'Supplemental material',
          ),
          SizedBox(height: 20),
           Container(
              child: Text('Creativity, Design and Application'),
            ),
            SizedBox(height:15),
            CourseContentItem(
            title: 'creativity',
            icon: Icons.play_arrow,
            status: Icons.done,
            duration: 'lecture-3m',
          ),
          CourseContentItem(
            title: 'thinking makes the difference',
            icon: Icons.play_arrow,
            status: Icons.done,
            duration: 'lecture-7m',
          ),
          CourseContentItem(
            title: 'introduction to design',
            icon: Icons.play_arrow,
            status: Icons.done,
            duration: 'lecture-2m',
          ),
        ],
      ),
    );
  }
}
