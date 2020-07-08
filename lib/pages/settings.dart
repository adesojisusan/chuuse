import 'package:flutter/material.dart';
class Settings extends StatefulWidget {
  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 30, left: 5),
            child: GestureDetector(
              onTap: ()=>Navigator.pop(context),
              child: Icon(Icons.close, size: 30,)),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30, left: 150),
            child: Text('Settings',
              style: TextStyle(
                fontSize:25,fontWeight:FontWeight.w500
              )),
          ),

          Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 400,bottom: 230, left:140),
                child: Container(
                  child: GestureDetector(
                    onTap: (){},
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: Colors.teal,
                          borderRadius: BorderRadius.circular(5)),
                      child: Text(
                        'Sign Out',
                        style: TextStyle(fontSize: 15, color: Colors.white
                      ),
                    ),
                  ),
                ),
                ),
              ),
            ],
          ),

          
        ],
      ),
    );
  }
}