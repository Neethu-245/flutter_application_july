import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MaterialApp(
    home: SplashPage(),
  ));
}

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.yellow,
      body: Container(
        decoration: const BoxDecoration(
            // color: Colors.blue,
            //tps://plus.unsplash.com/premium_photo-1686244552710-352141b2599b?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3"))
            gradient: LinearGradient(
                begin: Alignment.bottomRight,
                end: Alignment.topLeft,
                colors: [Colors.green, Colors.white70, Colors.black])),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Icon(
              //   Icons.favorite,
              //   size: 80,
              //   color: Colors.red,
              // ),
              //
              Image(
                image: AssetImage("assets/icons/icon1.png"),
                width: 100,
                height: 100,
              ),
              Text(
                "Hey World",
                style: GoogleFonts.dancingScript(
                  fontSize: 30,
                  color: Colors.red,
                ),
                // style: TextStyle(fontSize: 20, color: Colors.black),
              )
            ],
          ),
        ),
      ),
    );
  }
}
