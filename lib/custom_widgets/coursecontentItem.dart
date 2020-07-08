import 'package:flutter/material.dart';
class CourseContentItem extends StatelessWidget {
  final String title;
  final String duration;
  final IconData icon;
  final IconData status;
  const CourseContentItem({
    Key key,
    this.duration, this.icon, this.title,this.status
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 5),
      child: Container(
          height: 60,
          width: 420,
          decoration: BoxDecoration(color: Colors.white),
          child: Row(
            children: <Widget>[
              Stack(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 5, top: 7,),
                    child: CircleAvatar(
                      backgroundColor: Colors.black,
                      radius: 20,
                      child: Container(
                        width: 35,
                        height: 35,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(360)),
                        child: Icon(icon,
                            color: Colors.black, size: 30),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 60, top: 10),
                    child: Text(
                      title,
                      style: TextStyle(
                          fontSize: 14, fontWeight: FontWeight.w500),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30, left: 80),
                    child: Text(duration,
                    style: TextStyle(
                      fontSize:14
                    ),),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 50,top: 28),
                    child: Icon(status,color: Colors.green,),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 370, top: 12),
                    child: Icon(Icons.cloud_download,color: Colors.blue[700]),
                  )
                ],
              )
            ],
          )),
    );
  }
}
