import 'package:chuuse/custom_widgets/rectangle_button.dart';
import 'package:flutter/material.dart';

class Recommended extends StatefulWidget {
  @override
  _RecommendedState createState() => _RecommendedState();
}


class _RecommendedState extends State<Recommended> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:Colors.teal,
        title:Text('Recommended'),
        centerTitle: true,
      ),
      body: Container(
        width: 420,
        decoration:BoxDecoration(
          color:Colors.white
        ),
        child: Column(children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top:50),
            child: Icon(Icons.highlight,color: Colors.blue,size: 150,),
          ),
          Text('What do you want to learn? We\'ll',style: TextStyle(fontSize: 15),),
          Text('recommend the right courses for you',style: TextStyle(fontSize:15)),
          //this is the beginning of the recommendation button
          Padding(
            padding: const EdgeInsets.only(left: 50, right: 50, top: 50),
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
          'Get recommendations',
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