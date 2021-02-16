import 'package:flutter/material.dart';
import 'package:mad_project/authservice.dart';

class SignupScreen extends StatefulWidget {
  @override
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final formKey = GlobalKey<FormState>();
  final AuthSerive _auth = AuthSerive();

  String email = '';
  String password = '';
  String cpassword = '';
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
                  child: Column(
                    children: <Widget>[
                      logo(),
                      Container(
                          padding: EdgeInsets.only(
                              top: 10.0, left: 20.0, right: 20.0),
                          child: Column(
                            children: <Widget>[
                              emailField(),
                              SizedBox(height: 10.0),
                              passwordField(),
                              SizedBox(height: 10.0),
                              cpasswordField(),
                              SizedBox(height: 10.0),
                              Text(
                                alert,
                                style: TextStyle(
                                    color: Colors.red,
                                    fontSize: 14.0,
                                    fontFamily: 'Monsterrat'),
                              ),
                              SizedBox(height: 30.0),
                              signupField(),
                              SizedBox(height: 10.0),
                              Container(
                                height: 40.0,
                                color: Colors.transparent,
                                child: Container(
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          color: Colors.black,
                                          style: BorderStyle.solid,
                                          width: 1.0),
                                      color: Colors.transparent,
                                      borderRadius:
                                          BorderRadius.circular(20.0)),
                                  child: InkWell(
                                    onTap: () {
                                      Navigator.of(context).pop();
                                    },
                                    child: Center(
                                      child: Text('Go Back',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontFamily: 'Montserrat')),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          )),
                    ],
                  ),
                ),
              ),
            ]));
  }

  Widget logo() {
    return Container(
      margin: const EdgeInsets.only(top: 25.0),
      height: 230.0,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('images/logo.png'),
          fit: BoxFit.fill,
        ),
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
      validator: (value) => value.isEmpty ? 'Enter an Email' : null,
      onChanged: (value) {
        setState(() => email = value);
        // print(value);
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
      validator: (value) => value.length < 4
          ? 'Password must be at least 4 character or more'
          : null,
      onChanged: (value) {
        setState(() => password = value);
        // print(value);
      },
    );
  }

  Widget cpasswordField() {
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
      validator: (value) => value.length < 4
          ? 'Password must be at least 4 character or more'
          : null,
      onChanged: (value) {
        setState(() => cpassword = value);
        // print(value);
      },
    );
  }

  Widget signupField() {
    return Container(
        height: 40.0,
        child: Material(
          borderRadius: BorderRadius.circular(20.0),
          shadowColor: Colors.lightBlue,
          color: Colors.lightBlue[300],
          elevation: 7.0,
          child: GestureDetector(
            onTap: () async {
              if (formKey.currentState.validate()) {
                dynamic result =
                    await _auth.registerWithEmailAndPassword(email, password);
                if (result == null) {
                  setState(() => alert = 'Please enter a valid email');
                } else {
                  Navigator.of(context).pushNamed('/app');
                }
                // formKey.currentState.save();
                // print('Time to $email and $password and $cpassword to my API');
                // Navigator.of(context).pushNamed('/app');
              }
            },
            child: Center(
              child: Text(
                'SIGNUP',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Montserrat'),
              ),
            ),
          ),
        ));
  }
}
