
import 'package:cocada/screens/login/BgA-Login-wrapper.dart';
import 'package:cocada/screens/login/Register.dart';
import 'package:cocada/screens/login/sign-in.dart';
import 'package:flutter/material.dart';

class Authenticate extends StatefulWidget {
  @override
  _AuthenticateState createState() => _AuthenticateState();
}

class _AuthenticateState extends State<Authenticate> {

  bool showSignIn = true;
  int page = 0; 

  void changePage(int number){
    //print(showSignIn.toString());
    setState(() => page = number);
  }

  void toggleView(){
    //print(showSignIn.toString());
    setState(() => showSignIn = !showSignIn);
  }

  @override
  Widget build(BuildContext context) {
    // principal
    if(page ==0)
    {
      return MyHomePage(changePage: changePage);
    }
    else if (page == 1)
    {
       return SignIn(changePage:  changePage);
    }
    else{
      return Register(changePage:  changePage);
    }

    // if (showSignIn) {
    //   return SignIn(toggleView:  toggleView);
    // } else {
    //   return Register(toggleView:  toggleView);
    // }
  }
}