import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Profile_ui2(),
  ));
}

class Profile_ui2 extends StatelessWidget {
  const Profile_ui2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: Drawer(
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 5.0),
                  child: Icon(Icons.arrow_back),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 250.0),
                  child: Icon(Icons.menu),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 35),
              child: CircleAvatar(
                radius: 60,
                backgroundImage:
                    AssetImage('assets/istockphoto-1460124878-170667a.webp'),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 10, left: 50),
                  child: FaIcon(
                    Icons.facebook,
                    color: Colors.blue,
                    size: 40,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: FaIcon(
                    FontAwesomeIcons.twitter,
                    color: Colors.blue,
                    size: 40,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 10.0),
                  child: FaIcon(
                    FontAwesomeIcons.linkedin,
                    color: Colors.blue,
                    size: 40,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 10.0),
                  child: FaIcon(
                    FontAwesomeIcons.github,
                    size: 40,
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Text(
                'Robert Downey jr.',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text('@rdj3000'),
            ),
            Text(
              'You know who i am',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(
              height: 60,
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      height: 50,
                      width: 290,
                      decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(45)),
                      child: ListTile(
                        leading: Icon(Icons.privacy_tip_outlined),
                        title: Text('Privacy'),
                        trailing: Icon(Icons.arrow_forward_ios_sharp),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0),
                      child: Container(
                        height: 50,
                        width: 290,
                        decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(45)),
                        child: ListTile(
                          leading: Icon(Icons.history),
                          title: Text('Purchase history'),
                          trailing: Icon(Icons.arrow_forward_ios_sharp),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0),
                      child: Container(
                        height: 50,
                        width: 290,
                        decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(45)),
                        child: ListTile(
                          leading: Icon(Icons.help),
                          title: Text('Help'),
                          trailing: Icon(Icons.arrow_forward_ios_sharp),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0),
                      child: Container(
                        height: 50,
                        width: 290,
                        decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(45)),
                        child: ListTile(
                          leading: Icon(Icons.settings),
                          title: Text('Settings'),
                          trailing: Icon(Icons.arrow_forward_ios_sharp),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0),
                      child: Container(
                        height: 50,
                        width: 290,
                        decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(45)),
                        child: ListTile(
                          leading: Icon(Icons.add_reaction_outlined),
                          title: Text('Invite friends'),
                          trailing: Icon(Icons.arrow_forward_ios_sharp),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0),
                      child: Container(
                        height: 50,
                        width: 290,
                        decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(45)),
                        child: ListTile(
                          leading: Icon(Icons.logout),
                          title: Text('Log out'),
                          trailing: Icon(Icons.arrow_forward_ios_sharp),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
