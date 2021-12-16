import 'package:flutter/material.dart';

Color customBlue = Color.fromRGBO(37, 43, 101, 1);

Color dateColor(String date) {
  switch(date){
    case 'Yesterday':
      return Colors.pinkAccent;
    case 'Today':
      return Colors.blueAccent;
    default:
      return customBlue;
  }
}