import 'package:cocada/screens/dashboard/home/utils/restaurants.dart';
import 'package:flutter/material.dart';
import 'package:cocada/models/Restaurants.dart';

class UserTitle extends StatelessWidget {
  final Res restaurant; 
  UserTitle ({this.restaurant}); 

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: Card(
        margin: EdgeInsets.fromLTRB(20.0, 6.0, 20.0, 0.0),
        child: ListTile(
          leading: CircleAvatar(
            radius: 25.0,
            backgroundColor: Colors.brown[restaurant.strength],
          ),
          title: Text(restaurant.name),
          subtitle: Text('Takes ${restaurant.sugars} sugar(s)'),
        ),
      ),
    );
  }
}

