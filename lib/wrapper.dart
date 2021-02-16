import 'package:flutter/material.dart';
import 'package:mad_project/app.dart';
import 'package:mad_project/auth.dart';
import 'package:provider/provider.dart';
import 'package:mad_project/user.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<User>(context);
    print(user);
    // either home or authenticate page
    if (user == null) {
      return Authenticate();
    } else {
      return App();
    }
  }
}
