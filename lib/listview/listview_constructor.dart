import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(primarySwatch: Colors.teal),
    home: ListView1(),
  ));
}

class ListView1 extends StatelessWidget {
  const ListView1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("WhatsApp"),
        ),
        body: ListView(
          children: [
            Card(
                child: ListTile(
              leading: Icon(Icons.people_alt_rounded),
              title: Text('product 1'),
              subtitle: Text("This is sample"),
            )),
            Card(
                child: ListTile(
              leading: CircleAvatar(
                  backgroundImage: AssetImage("assets/images/child.jpeg")),
              title: Text('product 2'),
              subtitle: Text("Hi"),
              trailing: Text('10.00'),
            )),
            Card(
                child: ListTile(
              leading: Icon(Icons.people_alt_rounded),
              title: Text('product 3'),
              subtitle: Text("How are you?"),
              trailing: Text('9.15'),
            )),
            Card(
                child: ListTile(
                    leading: CircleAvatar(
                        backgroundImage: AssetImage(
                            "assets/images/photo-1605559911160-a3d95d213904.jpg")),
                    title: Text('Abhishek'),
                    subtitle: Text("Hello"),
                    trailing: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text('10.58'),
                        CircleAvatar(
                          minRadius: 6,
                          maxRadius: 12,
                          backgroundColor: Colors.green,
                          child: Text('2'),
                        )
                      ],
                    ))),
          ],
        ));
  }
}
