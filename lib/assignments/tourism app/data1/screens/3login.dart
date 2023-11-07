import 'package:flutter/material.dart';
import 'package:flutter_application_july/assignments/tourism%20app/data1/screens/4signup.dart';

void main() {
  runApp(MaterialApp(
    home: Tour_Signin(),
  ));
}

class Tour_Signin extends StatefulWidget {
  const Tour_Signin({super.key});

  @override
  State<Tour_Signin> createState() => _Tour_SigninState();
}

class _Tour_SigninState extends State<Tour_Signin> {
  final formkey = GlobalKey<FormState>();
  String? pass;
  bool passwordhidden = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                  //height: 100,
                  ),
              Container(
                height: 250,
                width: 250,
                child: Image.asset('assets/images/loggggpng-hq.png'),
              ),
              Padding(
                padding: const EdgeInsets.all(40.0),
                child: Text(
                  'Login',
                  style: TextStyle(fontSize: 55, fontWeight: FontWeight.bold),
                ),
              ),
              Text('Welcome back! Login with your credentials'),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: TextFormField(
                  decoration: InputDecoration(
                      labelText: 'Email ID',
                      helperText: 'Field must not be empty',
                      prefixIcon: Icon(Icons.person),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15))),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
                child: TextFormField(
                  decoration: InputDecoration(
                      suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              if (passwordhidden == true) {
                                passwordhidden = false;
                              } else {
                                passwordhidden = true;
                              }
                            });
                          },
                          icon: passwordhidden == true
                              ? Icon(Icons.visibility_off)
                              : Icon(Icons.visibility)),
                      prefixIcon: Icon(Icons.visibility_off_sharp),
                      labelText: 'Password',
                      helperText: 'Password must contain atleast 6 characters',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15))),
                  validator: (passvalidator) {
                    pass = passvalidator;
                    if (passvalidator!.isEmpty || passvalidator.length < 6) {
                      return 'password must contain atleast 6 characters';
                    } else {
                      return null;
                    }
                  },
                  obscureText: passwordhidden,
                  obscuringCharacter: '*',
                ),
              ),
              Container(
                height: 60,
                width: 1000,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed('home');
                  },
                  child: Text('Login'),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(45))),
                ),
              ),
              TextButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => Tour_Sign_up()));
                  },
                  child: Text('New User? SignUp'))
            ],
          ),
        ),
      ),
    );
  }
}
