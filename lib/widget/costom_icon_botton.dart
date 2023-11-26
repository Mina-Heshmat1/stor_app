import 'package:flutter/material.dart';

class costomIconBotton extends StatelessWidget {
  const costomIconBotton({super.key,required this.text, this.onTap});

  final String text;
  final VoidCallback?onTap;


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:onTap ,
      child: Container(
        width: 150,
        height: 60,
        decoration:   BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(12),),
          color: Colors.grey.withOpacity(0.4),

        ),
        child: Center(child:  Text(text,style: const TextStyle(fontWeight: FontWeight.w500,fontFamily: 'Agbalumo',fontSize: 26),)),
      ),
    );
  }
}