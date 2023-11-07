import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Login_Signup(),
  ));
}

class Login_Signup extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/loggggpng-hq.png',
              width: 300,
              height: 300,
            ),
            SizedBox(
              height: 20,
            ),
            MaterialButton(
              onPressed: () {},
              color: Colors.blue,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)),
              child: ListTile(
                title: Text('Login Here'),
                trailing: Icon(Icons.people_alt_outlined),
              ),
            ),
            MaterialButton(
              onPressed: () {},
              color: Colors.blue,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 70.0, vertical: 5),
                child: ListTile(
                  title: Text('Register Here'),
                  trailing: Icon(Icons.person_add_alt_1_outlined),
                ),
              ),
            ),
            MaterialButton(
              onPressed: () {},
              color: Colors.blueAccent,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 70.0, vertical: 5),
                child: ListTile(
                  title: Text('Login with FaceBook'),
                  trailing: Icon(Icons.facebook),
                ),
              ),
            ),
            MaterialButton(
              onPressed: () {},
              color: Colors.blueAccent,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 70.0, vertical: 5),
                child: ListTile(
                  title: Text('Login with Google'),
                  trailing: Icon(Icons.facebook),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
