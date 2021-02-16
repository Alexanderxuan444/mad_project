import 'package:flutter/material.dart';
import 'package:mad_project/about.dart';
import 'drawer.dart';
import 'profile.dart';
import 'lock.dart';
import 'about.dart';
import 'reset.dart';

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  String title = 'Home';
  int index = 0;
  List<Widget> list = [LockScreen(), Profile(), PinCode(), About()];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(title),
          centerTitle: true,
          backgroundColor: Colors.grey[850],
        ),
        body: list[index],
        drawer: MyDrawer(onTap: (context, i, txt) {
          setState(() {
            index = i;
            title = txt;
            Navigator.pop(context);
          });
        }),
      ),
    );
  }
}
