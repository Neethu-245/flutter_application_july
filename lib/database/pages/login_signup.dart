import 'package:flutter/material.dart';
import 'login.dart';
import 'signup.dart';

class Login_Signup extends StatefulWidget {
  const Login_Signup({Key? key}) : super(key: key);

  @override
  State<Login_Signup> createState() => _Login_SignupState();
}

class _Login_SignupState extends State<Login_Signup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 80.0),
              child: Text(
                "Welcome Back",
                style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(25.0),
              child: Text(
                "To keep connect with us please login with your personal info",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.blue),
              ),
            ),
            Image.network(
                'https://tse2.mm.bing.net/th?id=OIP.E92-Ma5NZzmoDhcbO7YxzgHaE8&pid=Api&P=0&h=180'),
            Padding(
              padding: const EdgeInsets.only(top: 50.0),
              child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(Colors.blueAccent),
                    minimumSize: MaterialStateProperty.all(Size(330, 50)),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Login_Form()));
                  },
                  child: Text(
                    "Login",
                    style: TextStyle(color: Colors.white),
                  )),
            ),
            SizedBox(
              height: 30,
            ),
            ElevatedButton(
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(Colors.blueAccent),
                    minimumSize: MaterialStateProperty.all(Size(330, 50)),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ))),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Signup_Form()));
                },
                child: Text(
                  "Sign Up",
                  style: TextStyle(color: Colors.white),
                )),
          ],
        ),
      ),
    );
  }
}
