import 'package:chuuse/custom_widgets/Rounded_Button.dart';
import 'package:chuuse/custom_widgets/input_field.dart';
import 'package:chuuse/custom_widgets/password_field.dart';
import 'package:chuuse/pages/navbar.dart';
import 'package:chuuse/pages/signup_page.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: BoxDecoration(color: Colors.white),
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 30, top: 200, right: 200),
            child: Image.asset('assets/images/logo.jpg'),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 45),
            child: InputField(
              hintText: 'username/email',
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 0,
            ),
            child: PasswordField(),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 2, left: 40, right: 38),
            child: RoundedButton(
              press:()=>Navigator.push(context, MaterialPageRoute(builder: (_)=>MyHomePage())),
              text: 'LOGIN',
              color: Colors.teal,
            ),
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.only(left: 200),
            child: Text('Forgot password?',
                style: TextStyle(
                    fontWeight: FontWeight.w600, color: Colors.black)),
          ),
          SizedBox(height: 40),
          Stack(
            children: <Widget>[
               Text('Don\'t have and account?',
                    style: TextStyle(
                        fontWeight: FontWeight.w600, color: Colors.black)),
              Padding(
                padding: const EdgeInsets.only(left: 160),
                child: GestureDetector(
                  onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (_)=>SignUpPage())),
                  child: Text(
                    'Sign up here',
                    style: TextStyle(
                        fontWeight: FontWeight.w600, color: Colors.teal),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    ));
  }
}
