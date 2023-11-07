import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MaterialApp(
    home: GridView5(),
  ));
}

class GridView5 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.custom(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, mainAxisSpacing: 10, crossAxisSpacing: 10),
          childrenDelegate:
              SliverChildBuilderDelegate((context, index) => Stack(
                    children: [
                      Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              image: const DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage(
                                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRT92hWbxc1dgM1TevXYtGb3GtcDsHIy430ow&usqp=CAU"),
                              ))),
                      const Positioned(
                          bottom: 50,
                          left: 30,
                          child: Text(
                            '40\$',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          )),
                      const Positioned(
                        top: 20,
                        right: 20,
                        child: Icon(
                          Icons.favorite_border,
                          color: Colors.white,
                          size: 20,
                        ),
                      )
                    ],
                  ))),
    );
  }
}
