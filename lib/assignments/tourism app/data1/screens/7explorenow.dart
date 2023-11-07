import 'package:flutter/material.dart';
import '../dummy data.dart';

void main() {
  runApp(MaterialApp(
    home: Tour_Explore(),
  ));
}

class Tour_Explore extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var id = ModalRoute.of(context)?.settings.arguments;
    var detail = details.firstWhere((detail) => detail['Id'] == id);

    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                              'https://tse3.mm.bing.net/th?id=OIP.plHc3Rb9kUZ4GIBA4zJQCgHaLr&pid=Api&P=0&h=180'))))
            ],
          )
        ],
      ),
    );
  }
}
