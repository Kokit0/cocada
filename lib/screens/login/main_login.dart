import 'package:flutter/material.dart';
import 'clipper.dart';



class Login extends StatefulWidget {
  final Function changePage;
  Login({this.changePage});

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login>  with TickerProviderStateMixin{
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();





  @override
  Widget build(BuildContext context) {
    Color primary = Theme.of(context).primaryColor;
    // void initState() {
    //   super.initState();
    // }

    //GO logo widget
    Widget logo() {

      return Padding(
        padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.15),
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: 220,
          child: Stack(
            children: <Widget>[
              Positioned(
                  child: Container(
                child: Align(
                  child: Container(
                    decoration: BoxDecoration(
                      // Circulo del logo
                        shape: BoxShape.circle, color: Colors.white),
                        width: 150,
                        height: 150,
                  ),
                ),
                height: 154,
              )),
              Positioned(
                child: Container(
                    height: 154,
                    child: Align(
                      child: Image.asset("assets/images/logo/app_logo.png"),
                    )),
              ),
            ],
          ),
        ),
      );
    }


    //button widget
    Widget _button(String text, Color splashColor, Color highlightColor,
        Color fillColor, Color textColor, void function()) {
      return RaisedButton(
        highlightElevation: 0.0,
        splashColor: splashColor,
        highlightColor: highlightColor,
        elevation: 0.0,
        color: fillColor,
        shape: RoundedRectangleBorder(
            borderRadius: new BorderRadius.circular(30.0)),
        child: Text(
          text,
          style: TextStyle(
              fontWeight: FontWeight.bold, color: Color(0xFF05DFD7), fontSize: 20),
        ),
        onPressed: () {
          function();
        },
      );
    }




    void _loginSheet() {
      widget.changePage(1);
    }

    void _registerSheet() {
      widget.changePage(2);

    }

    return Scaffold(

        resizeToAvoidBottomPadding: false,
        key: _scaffoldKey,
        backgroundColor: new Color.fromRGBO(255, 255, 255, 0.15),
        body: Column(
          children: <Widget>[
            logo(),
            Padding(
              child: Container(
                child: _button("Log in ", primary, Colors.white, Colors.white,
                    primary, _loginSheet),
                height: 50,
              ),
              padding: EdgeInsets.only(top: 80, left: 20, right: 20),
            ),
            Padding(
              child: Container(
                child: OutlineButton(
                  highlightedBorderColor: Colors.red,
                  borderSide: BorderSide(color: Colors.white, width: 2.0),
                  highlightElevation: 0.0,
                  splashColor: Colors.red,
                  highlightColor: Theme.of(context).primaryColor,
                  color: Theme.of(context).primaryColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(30.0),
                  ),
                  child: Text(
                    "Sign Up",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 20),
                  ),
                  onPressed: () {
                    _registerSheet();
                  },
                ),
                height: 50,
              ),
              padding: EdgeInsets.only(top: 10, left: 20, right: 20),
            ),
            Expanded(
              child: Align(
                child: ClipPath(
                  child: Container(
                    // es este
                    color: new Color.fromRGBO(5, 223, 215, 1),
                    height: 300,
                  ),
                  clipper: BottomWaveClipper(),
                ),
                alignment: Alignment.bottomCenter,
              ),
            )
          ],
          crossAxisAlignment: CrossAxisAlignment.stretch,
        ));
  }
}