import 'package:chuuse/custom_widgets/Course_Catalog.dart';
import 'package:chuuse/custom_widgets/Course_Overview_Card.dart';
import 'package:chuuse/custom_widgets/Explore_Page_Menu.dart';
import 'package:flutter/material.dart';

class ExplorePage extends StatefulWidget {
  @override
  _ExplorePageState createState() => _ExplorePageState();
}

class _ExplorePageState extends State<ExplorePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.black, actions: <Widget>[
        Padding(
          padding:
              const EdgeInsets.only(top: 15, bottom: 10, left: 5, right: 5),
          child: Container(
            width: 400,
            decoration: BoxDecoration(
                color: Colors.grey[800],
                borderRadius: BorderRadius.circular(30)),
            child: Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Icon(
                    Icons.search,
                    color: Colors.grey[600],
                  ),
                ),
                SizedBox(width: 5),
                Text('Search Catalog',
                    style: TextStyle(color: Colors.grey[600], fontSize: 17)),
                SizedBox(width: 50)
              ],
            ),
          ),
        )
      ]),

      //Beginning of the body
      body: Padding(
        padding: const EdgeInsets.only(left: 5),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: <Widget>[
              //this is the menu on the explore page
              ExplorePageMenu(),
              //end of menu
              SizedBox(
                height: 20,
              ),

              //this is the main row for course cells
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      child: CourseCatalog(title: 'Degrees', color: Colors.red),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      child: CourseOverviewCard(
                        courseTitle: 'Master of Business Administration',
                        institution: 'Lagos Business School',
                        cardColor: Colors.pink,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      child: CourseOverviewCard(
                        courseTitle: 'Master of Accounting',
                        institution: 'University of Lagos',
                        cardColor: Colors.limeAccent,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      child: CourseOverviewCard(
                        courseTitle: 'Master of Computer Science',
                        institution: 'Babcock University',
                        cardColor: Colors.grey[600],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      child: CourseOverviewCard(
                        courseTitle: 'Master of Human Anatomy',
                        institution: 'ABU Zaria',
                        cardColor: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
              //space between row cells
              SizedBox(height: 13),
              //another row cell of courses
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      child: CourseCatalog(
                          title: 'Business', color: Colors.blue[700]),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      child: CourseOverviewCard(
                        courseTitle: 'Enlish for career Development',
                        institution: 'Lagos Business School',
                        cardColor: Colors.brown,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      child: CourseOverviewCard(
                        courseTitle: 'Microsoft Excel',
                        institution: 'Convenant University',
                        cardColor: Colors.grey[500],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      child: CourseOverviewCard(
                        courseTitle: 'Financial Trading And Investment',
                        institution: 'Babcock University',
                        cardColor: Colors.grey[600],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      child: CourseOverviewCard(
                        courseTitle: 'Fibonacci Retracement',
                        institution: 'Adeleke University',
                        cardColor: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
              //space between row cell
              SizedBox(height: 13),
              //another row cell
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      child: CourseCatalog(title: 'Degrees', color: Colors.red),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      child: CourseOverviewCard(
                        courseTitle: 'Master of Business Administration',
                        institution: 'Lagos Business School',
                        cardColor: Colors.pink,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      child: CourseOverviewCard(
                        courseTitle: 'Master of Accounting',
                        institution: 'University of Lagos',
                        cardColor: Colors.limeAccent,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      child: CourseOverviewCard(
                        courseTitle: 'Master of Computer Science',
                        institution: 'Babcock University',
                        cardColor: Colors.grey[600],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      child: CourseOverviewCard(
                        courseTitle: 'Master of Human Anatomy',
                        institution: 'ABU Zaria',
                        cardColor: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
