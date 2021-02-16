import 'package:flutter/material.dart';
import 'package:mad_project/authservice.dart';
import 'package:mad_project/user.dart';
import 'package:mad_project/wrapper.dart';
import 'package:provider/provider.dart';
import 'login.dart';
import 'signup.dart';
import 'app.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamProvider<User>.value(
      value: AuthSerive().user,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Wrapper(),
        // initialRoute: '/login',
        routes: <String, WidgetBuilder>{
          '/login': (BuildContext context) => new LoginScreen(),
          '/signup': (BuildContext context) => new SignupScreen(),
          '/app': (BuildContext context) => new App(),
        },
      ),
    );
  }
}
