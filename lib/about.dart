import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(30.0, 30.0, 30.0, 0.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Center(
            child: CircleAvatar(
              backgroundImage: AssetImage('images/logo.png'),
              radius: 50.0,
            ),
          ),
          SizedBox(height: 10.0),
          Text(
            'SMART LINKZ',
            style: TextStyle(
              fontSize: 16,
              fontFamily: 'Monsterrat',
              fontWeight: FontWeight.bold,
              letterSpacing: 2.0,
            ),
          ),
          Divider(
            height: 40.0,
            color: Colors.grey[900],
          ),
          Text(
            'COMPANY',
            style: TextStyle(
              letterSpacing: 2.0,
              fontWeight: FontWeight.bold,
              fontFamily: 'Monsterrat',
              fontSize: 15,
            ),
          ),
          SizedBox(height: 10.0),
          Text(
            'We are a company that help to build a smart nation through using our application.',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.orangeAccent[200],
              letterSpacing: 2.0,
              fontFamily: 'Monsterrat',
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 40.0),
          Text(
            'OUR MISSION',
            style: TextStyle(
              letterSpacing: 2.0,
              fontWeight: FontWeight.bold,
              fontFamily: 'Monsterrat',
              fontSize: 15,
            ),
          ),
          SizedBox(height: 10.0),
          Text(
            'Help user to access their house with using our application on their smart phone, and do not have to worry about losing their house keys anymore.',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.orangeAccent[200],
              letterSpacing: 2.0,
              fontFamily: 'Monsterrat',
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 40.0),
          Text(
            'CONTACT US',
            style: TextStyle(
              letterSpacing: 2.0,
              fontWeight: FontWeight.bold,
              fontFamily: 'Monsterrat',
              fontSize: 15,
            ),
          ),
          SizedBox(height: 10.0),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
            Icon(Icons.phone),
            SizedBox(width: 10.0),
            Text(
              '+65 1234 5678',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.orangeAccent[200],
                fontSize: 15,
                fontFamily: 'Monsterrat',
                fontWeight: FontWeight.bold,
                letterSpacing: 2.0,
              ),
            ),
          ]),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
            Icon(Icons.email),
            SizedBox(width: 10.0),
            Text(
              '194606U@mymail.nyp.edu.sg',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.orangeAccent[200],
                fontSize: 15,
                fontFamily: 'Monsterrat',
                fontWeight: FontWeight.bold,
                letterSpacing: 2.0,
              ),
            ),
          ]),
        ],
      ),
    );
  }
}
