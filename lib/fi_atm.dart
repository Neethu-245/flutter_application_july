import 'dart:math';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

void main() {
  runApp(MaterialApp(
    home: fi(),
  ));
}

class fi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Stack(children: [
        Container(
          height: 250,
          width: 400,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(30.0)),
              color: Colors.teal),
        ),
        Positioned(
            top: 80,
            left: 30,
            child: Row(
              children: [
                Transform.rotate(
                    angle: 90 * pi / 180,
                    child:
                        FaIcon(FontAwesomeIcons.simCard, color: Colors.grey)),
                Transform.rotate(
                    angle: 90 * pi / 180,
                    child: FaIcon(
                      FontAwesomeIcons.wifi,
                      color: Colors.grey,
                    ))
              ],
            )),
        Positioned(
            top: 190,
            left: 20,
            child: Text(
              'Neethu S',
              style: GoogleFonts.fahkwang(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                  color: Colors.white),
            )),
        Positioned(
            top: 190,
            right: 20,
            child: Text(
              'VISA',
              style: GoogleFonts.fahkwang(
                  fontWeight: FontWeight.bold,
                  fontSize: 28,
                  color: Colors.white),
            )),
        Positioned(
          top: 10,
          right: 20,
          child: GradientText(
            'Fi',
            style:
                GoogleFonts.fahkwang(fontWeight: FontWeight.bold, fontSize: 28),
            //                gradient: LinearGradient(colors:[Colors.redAccent ,Colors.yellow]),
            colors: [Colors.black38, Colors.white, Colors.black26],
            stops: [0, 3, 1],
          ),
        )
      ]),
    ));
  }
}
