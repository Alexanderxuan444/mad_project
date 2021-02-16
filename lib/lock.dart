import 'package:flutter/material.dart';
import 'unlock.dart';

class LockScreen extends StatefulWidget {
  @override
  _LockScreen createState() => _LockScreen();
}

class _LockScreen extends State<LockScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  shape: CircleBorder(), primary: Colors.red),
              child: Container(
                width: 500,
                height: 200,
                alignment: Alignment.center,
                decoration: BoxDecoration(shape: BoxShape.circle),
                child: Icon(
                  Icons.lock_outline,
                  size: 150,
                ),
              ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => UnlockScreen()));
              },
            ),
          ]),
    );
  }
}
