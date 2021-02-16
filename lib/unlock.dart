import 'package:flutter/material.dart';
import 'package:mad_project/app.dart';
import 'lock.dart';

class UnlockScreen extends StatefulWidget {
  @override
  _UnlockScreenState createState() => _UnlockScreenState();
}

class _UnlockScreenState extends State<UnlockScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  shape: CircleBorder(), primary: Colors.lightGreenAccent),
              child: Container(
                width: 200,
                height: 200,
                alignment: Alignment.center,
                decoration: BoxDecoration(shape: BoxShape.circle),
                child: Icon(
                  Icons.lock_open_outlined,
                  size: 150,
                ),
              ),
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => App()));
              },
            ),
            // Text('The Door is Unlock'),
          ]),
    );
  }
}
