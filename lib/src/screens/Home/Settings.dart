
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../InitialScreen.dart';

class Settings extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 50,
      child:FlatButton(
              child: Text("Log out", style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold),
                ),
              splashColor: Colors.redAccent,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => InitialScreen()),
                  );
                },
      ),
    );


  }
}