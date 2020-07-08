import 'package:chuuse/custom_widgets/rectangle_button.dart';
import 'package:chuuse/pages/explorePage.dart';
import 'package:chuuse/pages/settings.dart';
import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
          Column(
            children: <Widget>[ 
              //this is the 'settings' icon
                    Padding(
                      padding: EdgeInsets.only(left: 350,top:40),
                      child: GestureDetector(
                        onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (_)=>Settings())),
                        child: Icon(Icons.settings, color: Colors.black, size: 30,))),
                    Padding(
                      padding: const EdgeInsets.only(top: 50),
                      child: CircleAvatar(
                        backgroundColor: Colors.black,
                        radius: 60,
                        child: Icon(Icons.person,color:Colors.grey[100],size:100),
                      ),
                    ),


              Padding(
                padding: const EdgeInsets.only(top:20),
                child: Text(
                  'Olufunbi Babalola',
                  style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(top:20),
                child: Icon(Icons.chrome_reader_mode,size: 150,),
              ),

              Padding(
                padding: const EdgeInsets.only(left: 70),
                child: Row(
                  children: <Widget>[
                    Text('There are no completed courses to show \n yet. Get started by exploring our courses',
                    style: TextStyle(fontWeight:FontWeight.w500),),
                  ],
                ),
              ),

              Text('in the Explore tab.',
              style: TextStyle(fontWeight:FontWeight.w500)),
              //this is the 'find something to learn'button
              Padding(
                padding: const EdgeInsets.only(left: 50, right: 50, top: 50),
                child: GestureDetector(
                  onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (_)=>ExplorePage())),
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: Colors.teal,
                        borderRadius: BorderRadius.circular(5)),
                    child: Text(
                      'find something to learn',
                      style: TextStyle(fontSize: 15, color: Colors.white
                    ),
                  ),
                ),
              ))
            ],
          ),
    );
  }
}
