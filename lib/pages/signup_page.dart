import 'package:chuuse/custom_widgets/custom_input/custom_input_field.dart';
import 'package:chuuse/custom_widgets/input_field.dart';
import 'package:chuuse/custom_widgets/password_field.dart';
import 'package:chuuse/custom_widgets/rectangle_button.dart';
import 'package:chuuse/pages/organisation_signup_page.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
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
                    padding: const EdgeInsets.only(top: 120, left: 145),
                    child: Text('Create an account',
                        style: TextStyle(fontWeight: FontWeight.w500)),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(top: 150),
                    child: CustomInputField(
                      hintText: 'Full name (Required)',
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(top: 205),
                    child: CustomInputField(
                      hintText: 'Email (Required)',
                    ),
                  ),

                  Padding(
                      padding: const EdgeInsets.only(top: 260, left: 42),
                      child: PasswordField()),
                  //this is the 'create account button'
                  Padding(
                      padding:
                          const EdgeInsets.only(top: 350, left: 42, right: 42),
                      child: RectangleButton(
                        text: 'Create an account',
                        color: Colors.teal,
                        fontsize: 19,
                      ) //end of ''create account button
                      ),
                  Stack(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 40, right: 230, top: 405),
                        child: Divider(
                          height: 10,
                          thickness: 0.5,
                          color: Colors.black,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 200, top: 400),
                        child: Text(
                          'or',
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w500),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 230, right: 40, top: 405),
                        child: Divider(
                          height: 10,
                          thickness: 0.5,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 115, top: 480),
                    child: GestureDetector(
                        onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (_)=>OrganizationSignUp())),
                        child: Text(
                          'Sign up with your organization',
                          style: TextStyle(color: Colors.teal),
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 500, left: 80),
                    child: Text('By signing up to create an account i accept',
                        style: TextStyle(fontWeight: FontWeight.w500)),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 520, left: 180),
                    child: Text(
                      'Chuuse\'s',
                      style: TextStyle(fontWeight: FontWeight.w500),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 560, left: 100),
                    child: Text(
                      'Terms of Service',
                      style: TextStyle(color: Colors.teal),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 560, left: 210),
                    child: Text('and'),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 560, left: 240),
                    child: GestureDetector(
                        onTap: () {},
                        child: Text('Honor Code',
                            style: TextStyle(color: Colors.teal))),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
