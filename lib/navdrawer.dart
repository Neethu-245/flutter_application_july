import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: DraweEx(),
  ));
}

class DraweEx extends StatelessWidget {
  const DraweEx({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MY DRAWER'),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(
                          "assets/images/photo-1605559911160-a3d95d213904.jpg"))),
              accountName: Text('neethu'),
              accountEmail: Text('neethu3@gmail.com'),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage("assets/images/child.jpeg"),
              ),
              otherAccountsPictures: [
                CircleAvatar(
                  backgroundImage: AssetImage("assets/icons/icon1.png"),
                ),
              ],
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
            ),
            ListTile(
              leading: Icon(Icons.favorite_border),
              title: Text('Favorite'),
            ),
            ListTile(
              leading: Icon(Icons.work_history_rounded),
              title: Text('Workflow'),
            ),
            ListTile(
              leading: Icon(Icons.park_rounded),
              title: Text('Notifications'),
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
            )
          ],
        ),
      ),
    );
  }
}
