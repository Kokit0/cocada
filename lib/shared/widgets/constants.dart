import 'package:flutter/material.dart';

const textInputDecoration = InputDecoration(
  fillColor: Colors.red,
  filled: true,
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.blue, width: 2),
    borderRadius: BorderRadius.all(Radius.circular(30)),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.pink, width: 3),
    borderRadius: BorderRadius.all(Radius.circular(30)),
  ),
);



const textInputDecoration2 =  InputDecoration(
                                    border: InputBorder.none,
                                    hintStyle: TextStyle(
                                    color: Colors.grey),
                                );