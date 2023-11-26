import 'package:flutter/material.dart';


void showSnackBar(BuildContext context,String massage) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      backgroundColor: Colors.white,
      content: Center(
          child: Text(massage,
              style: TextStyle(
                  color: Colors.red, fontSize: 16,fontWeight: FontWeight.w500))),
    ),);
}