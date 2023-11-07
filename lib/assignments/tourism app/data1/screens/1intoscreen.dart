import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_application_july/assignments/tourism%20app/data1/screens/2login_signup.dart';

void main() {
  runApp(MaterialApp(
    home: IntroScreenState(),
  ));
}

class IntroScreenState extends StatefulWidget {
  @override
  State<IntroScreenState> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreenState> {
  @override
  void initState() {
    Timer(const Duration(seconds: 4), () {
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => Login_Signup()));
    });
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset(
          "assets/images/loggggpng-hq.png",
          width: 300,
          height: 300,
        ),
      ),
    );
  }
}
