import 'package:flutter/material.dart';

class Hive_Reg extends StatelessWidget {
  final name_controller = TextEditingController();
  final email_controller = TextEditingController();
  final pwd_controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Registration Page"),
      ),
      body: Center(
        child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Registration Page"),
                SizedBox(
                  height: 15,
                ),
                TextField(
                  controller: name_controller,
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(), hintText: "Name"),
                ),
                const SizedBox(
                  height: 15,
                ),
                TextField(
                  controller: email_controller,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                  ),
                )
              ],
            )),
      ),
    );
  }
}
