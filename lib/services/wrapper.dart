import 'package:cocada/pages/dashboard/HomeController.dart';
import 'package:cocada/models/user.dart';
import 'package:cocada/pages/home/home.dart';
import 'package:cocada/pages/login/authenticate.dart';
import 'package:cocada/pages/login/register.dart';
import 'package:flutter/material.dart';
import 'package:cocada/pages/login/sign-in.dart';
import 'package:provider/provider.dart';
import 'package:cocada/pages/dashboard/dashboard.dart';

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


// class Wrapper extends StatefulWidget {
//   @override
//   _WrapperState createState() => _WrapperState();
// }

// class _WrapperState extends State<Wrapper> {
//   bool showSignIn = true; 

//   void toggleView() {
    
//       setState(() => showSignIn = !showSignIn);
//   }

//   @override
//   Widget build(BuildContext context) {
//     final user = Provider.of<User> (context); 

    
//     print (user); 

//     if(showSignIn){
//       return SignIn(toggleView:toggleView); 
//     }
//     else{
//       return Register(toggleView:toggleView);

//     }
//     // return SignIn(); 
//     // return Register();

//   }
// }