import 'package:flutter/material.dart';
import 'package:mad_project/authservice.dart';
import 'package:mad_project/main.dart';

class MyDrawer extends StatelessWidget {
  final AuthSerive _auth = AuthSerive();
  final Function onTap;
  MyDrawer({this.onTap});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.8,
      child: Drawer(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.grey[850]),
              child: Padding(
                padding: EdgeInsets.all(6),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Container(
                      width: 60,
                      height: 60,
                      child: CircleAvatar(
                        backgroundImage: AssetImage('images/spider.jpg'),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      'Spider Man',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Text(
                      'spider_man@nyp.edu.sg',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
              onTap: () => onTap(context, 0, 'Home'),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('Profle'),
              onTap: () => onTap(context, 1, 'Profile'),
            ),
            ListTile(
              leading: Icon(Icons.fiber_pin),
              title: Text('Reset Pin Code'),
              onTap: () => onTap(context, 2, 'Reset Pin Code'),
            ),
            ListTile(
              leading: Icon(Icons.info),
              title: Text('About Us'),
              onTap: () => onTap(context, 3, 'About Us'),
            ),
            ListTile(
              leading: Icon(Icons.exit_to_app),
              title: Text('Logout'),
              onTap: () async {
                await _auth.signout();
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(builder: (context) => MyApp()),
                // );
              },
            ),
          ],
        ),
      ),
    );
  }
}
