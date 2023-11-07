import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Gridview1(),
  ));
}

class Gridview1 extends StatelessWidget {
  var ico = [
    Icons.heart_broken,
    Icons.ring_volume,
    Icons.camera_alt_outlined,
    Icons.airplane_ticket,
    Icons.wifi,
    Icons.phone,
    Icons.message,
    Icons.sim_card
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: GridView.builder(
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
      itemCount: 8,
      itemBuilder: (context, index) {
        return Padding(
          padding:
              const EdgeInsets.only(left: 20, right: 20, top: 15, bottom: 15),
          child: Card(
            elevation: 9.0,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(45)),
            color: Colors.primaries[index % Colors.primaries.length],
            child: Column(
              children: [
                Icon(
                  ico[index],
                  size: 60,
                  color: Colors.black38,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Heart Shaker',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.black45),
                )
              ],
            ),
          ),
        );
      },
    ));
  }
}
