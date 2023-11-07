import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: ClipWidget(),
  ));
}

class ClipWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: [
        ClipRect(
          child: Container(
            child: Align(
              widthFactor: 4,
              heightFactor: .6,
              alignment: Alignment.center,
              child: Image.network(
                  "https://tse4.mm.bing.net/th?id=OIP.bYNGyzPc5JnjWnu4kfQQjgHaE8&pid=Api&P=0&h=180"),
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        ClipRRect(
          borderRadius: BorderRadius.circular(200),
          child: Container(
            child: Image.network(
                "https://images.unsplash.com/photo-1626705343685-eb1e06c9271f?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8c3F1YXJlJTIwaW1hZ2VzfGVufDB8fDB8fHww&auto=format&fit=crop&w=500&q=60"),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        ClipOval(
          child: Image.network(
              "https://images.unsplash.com/photo-1696921881903-e87e5662d9b4?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw0Mnx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60"),
        ),
      ],
    ));
  }
}
