import 'package:chuuse/custom_widgets/custom_input/custom_input_field.dart';
import 'package:chuuse/custom_widgets/rectangle_button.dart';
import 'package:flutter/material.dart';

class OrganizationSignUp extends StatefulWidget {
  @override
  _OrganizationSignUpState createState() => _OrganizationSignUpState();
}

class _OrganizationSignUpState extends State<OrganizationSignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(color: Colors.white),
          child: Column(
            children: <Widget>[
              Stack(
                children: <Widget>[
                  IconButton(
                      onPressed: ()=>Navigator.pop(context),
                      icon: Icon(
                        Icons.keyboard_arrow_left,
                        size: 45,
                      )),

                  Padding(
                      padding: EdgeInsets.only(top: 60, left: 120, right: 120),
                      child: Image.asset('assets/images/logo.jpg')),
                  Padding(
                    padding: const EdgeInsets.only(top: 120, left: 120),
                    child: Text('Enter your organization URL',
                        style: TextStyle(fontWeight: FontWeight.w500)),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(top: 150),
                    child: CustomInputField(
                      hintText: '(ex:company.com or company.org',
                    ),
                  ),

                  
                  //this is the 'create account button'
                  Padding(
                      padding:
                          const EdgeInsets.only(top: 225, left: 45, right: 42),
                      child: RectangleButton(
                        text: 'Continue',
                        color: Colors.teal,
                        fontsize: 19,
                      ) //end of ''create account button
                      ),
                  
            ],
          ),
            ]
        ),
      ),),
    );
  }
}