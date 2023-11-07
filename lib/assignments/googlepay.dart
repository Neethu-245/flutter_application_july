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
      backgroundColor: Colors.black87,
      body: Container(
        child: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            const Image(
              image: NetworkImage(
                  "https://static1.xdaimages.com/wordpress/wp-content/uploads/2020/12/Google-Pay-dark-theme-featured.jpg"),
              width: 400,
              height: 400,
            ),
            Text(
              "Google",
              style: GoogleFonts.roboto(
                fontSize: 30,
                color: Colors.white,
              ),
            )
          ]),
        ),
      ),
    );
  }
}
