
import 'dart:ui';

import 'package:flutter/material.dart';
class customeTextField extends StatelessWidget {

  customeTextField(
      {required this.icon,
        required this.hintText,
        required this.onChanged,
        required this.isPassword,
        this.inputtayp,
        required this.isEmail});


  final IconData icon;
  final String hintText ;
  Function(String) onChanged;
  final bool isPassword ;
  final bool isEmail ;
  TextInputType? inputtayp;


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Center(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: BackdropFilter(
          filter: ImageFilter.blur(
            sigmaY: 15,
            sigmaX: 15,
          ),
          child: Container(
            height: size.width / 8,
            width: size.width / 1.2,
            alignment: Alignment.center,
            padding: EdgeInsets.only(right: size.width / 30),
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(.10),
              borderRadius: BorderRadius.circular(15),
            ),
            child: TextFormField(
              onChanged: onChanged,

              style: TextStyle(color: Colors.black.withOpacity(.8)),
              cursorColor: Colors.black,
              obscureText: isPassword,
              keyboardType: inputtayp,




              decoration: InputDecoration(
                prefixIcon: Icon(
                  icon,
                  color: Colors.black.withOpacity(.7),
                ),
                border: InputBorder.none,
                hintMaxLines: 1,
                hintText: hintText,
                hintStyle:
                TextStyle(fontSize: 14, color: Colors.black.withOpacity(.5)),
              ),
            ),
          ),
        ),
      ),
    );
  }


}