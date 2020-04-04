import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';


class Tracking extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new DecoratedBox(
      decoration: new BoxDecoration(
        image: new DecorationImage(
            image: new AssetImage('assets/tracking.png'),
            fit: BoxFit.fill

        ),
      ),
    );
  }
}