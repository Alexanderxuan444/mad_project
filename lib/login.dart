import 'package:flutter/material.dart';
import 'package:mad_project/authservice.dart';
import 'validate.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> with Validation {
  final formKey = GlobalKey<FormState>();
  final AuthSerive _auth = AuthSerive();

  String email = '';
  String password = '';
  String alert = '';

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        resizeToAvoidBottomPadding: false,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              child: Form(
                key: formKey,
                child: Column(children: <Widget>[
                  logo(),
                  Container(
                      padding:
                          EdgeInsets.only(top: 35.0, left: 20.0, right: 20.0),
                      child: Column(
                        children: <Widget>[
                          emailField(),
                          SizedBox(height: 20.0),
                          passwordField(),
                          SizedBox(height: 5.0),
                          forgotField(),
                          SizedBox(height: 20.0),
                          Text(
                            alert,
                            style: TextStyle(
                                color: Colors.red,
                                fontSize: 14.0,
                                fontFamily: 'Monsterrat'),
                          ),
                          SizedBox(height: 20.0),
                          loginField(),
                        ],
                      )),
                  SizedBox(height: 60.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'New to Smart Linkz ?',
                        style: TextStyle(fontFamily: 'Montserrat'),
                      ),
                      SizedBox(width: 5.0),
                      InkWell(
                        onTap: () {
                          Navigator.of(context).pushNamed('/signup');
                        },
                        child: Text(
                          'Register',
                          style: TextStyle(
                              color: Colors.lightBlue[300],
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.underline),
                        ),
                      )
                    ],
                  )
                ]),
              ),
            ),
          ],
        ));
  }

  Widget logo() {
    return Container(
      child: Stack(
        children: <Widget>[
          Container(
            margin: const EdgeInsets.only(top: 25.0),
            height: 230.0,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/logo.png'),
                fit: BoxFit.fill,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget emailField() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
          labelText: 'EMAIL',
          labelStyle: TextStyle(
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.bold,
              color: Colors.grey[500]),
          focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.lightBlue[300]))),
      validator: validateEmail,
      onChanged: (value) {
        setState(() => email = value);
      },
    );
  }

  Widget passwordField() {
    return TextFormField(
      decoration: InputDecoration(
          labelText: 'PASSWORD',
          labelStyle: TextStyle(
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.bold,
              color: Colors.grey[500]),
          focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.lightBlue[300]))),
      obscureText: true,
      validator: validatePassword,
      onChanged: (value) {
        setState(() => password = value);
      },
    );
  }

  Widget forgotField() {
    return Container(
      alignment: Alignment(1.0, 0.0),
      padding: EdgeInsets.only(top: 15.0, left: 20.0),
      child: InkWell(
        child: Text(
          'Forgot Password',
          style: TextStyle(
              color: Colors.grey[800],
              fontWeight: FontWeight.bold,
              fontFamily: 'Montserrat',
              decoration: TextDecoration.underline),
        ),
      ),
    );
  }

  Widget loginField() {
    return Container(
      height: 40.0,
      child: Material(
        borderRadius: BorderRadius.circular(20.0),
        shadowColor: Colors.lightBlue[300],
        color: Colors.lightBlue[300],
        elevation: 7.0,
        child: GestureDetector(
          onTap: () async {
            if (formKey.currentState.validate()) {
              dynamic result =
                  await _auth.loginWithEmailAndPassword(email, password);
              if (result == null) {
                setState(() => alert = 'Email or Password is wrong');
              }
            }
          },
          child: Center(
            child: Text(
              'LOGIN',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Montserrat'),
            ),
          ),
        ),
      ),
    );
  }
}
