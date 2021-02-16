import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Center(
            child: CircleAvatar(
              backgroundImage: AssetImage('images/spider.jpg'),
              radius: 40.0,
            ),
          ),
          Divider(
            height: 80.0,
            color: Colors.grey[900],
          ),
          Text(
            'NAME',
            style: TextStyle(
              fontSize: 14,
              fontFamily: 'Monsterrat',
              fontWeight: FontWeight.bold,
              letterSpacing: 2.0,
            ),
          ),
          SizedBox(height: 10.0),
          Row(children: <Widget>[
            Icon(Icons.person),
            SizedBox(width: 10.0),
            Text(
              'Tom Holland',
              style: TextStyle(
                color: Colors.orangeAccent[200],
                fontSize: 22,
                fontFamily: 'Monsterrat',
                fontWeight: FontWeight.bold,
                letterSpacing: 2.0,
              ),
            ),
          ]),
          SizedBox(
            height: 30.0,
          ),
          Text(
            'Email',
            style: TextStyle(
              fontSize: 14,
              fontFamily: 'Monsterrat',
              fontWeight: FontWeight.bold,
              letterSpacing: 2.0,
            ),
          ),
          SizedBox(height: 10.0),
          Row(
            children: <Widget>[
              Icon(Icons.email),
              SizedBox(width: 10.0),
              Text(
                'Tom-Holland@gmail.com',
                style: TextStyle(
                    color: Colors.orangeAccent[200],
                    fontSize: 22.0,
                    fontFamily: 'Monsterrat',
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2.0),
              ),
            ],
          ),
          SizedBox(height: 30.0),
          Text(
            'Password',
            style: TextStyle(
              fontSize: 14,
              fontFamily: 'Monsterrat',
              fontWeight: FontWeight.bold,
              letterSpacing: 2.0,
            ),
          ),
          SizedBox(height: 10.0),
          Row(
            children: <Widget>[
              Icon(Icons.lock),
              SizedBox(width: 10.0),
              Text(
                '*******asqwj',
                style: TextStyle(
                    color: Colors.orangeAccent[200],
                    fontSize: 22.0,
                    fontFamily: 'Monsterrat',
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2.0),
              ),
            ],
          )
        ],
      ),
    );
  }
}
