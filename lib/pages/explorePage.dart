import 'package:flutter/material.dart';
class ExplorePage extends StatefulWidget {
  @override
  _ExplorePageState createState() => _ExplorePageState();
}

class _ExplorePageState extends State<ExplorePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor:Colors.black, actions:<Widget>[
        Padding(
          padding: const EdgeInsets.only(top:15,bottom: 10, left: 5,right: 5),
          child: Container(width:400, decoration:BoxDecoration(
            color:Colors.grey[800],
            borderRadius: BorderRadius.circular(30)
          ),
          child: Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left:10),
                child: Icon(Icons.search,color: Colors.grey[600],),
              ),
              SizedBox(width:5),
              Text('Search Catalog',style:TextStyle(color:Colors.grey[600],fontSize: 17)),
              SizedBox(width:50)
            ],
          ),),
        )]),
      
    );
  }
}