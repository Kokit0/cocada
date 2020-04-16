import 'package:cocada/models/Restaurants.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:provider/provider.dart';

class UserList extends StatefulWidget {
  @override
  _UserListState createState() => _UserListState();
}

class _UserListState extends State<UserList> {
  @override
  Widget build(BuildContext context) {

    final user = Provider.of<List<Res>> (context);
    // print(user.documents);

    user.forEach(
      (u){
        print(u.name);
      
      }


    );

    // for (var doc in user.documents) {
    //   print (doc.data);
    // }
    return Container(
      
    );
  }
}