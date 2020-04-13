
import 'package:flutter/material.dart';
import 'package:cocada/shared/widgets/bg_animation/bg_animation.dart';
import 'package:cocada/screens/login/main_login.dart';

class MyHomePage extends StatefulWidget {
  final Function changePage;

  MyHomePage({Key key, this.title,this.changePage}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      backgroundColor: new Color.fromRGBO(50, 223, 215, 1),

      body: SafeArea(
        child: Stack(
          children: <Widget>[
            bgAnimatedPage(),
            Positioned.fill(
                child: Row (
                  children: <Widget>[
                  //  Expanded(flex: 1, child: Image.asset("assets/imgs/logo/app_logo.png")),
                  Expanded(child: Login(changePage: widget.changePage))
                  ],
                ),
            ),
           
          ],
        ),
       
      
      ),

    );
  }
}
