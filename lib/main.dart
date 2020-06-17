import 'package:chuuse/pages/explorePage.dart';
import 'package:chuuse/pages/learn_page.dart';
import 'package:chuuse/pages/navbar.dart';
import 'package:chuuse/pages/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(ChuuseApp());
}

class ChuuseApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(),
      home: MyHomePage(),
    );
  }
}


