import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

void main() {
  runApp(MaterialApp(
    home: SimpleAnimation(),
  ));
}

class SimpleAnimation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
          child: RiveAnimation.network(
              'https://rive.app/community/5997-11672-kitty-test-mouse-follow/embed')),
    );
  }
}
