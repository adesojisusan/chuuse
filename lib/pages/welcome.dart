import 'package:chuuse/custom_widgets/Rounded_Button.dart';
import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[600],
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.only(left: 60, right: 60),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[
                      
                      //This is the start of the chuuse logo on the welcome page
                    Container(
                      width: 180.0,
                      padding: EdgeInsets.only(left: 20, right: 20),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30)),
                      child: Image.asset('assets/images/logo.jpg'),
                    ),
                    //This is the end of the chuuse logo

                    Container(
                        child: SizedBox(
                      height: 250.0,
                    )),
                  ]),
                  Text(
                    'Welcome',
                    style: TextStyle(
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  SizedBox(height: 10.0),
                  Text(
                    'How do you want to proceed?',
                    style: TextStyle(fontSize: 20.0, color: Colors.grey),
                  ),
                  SizedBox(height: 100.0)
                ],
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 4,
                child: RoundedButton(
                  text: 'LOGIN',
                  color: Colors.teal,
                  fontsize: 20.0,
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                'OR',
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
              SizedBox(height: 10.0),
              RoundedButton(
                text: 'CREATE AN ACCOUNT',
                fontsize: 20.0,
                color: Colors.pinkAccent[400],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
