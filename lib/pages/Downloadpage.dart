import 'package:chuuse/custom_widgets/rectangle_button.dart';
import 'package:flutter/material.dart';
class Download extends StatefulWidget {
  @override
  _DownloadState createState() => _DownloadState();
}

class _DownloadState extends State<Download> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:Colors.teal,
        title:Text('Downloads'),
        centerTitle: true,
      ),
      body: Container(
        width: 420,
        decoration:BoxDecoration(
          color:Colors.white
        ),
        child: Column(children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 10, top: 100),
            child: Text('Download your course and',
            style: TextStyle(
              fontSize:20, fontWeight:FontWeight.w600
            ),),
          ),
          Text('learn anywhere',style: TextStyle(
            fontSize:20, fontWeight:FontWeight.w600
          ),),
          Icon(Icons.cloud_download,color: Colors.blue,size: 150,),
          Text('you can access your course material',style: TextStyle(fontSize: 15),),
          Text('offline by downloading it to your device',style: TextStyle(fontSize:15)),
          //this is the beginning of the download button
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 50),
            child: GestureDetector(
      onTap: (){},
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
        alignment: Alignment.center,
        decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.circular(5)
            ),
        child: Text(
          'find a course',
          style: TextStyle(fontSize: 15, color: Colors.white),
        ),
      ),
    ),
          )
        ],),
      ),
      
    );
  }
}