import 'package:cocada/screens/dashboard/HomeController.dart';
import 'package:cocada/models/user.dart';
import 'package:cocada/screens/login/authenticate.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final user = Provider.of<User>(context);
    print(user);
    
    // return either the Home or Authenticate widget
    if (user == null){
      return Authenticate();
    } else {
      return HomeController();
    }
    
  }
}