import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Countries(),
    debugShowCheckedModeBanner: false,
  ));
}

class Countries extends StatelessWidget {
  var names = ['Canada', 'France', 'London', 'NewYork', 'Russia'];

  var pics = [
    'assets/images/canada.jpeg',
    'assets/images/eifell.jpeg',
    'assets/images/london.jpeg',
    'assets/images/new york.jpeg',
    'assets/images/russia.jpeg'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gridview'),
        centerTitle: true,
        leading: Icon(Icons.arrow_back),
      ),
      body: GridView.builder(
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          itemCount: 5,
          itemBuilder: (ctx, intex) {
            return Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        image: DecorationImage(
                            image: AssetImage(pics[intex]), fit: BoxFit.cover)),
                  ),
                ),
                Positioned(
                    bottom: 20,
                    right: 140,
                    child: Container(
                      child: Text(
                        names[intex],
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 40,
                            shadows: [
                              Shadow(
                                  color: Colors.black26,
                                  offset: Offset(3, 3),
                                  blurRadius: 10)
                            ]),
                      ),
                    ))
              ],
            );
          }),
    );
  }
}
